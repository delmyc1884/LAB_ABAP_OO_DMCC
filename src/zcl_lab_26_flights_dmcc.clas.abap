CLASS zcl_lab_26_flights_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lab_01_flight_dmcc.
    INTERFACES zif_lab_02_customer_dmcc.
    ALIASES set_conn_id
      FOR zif_lab_01_flight_dmcc~set_conn_id.
    ALIASES get_conn_id
      FOR zif_lab_01_flight_dmcc~get_conn_id.
    ALIASES get_customer
      FOR zif_lab_02_customer_dmcc~get_customer.
    ALIASES get_airports
      FOR zif_lab_03_airports_dmcc~get_airports.
ENDCLASS.
CLASS zcl_lab_26_flights_dmcc IMPLEMENTATION.
  METHOD set_conn_id.
    me->zif_lab_01_flight_dmcc~conn_id = iv_conn_id.
  ENDMETHOD.
  METHOD get_conn_id.
    rv_conn_id = me->zif_lab_01_flight_dmcc~conn_id.
  ENDMETHOD.
  METHOD get_customer.
    DATA lv_customer_id TYPE /dmo/customer-customer_id.
    lv_customer_id = iv_customer_id.
    SELECT SINGLE first_name, last_name
      FROM /dmo/customer
      WHERE customer_id = @lv_customer_id
      INTO CORRESPONDING FIELDS OF @rs_customer.
  ENDMETHOD.
  METHOD get_airports.
    DATA lv_airport_id TYPE /dmo/airport-airport_id.
    lv_airport_id = iv_airport_id.
    SELECT SINGLE *
      FROM /dmo/airport
      WHERE airport_id = @lv_airport_id
      INTO @rs_airport.
  ENDMETHOD.
ENDCLASS.

