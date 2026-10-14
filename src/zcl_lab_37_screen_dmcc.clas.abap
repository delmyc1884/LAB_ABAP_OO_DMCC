CLASS zcl_lab_37_screen_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS set_screen_type
      IMPORTING iv_screen_type TYPE string.
    METHODS get_screen_type
      RETURNING VALUE(rv_screen_type) TYPE string.
  PRIVATE SECTION.
    DATA screen_type TYPE string.
ENDCLASS.
CLASS zcl_lab_37_screen_dmcc IMPLEMENTATION.
  METHOD set_screen_type.
    screen_type = iv_screen_type.
  ENDMETHOD.
  METHOD get_screen_type.
    rv_screen_type = screen_type.
  ENDMETHOD.
ENDCLASS.
