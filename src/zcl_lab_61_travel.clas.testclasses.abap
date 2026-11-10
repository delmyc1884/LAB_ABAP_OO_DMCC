

CLASS ltc_travel DEFINITION
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.

    INTERFACES if_abap_db_writer PARTIALLY IMPLEMENTED.

  PRIVATE SECTION.

    METHODS test_get_travel FOR TESTING.

ENDCLASS.



CLASS ltc_travel IMPLEMENTATION.

  METHOD test_get_travel.

    DATA(lo_travel) = NEW zcl_lab_61_travel( ).

    TEST-INJECTION leer_viaje.

      rs_travel-travel_id = iv_travel_id.

    END-TEST-INJECTION.

    DATA(ls_result) = lo_travel->get_travel(
      iv_travel_id = '00000100'
    ).

    cl_abap_unit_assert=>assert_equals(
      act = ls_result-travel_id
      exp = '00000100'
      msg = 'El ID del viaje debe coincidir'
    ).

  ENDMETHOD.

ENDCLASS.


