@AbapCatalog.sqlViewName: 'ZV_FLIGHTNAMECN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Voos de Companhias Aéreas'
define view ZD_FLIGHTS_CARRIERS as select from sflight as flights
association [0..1] to scarr as carrier on carrier.carrid = flights.carrid 
{
    key flights.carrid   as Companhia_Aerea,
    key flights.connid   as Conexao,
    key flights.fldate   as Data,
    flights.price        as Preco,
    flights.currency     as Moeda,
    carrier.carrname     as Companhia_Nome
}
