@AbapCatalog.sqlViewName: 'ZV_PROJFLIGHTS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projeção de Voos da Compania'
define view ZD_FLIGHTS_CARRIER_PRJ as select from sflight as flights
association [0..1] to scarr as company on company.carrid = flights.carrid
{
    key flights.carrid   as Companhia_Code,
    key flights.connid   as Conexao,
    key flights.fldate   as Data,
        flights.price    as Preco,
        flights.currency as Moeda,
        
        @ObjectModel.foreignKey.association: 'company'
        company.carrname as Compania_Nome
}
