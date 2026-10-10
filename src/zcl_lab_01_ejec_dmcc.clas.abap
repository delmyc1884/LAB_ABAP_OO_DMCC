CLASS zcl_lab_01_ejec_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_lab_01_ejec_dmcc IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA lo_person TYPE REF TO zcl_lab_04_person_dmcc.
    DATA lv_age TYPE i.

    lo_person = NEW zcl_lab_04_person_dmcc( ).
    lo_person->set_age( iv_age = 61 ).
    lo_person->get_age(
      IMPORTING ev_age = lv_age
    ).

    out->write( |La edad de la persona es: { lv_age }| ).

    DATA lo_flight TYPE REF TO zcl_lab_05_flight_dmcc.
    DATA lv_exists TYPE abap_bool.

    lo_flight = NEW zcl_lab_05_flight_dmcc( ).

    lv_exists = lo_flight->check_flight(
      iv_carrier_id    = 'UA'
      iv_connection_id = '0059'
    ).

    IF lv_exists = abap_true.
      out->write( 'El vuelo UA / 0059 existe.' ).
    ELSE.
      out->write( 'El vuelo UA / 0059  no existe.' ).
    ENDIF.
  ENDMETHOD.

ENDCLASS.
