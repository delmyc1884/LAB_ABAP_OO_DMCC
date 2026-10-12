CLASS zcl_lab_09_account_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS set
      IMPORTING iban TYPE string.

    METHODS get
      EXPORTING iban TYPE string.

  PRIVATE SECTION.
    DATA iban TYPE string.
ENDCLASS.

CLASS zcl_lab_09_account_dmcc IMPLEMENTATION.
  METHOD set.
    me->iban = iban.
  ENDMETHOD.

  METHOD get.
    iban = me->iban.
  ENDMETHOD.
ENDCLASS.
