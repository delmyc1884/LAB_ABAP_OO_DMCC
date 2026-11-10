
CLASS zcl_lab_54_bank DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    DATA mv_transfer_continued TYPE abap_bool READ-ONLY.

    METHODS transfer
      IMPORTING
        iv_iban TYPE string
      RAISING RESUMABLE(cx_static_check).

ENDCLASS.


CLASS zcl_lab_54_bank IMPLEMENTATION.

  METHOD transfer.

    mv_transfer_continued = abap_false.

    IF iv_iban = 'ES95 4329 8765 4321'.

      RAISE RESUMABLE EXCEPTION TYPE zcx_lab_55_auth_iban.

    ENDIF.

    mv_transfer_continued = abap_true.

  ENDMETHOD.

ENDCLASS.

