@AbapCatalog.sqlViewName: 'ZV_HQ_ASC_FLHTS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Exposive Flight Associations'
@OData.publish: true
@Metadata.allowExtensions: true
define view ZD_FLIGHTS_WITH_CARRIER as select from sflight as flights
association [1] to scarr as _COMPANY
on flights.carrid = _COMPANY.carrid
{
    key flights.carrid   as Company_Code,
    key flights.connid   as Company_Id,
    key flights.fldate   as Flight_Date,
        flights.price    as Price,
        flights.currency as Currency,
       
        _COMPANY
}
