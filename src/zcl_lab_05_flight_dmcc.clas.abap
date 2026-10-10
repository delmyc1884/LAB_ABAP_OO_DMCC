CLASS zcl_lab_05_flight_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS check_flight
      IMPORTING
        iv_carrier_id    TYPE /dmo/carrier_id
        iv_connection_id TYPE /dmo/connection_id
      RETURNING VALUE(rv_exists) TYPE abap_bool.

ENDCLASS.

CLASS zcl_lab_05_flight_dmcc IMPLEMENTATION.

  METHOD check_flight.
    rv_exists = abap_false.

    SELECT SINGLE carrier_id
      FROM /dmo/flight
      WHERE carrier_id = @iv_carrier_id
        AND connection_id = @iv_connection_id
      INTO @DATA(lv_carrier_id).

    IF sy-subrc = 0.
      rv_exists = abap_true.
    ENDIF.
  ENDMETHOD.

ENDCLASS.
