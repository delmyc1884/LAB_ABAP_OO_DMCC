CLASS zcl_lab_10_run_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_lab_10_run_dmcc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA(lo_objeto) = NEW zcl_lab_10_constructor_dmcc( ).
    out->write( zcl_lab_10_constructor_dmcc=>log ).
  ENDMETHOD.
ENDCLASS.
