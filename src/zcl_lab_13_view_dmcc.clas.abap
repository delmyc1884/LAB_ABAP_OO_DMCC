CLASS zcl_lab_13_view_dmcc DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS constructor
      IMPORTING
        iv_view_type TYPE string.

  PROTECTED SECTION.
    DATA view_type TYPE string.
    DATA box TYPE string.
ENDCLASS.

CLASS zcl_lab_13_view_dmcc IMPLEMENTATION.
  METHOD constructor.
    me->view_type = iv_view_type.
  ENDMETHOD.
ENDCLASS.
