
CLASS zcl_lab_62_context DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    CLASS-METHODS get_instance
      RETURNING
        VALUE(ro_instance) TYPE REF TO zcl_lab_62_context.

  PRIVATE SECTION.

    CLASS-DATA go_instance
      TYPE REF TO zcl_lab_62_context.

ENDCLASS.


CLASS zcl_lab_62_context IMPLEMENTATION.

  METHOD get_instance.

    IF go_instance IS NOT BOUND.
      go_instance = NEW zcl_lab_62_context( ).
    ENDIF.

    ro_instance = go_instance.

  ENDMETHOD.

ENDCLASS.

