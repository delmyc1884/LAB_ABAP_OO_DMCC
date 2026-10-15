CLASS zcl_lab_43_navigation_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    DATA log TYPE string.
    METHODS on_touch_screen
      FOR EVENT touch_screen
      OF zcl_lab_42_screen_dmcc
      IMPORTING
        ev_horizontal
        ev_vertical
        sender.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lab_43_navigation_dmcc IMPLEMENTATION.
  METHOD on_touch_screen.
    log = |Tipo: { sender->screen_type }; horizontal: { ev_horizontal }; vertical: { ev_vertical }|.
  ENDMETHOD.
ENDCLASS.
