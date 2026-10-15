CLASS zcl_lab_42_screen_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    DATA screen_type TYPE string.
    METHODS constructor
      IMPORTING
        iv_screen_type TYPE string.
    EVENTS touch_screen
      EXPORTING
        VALUE(ev_horizontal) TYPE i
        VALUE(ev_vertical)   TYPE i.
    METHODS element_selected
      IMPORTING
        iv_horizontal TYPE i
        iv_vertical   TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lab_42_screen_dmcc IMPLEMENTATION.
  METHOD constructor.
    me->screen_type = iv_screen_type.
  ENDMETHOD.
  METHOD element_selected.
    RAISE EVENT touch_screen
      EXPORTING
        ev_horizontal = iv_horizontal
        ev_vertical   = iv_vertical.
  ENDMETHOD.
ENDCLASS.
