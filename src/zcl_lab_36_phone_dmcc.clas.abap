CLASS zcl_lab_36_phone_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor
      IMPORTING
        io_screen TYPE REF TO zcl_lab_37_screen_dmcc.
    METHODS get_screen_type
      RETURNING VALUE(rv_screen_type) TYPE string.
  PRIVATE SECTION.
    DATA screen TYPE REF TO zcl_lab_37_screen_dmcc.
ENDCLASS.
CLASS zcl_lab_36_phone_dmcc IMPLEMENTATION.
  METHOD constructor.
    screen = io_screen.
  ENDMETHOD.
  METHOD get_screen_type.
    IF screen IS BOUND.
      rv_screen_type = screen->get_screen_type( ).
    ELSE.
      rv_screen_type = 'Sin pantalla asignada'.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
