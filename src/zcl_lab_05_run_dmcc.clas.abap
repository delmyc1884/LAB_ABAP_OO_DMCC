CLASS zcl_lab_05_run_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.
CLASS zcl_lab_05_run_dmcc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lo_price_1 TYPE REF TO zcl_lab_38_prod_price_dmcc.
    DATA lo_price_2 TYPE REF TO zcl_lab_38_prod_price_dmcc.
    lo_price_1 = NEW zcl_lab_38_prod_price_dmcc( ).
    lo_price_1->price = 100.
    out->write( 'Módulo 5: Múltiples referencias al mismo objeto' ).
    out->write(
      |Precio inicial desde referencia 1: { lo_price_1->price }|
    ).
    lo_price_2 = lo_price_1.
    lo_price_2->price = 250.
    out->write(
      |Precio desde referencia 2: { lo_price_2->price }|
    ).

    out->write(
      |Precio desde referencia 1: { lo_price_1->price }|
    ).
    IF lo_price_1 = lo_price_2.
      out->write(
        'Ambas referencias apuntan al mismo objeto.'
      ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
