CLASS zcl_lab_13_run_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.
CLASS zcl_lab_13_run_dmcc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    SELECT SINGLE *
      FROM /dmo/flight
      INTO @DATA(ls_flight).
    IF sy-subrc <> 0.
      out->write( 'No hay vuelos en la tabla /DMO/FLIGHT' ).
      RETURN.
    ENDIF.
    DATA(lo_normal) = NEW zcl_lab_15_flight_price_dmcc( ).
    DATA(lo_discount) = NEW zcl_lab_16_price_discount_dmcc( ).
    DATA(lo_super_discount) = NEW zcl_lab_17_super_discount_dmcc( ).
    lo_normal->add_price(
      is_flight = ls_flight
    ).
    lo_discount->add_price(
      is_flight = ls_flight
    ).
    lo_super_discount->add_price(
      is_flight = ls_flight
    ).
    DATA(lv_normal) = lo_normal->mt_flights[ 1 ]-price.
    DATA(lv_discount) = lo_discount->mt_flights[ 1 ]-price.
    DATA(lv_super_discount) = lo_super_discount->mt_flights[ 1 ]-price.
    out->write( |Precio habitual: { lv_normal }| ).
    out->write( |Precio con descuento del 10 %: { lv_discount }| ).
    out->write( |Precio con descuento del 20 %: { lv_super_discount }| ).
  ENDMETHOD.
ENDCLASS.
