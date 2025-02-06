@AbapCatalog.sqlViewName: 'ZV_FLIGHTS_DTLS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Detalhes de Voo'
@OData.publish: true
@Metadata.allowExtensions: true
define view ZD_FLIGHTS_DETAILS as select from sflight
{
    key carrid as Companhia,
    key connid as Conexao,
    key fldate as Data,
    price as Preco,
    currency as Moeda,
    seatsmax as Assentos_Max,
    seatsocc  as Assentos_Ocupados
}
