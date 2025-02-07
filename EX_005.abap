@AbapCatalog.sqlViewName: 'ZV_AVG_FLIGHTS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Average Flights'
define view ZD_AVG_FLIGHTS as select from sflight 
{
    key carrid  as Companhia_Cod,
    
    @DefaultAggregation: #SUM
    @EndUserText.label: 'Total de Voos'
    count( * ) as Total_
}
group by carrid
