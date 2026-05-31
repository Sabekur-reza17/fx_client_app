import 'package:dio/dio.dart';
import 'package:fx_client_app/data/fx_api_service.dart';
import 'package:fx_client_app/domain/models/promo_material.dart';
import 'package:fx_client_app/data/models/signal_dto.dart';
import 'package:fx_client_app/domain/models/signal.dart';
import 'package:fx_client_app/domain/repositories/fx_client_repository.dart';
import 'package:fx_client_app/utilities/extensions/error_message_extensions.dart';
import 'package:fx_client_app/utilities/resource.dart';
import 'package:fx_client_app/utilities/user_factory.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:xml/xml.dart';

@Singleton(as: FxClientRepository)
class FxClientRepositoryImpl extends FxClientRepository {
  FxClientRepositoryImpl(this.partnerApi, this.dio, this.userFactory);

  final PartnerFxApiService partnerApi;
  final Dio dio;
  final UserFactory userFactory;

  @override
  Stream<Resource<List<Signal>>> getSignals(
    List<String> pairs,
    int fromDate,
    int toDate,
  ) {
    final login = userFactory.getLogin();
    final passkey = userFactory.getPartnerToken();
    
    return Stream.fromFuture(
      partnerApi.getAnalyticSignals(
        login,
        3, // tradingsystem
        pairs.join(','), // pairs
        fromDate,
        toDate,
        passkey,
      ),
    )
        .map((response) {
          if (response is List) {
            return response
                .map((e) => SignalDto.fromJson(e as Map<String, dynamic>).toDomain())
                .toList();
          }
          return <Signal>[];
        })
        .map((signals) => Resource.content(signals))
        .onErrorReturnWith((e, st) => Resource.error(e.errorMessage()))
        .startWith(const Resource.loading());
  }

  @override
  Stream<Resource<List<PromoMaterial>>> getPromoMaterials() {
    final body = '''
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:tem="http://tempuri.org/">
   <soapenv:Header/>
   <soapenv:Body>
      <tem:GetCCPromo>
         <tem:lang>en</tem:lang>
      </tem:GetCCPromo>
   </soapenv:Body>
</soapenv:Envelope>
''';

    return Stream.fromFuture(
      dio.post(
        'https://api-forexcopy.contentdatapro.com/Services/CabinetMicroService.svc',
        data: body,
        options: Options(
          headers: {
            'Content-Type': 'text/xml;charset=UTF-8',
            'SOAPAction': 'http://tempuri.org/ICabinetMicroService/GetCCPromo',
          },
        ),
      ),
    )
        .map((response) {
          final document = XmlDocument.parse(response.data.toString());
          final materials = document.findAllElements('a:PromoMaterialCC');
          final list = <PromoMaterial>[];
          
          for (final material in materials) {
            final id = material.findElements('a:Id').firstOrNull?.innerText ?? '';
            final name = material.findElements('a:Name').firstOrNull?.innerText ?? '';
            final type = material.findElements('a:Type').firstOrNull?.innerText ?? '';
            
            // Fix forex-images.instaforex.com -> forex-images.ifxdb.com
            var imageUrl = material.findElements('a:UrlImage').firstOrNull?.innerText ?? '';
            imageUrl = imageUrl.replaceAll(
                'forex-images.instaforex.com', 'forex-images.ifxdb.com');
                
            final targetUrl = material.findElements('a:UrlTarget').firstOrNull?.innerText ?? '';
            
            list.add(PromoMaterial(
              id: id,
              name: name,
              type: type,
              imageUrl: imageUrl,
              targetUrl: targetUrl,
            ));
          }
          return list;
        })
        .map((promos) => Resource.content(promos))
        .onErrorReturnWith((e, st) => Resource.error(e.errorMessage()))
        .startWith(const Resource.loading());
  }
}
