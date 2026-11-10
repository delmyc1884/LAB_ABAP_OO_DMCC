
CLASS zcl_lab_53_check_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS check_user
      IMPORTING
        iv_user TYPE syuname
      RAISING
        zcx_lab_52_operations.

ENDCLASS.


CLASS zcl_lab_53_check_dmcc IMPLEMENTATION.

  METHOD check_user.

    IF iv_user = sy-uname.

      RAISE EXCEPTION TYPE zcx_lab_52_operations
        EXPORTING
          textid  = zcx_lab_52_operations=>no_access
          iv_user = sy-uname.

    ENDIF.

  ENDMETHOD.

ENDCLASS.

