@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root View For Driver Table'
@Metadata.allowExtensions: true
define root view entity ZI_A_DRIVER as select from zrv_a_driver

{
  @EndUserText.label: 'Driver ID'
  key driver_id as driver_id,
  @EndUserText.label: 'First Name'
  driver_fname as driver_fname,
  @EndUserText.label: 'Last Name'
  driver_lname as driver_lname,
  @EndUserText.label: 'Nationality'
  driver_nationality as driver_nationality,
  @EndUserText.label: 'DOB' 
  driver_dob as driver_dob,
  @EndUserText.label: 'Mobile'
  driver_mob as driver_mob,
  @EndUserText.label: 'Price'
  forcuram as forcuram,
  @EndUserText.label: 'Curr'
  forcurkey as forcurkey
  
  
    
//_association_name // Make association public
}
