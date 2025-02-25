CLASS zcl_i_rap_eml_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_I_RAP_EML_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*    " Step 1 - READ "
*    READ ENTITIES OF zi_rap_trv_001
*        ENTITY Travel
*           FROM VALUE #( ( TravelUuid = 'D00D4F04337BD83619000F8E9E14C86C' ) )
*        RESULT DATA(travels).
*
*    out->write( travels ).


*    " step 2 - READ with Fields
*    READ ENTITIES OF zi_rap_trv_001
*      ENTITY travel
*        FIELDS ( AgencyID CustomerID )
*      WITH VALUE #( ( TravelUuid = 'D00D4F04337BD83619000F8E9E14C86C' ) )
*      RESULT DATA(travels).
*
*    out->write( travels ).


*   " step 3 - READ with All Fields
*    READ ENTITIES OF zi_rap_trv_001
*      ENTITY travel
*        ALL FIELDS
*      WITH VALUE #( ( TravelUuid = 'D00D4F04337BD83619000F8E9E14C86C' ) )
*      RESULT DATA(travels).
*
*    out->write( travels ).


*    " step 4 - READ By Association
*    READ ENTITIES OF zi_rap_trv_001
*      ENTITY travel BY \_Booking
*        ALL FIELDS WITH VALUE #( ( TravelUuid = 'D00D4F04337BD83619000F8E9E14C86C' ) )
*      RESULT DATA(bookings).
*
*    out->write( bookings ).


*    " step 5 - Unsuccessful READ
*    READ ENTITIES OF zi_rap_trv_001
*      ENTITY travel
*        ALL FIELDS WITH VALUE #( ( TravelUuid = '11111' ) )
*      RESULT DATA(travels)
*      FAILED DATA(failed)
*      REPORTED DATA(reported).
*
*    out->write( travels ).
*    out->write( failed ).    " complex structures not supported by the console output
*    out->write( reported ).  " complex structures not supported by the console output


*    " step 6 - MODIFY Update
*    MODIFY ENTITIES OF zi_rap_trv_001
*      ENTITY travel
*        UPDATE
*          SET FIELDS WITH VALUE
*            #( ( TravelUUID  = 'D00D4F04337BD83619000F8E9E14C86C'
*                 Description = 'I like RAP@openSAP' ) )
*
*     FAILED DATA(failed)
*     REPORTED DATA(reported).
*
**    " step 6b - Commit Entities
*    COMMIT ENTITIES
*      RESPONSE OF zi_rap_trv_001
*      FAILED     DATA(failed_commit)
*      REPORTED   DATA(reported_commit).
*
*    out->write( 'Update done' ).


*    " step 7 - MODIFY Create
*    MODIFY ENTITIES OF zi_rap_trv_001
*      ENTITY travel
*        CREATE
*          SET FIELDS WITH VALUE
*            #( ( %cid        = 'MyContentID_1'
*                 AgencyID    = '76969'
*                 CustomerID  = '225'
*                 BeginDate   = cl_abap_context_info=>get_system_date( )
*                 EndDate     = cl_abap_context_info=>get_system_date( ) + 10
*                 Description = 'I like RAP@openSAP' ) )
*
*     MAPPED DATA(mapped)
*     FAILED DATA(failed)
*     REPORTED DATA(reported).
*
*    out->write( mapped-travel ).
*
*    COMMIT ENTITIES
*      RESPONSE OF zi_rap_trv_001
*      FAILED     DATA(failed_commit)
*      REPORTED   DATA(reported_commit).
*
*    out->write( 'Create done' ).


*   " step 8 - MODIFY Delete
*    MODIFY ENTITIES OF zi_rap_trv_001
*      ENTITY travel
*        DELETE FROM
*          VALUE
*            #( ( TravelUuid  = 'CEA704D5D9F91EDFB4FA65EFFD5B5E69' ) )
*
*     FAILED DATA(failed)
*     REPORTED DATA(reported).
*
*    COMMIT ENTITIES
*      RESPONSE OF zi_rap_trv_001
*      FAILED     DATA(failed_commit)
*      REPORTED   DATA(reported_commit).
*
*    out->write( 'Delete done' ).

  ENDMETHOD.
ENDCLASS.
