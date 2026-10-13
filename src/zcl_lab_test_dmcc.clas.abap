CLASS zcl_lab_test_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.


CLASS zcl_lab_test_dmcc IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA(lo_flights) = NEW zcl_lab_26_flights_dmcc( ).

    out->write( '--- CONEXION: LLAMADAS MEDIANTE ALIASES ---' ).

    lo_flights->set_conn_id( iv_conn_id = '0400' ).

    DATA(lv_conn_id) = lo_flights->get_conn_id( ).

    out->write( |CONN_ID: { lv_conn_id }| ).

    out->write( '--- CLIENTE ---' ).

    SELECT SINGLE customer_id
      FROM /dmo/customer
      INTO @DATA(lv_customer_id).

    IF sy-subrc = 0.

      DATA(ls_customer) = lo_flights->get_customer(
        iv_customer_id = CONV string( lv_customer_id ) ).

      out->write( |ID cliente: { lv_customer_id }| ).
      out->write( |Nombre: { ls_customer-first_name }| ).
      out->write( |Apellido: { ls_customer-last_name }| ).

    ELSE.
      out->write( 'No hay clientes en /DMO/CUSTOMER.' ).
    ENDIF.

    out->write( '--- AEROPUERTO: INTERFAZ ANIDADA ---' ).

    SELECT SINGLE airport_id
      FROM /dmo/airport
      INTO @DATA(lv_airport_id).

    IF sy-subrc = 0.

      DATA(ls_airport) = lo_flights->get_airports(
        iv_airport_id = CONV string( lv_airport_id ) ).

      out->write( |ID aeropuerto: { lv_airport_id }| ).
      out->write( ls_airport ).

    ELSE.
      out->write( 'No hay aeropuertos en /DMO/AIRPORT.' ).
    ENDIF.

    out->write( '--- CLASE ABSTRACTA Y HERENCIA ---' ).

    DATA(lo_logistics) = NEW zcl_lab_28_logistics_dmcc( ).

    out->write( lo_logistics->merchandise_output( ) ).
    out->write( lo_logistics->production_line( ) ).
    out->write( lo_logistics->input_products( ) ).

  ENDMETHOD.

ENDCLASS.
