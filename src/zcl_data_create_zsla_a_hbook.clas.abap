CLASS zcl_data_create_zsla_a_hbook DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  METHODS: insert_data
      IMPORTING
        carrid    TYPE zsla_a_hbook-carrid
        connid    TYPE zsla_a_hbook-connid
        fldate    TYPE zsla_a_hbook-fldate
        bookid    TYPE zsla_a_hbook-bookid
        customid  TYPE zsla_a_hbook-customid
        custtype  TYPE zsla_a_hbook-custtype
        smoker    TYPE zsla_a_hbook-smoker
        luggweight TYPE zsla_a_hbook-luggweight
        wunit     TYPE zsla_a_hbook-wunit
        invoice   TYPE zsla_a_hbook-invoice
        class     TYPE zsla_a_hbook-class
        forcuram  TYPE zsla_a_hbook-forcuram
        forcurkey TYPE zsla_a_hbook-forcurkey.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_DATA_CREATE_ZSLA_A_HBOOK IMPLEMENTATION.


METHOD if_oo_adt_classrun~main.

     insert_data(
     carrid = 'AZ'
    connid = '0001'
    fldate = '20240101'
    bookid = 8704
    customid = 2771
    custtype = 'P'
    smoker = ''
    luggweight = '27.80'
    wunit = 'KG'
    invoice = ''
    class = ''
    forcuram = '900.11'
    forcurkey = 'IDR' ).



ENDMETHOD.


METHOD insert_data.

    DATA : wa_hbook TYPE zsla_a_hbook.
    DATA : it_hbook TYPE TABLE OF zsla_a_hbook.

  wa_hbook = VALUE zsla_a_hbook(
  carrid = 'AZ' connid = '0001' fldate = '20240101' bookid = 8704 customid = 2771
  custtype = 'P' smoker = '' luggweight = '27.80' wunit = 'KG'
  invoice = '' class = '' forcuram = '900.11' forcurkey = 'IDR' ).


  INSERT zsla_a_hbook FROM @wa_hbook.


ENDMETHOD.
ENDCLASS.
