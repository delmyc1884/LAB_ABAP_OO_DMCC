
"! @testing ZCL_LAB_59_CALCULATOR
CLASS zcl_lab_60_test_calc DEFINITION
  PUBLIC
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.

    METHODS test_sum_up FOR TESTING.

ENDCLASS.

CLASS zcl_lab_60_test_calc IMPLEMENTATION.

  METHOD test_sum_up.

    DATA(lo_calculator) = NEW zcl_lab_59_calculator( ).

    DATA(lv_result) = lo_calculator->sum_up(
      iv_num1 = 10
      iv_num2 = 20
    ).

    cl_abap_unit_assert=>assert_equals(
      act = lv_result
      exp = 30
      msg = 'La suma debe ser 30'
    ).

  ENDMETHOD.

ENDCLASS.

