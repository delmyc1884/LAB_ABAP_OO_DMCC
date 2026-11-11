
CLASS zcl_lab_75_controller DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

    METHODS run
      IMPORTING
        iv_carrier_id TYPE /dmo/carrier_id
        io_out TYPE REF TO if_oo_adt_classrun_out.

ENDCLASS.


CLASS zcl_lab_75_controller IMPLEMENTATION.

  METHOD run.


    DATA(lo_model) = NEW zcl_lab_73_model( ).


    DATA(lo_view) = NEW zcl_lab_74_view(
      io_out = io_out
    ).


    DATA(lt_flights) = lo_model->get_flights(
      iv_carrier_id = iv_carrier_id
    ).


    lo_view->display_flights(
      it_flights = lt_flights
    ).

  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.


    run(
      iv_carrier_id = 'LH'
      io_out = out
    ).

  ENDMETHOD.

ENDCLASS.

