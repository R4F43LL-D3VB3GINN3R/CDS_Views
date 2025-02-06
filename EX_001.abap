@AbapCatalog.sqlViewName: 'ZV_FLIGHTS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS de Voos'
@OData.publish: true
@Metadata.allowExtensions: true
define view ZD_FLIGHTS as select from sflight
{
    key carrid as Companhia,
    key connid as Conexao,
    key fldate as Data
}
