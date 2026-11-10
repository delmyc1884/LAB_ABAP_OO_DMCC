
CLASS ltc_calculator DEFINITION
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS test_negative FOR TESTING.

ENDCLASS.

CLASS ltc_calculator IMPLEMENTATION.

  METHOD test_negative.

    DATA(lo_calc) = NEW zcl_lab_59_calculator( ).

    DATA(lv_result) = lo_calc->sum_up(
      iv_num1 = -5
      iv_num2 = 3
    ).

    cl_abap_unit_assert=>assert_equals(
      act = lv_result
      exp = -2
      msg = 'La suma de -5 + 3 debe ser -2'
    ).

  ENDMETHOD.

ENDCLASS.

