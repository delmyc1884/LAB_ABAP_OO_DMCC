CLASS zcl_lab_04_run_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.
CLASS zcl_lab_04_run_dmcc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA(lo_screen) = NEW zcl_lab_37_screen_dmcc( ).
    lo_screen->set_screen_type(
      iv_screen_type = 'LCD'
    ).
    DATA(lo_phone) = NEW zcl_lab_36_phone_dmcc(
      io_screen = lo_screen
    ).
    out->write( 'Módulo 4: Composición' ).
    out->write(
      |Tipo de pantalla del teléfono: { lo_phone->get_screen_type( ) }|
    ).
  ENDMETHOD.
ENDCLASS.
