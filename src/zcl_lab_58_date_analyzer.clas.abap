
CLASS zcl_lab_58_date_analyzer DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS analyze_date
      IMPORTING
        iv_date TYPE string
      RAISING
        zcx_lab_56_no_date
        zcx_lab_57_format_unknown.

    METHODS analyze_format
      IMPORTING
        iv_date TYPE string
      RAISING
        zcx_lab_56_no_date
        zcx_lab_57_format_unknown.

ENDCLASS.


CLASS zcl_lab_58_date_analyzer IMPLEMENTATION.

  METHOD analyze_date.

    TRY.

        IF iv_date IS INITIAL.

          RAISE EXCEPTION TYPE zcx_lab_56_no_date.

        ENDIF.

        me->analyze_format(
          iv_date = iv_date
        ).

      CATCH zcx_lab_56_no_date INTO DATA(lx_no_date).

        RAISE EXCEPTION TYPE zcx_lab_57_format_unknown
          EXPORTING
            previous = lx_no_date.

    ENDTRY.

  ENDMETHOD.


  METHOD analyze_format.

    IF strlen( iv_date ) <> 10
       OR iv_date+4(1) <> '-'
       OR iv_date+7(1) <> '-'.

      RAISE EXCEPTION TYPE zcx_lab_57_format_unknown.

    ENDIF.

  ENDMETHOD.

ENDCLASS.

