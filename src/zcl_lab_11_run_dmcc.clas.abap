CLASS zcl_lab_11_run_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_lab_11_run_dmcc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lo_linux TYPE REF TO zcl_lab_12_linux_dmcc.
    DATA lv_architecture TYPE string.

    lo_linux = NEW zcl_lab_12_linux_dmcc( ).

    lo_linux->get_architecture(
      IMPORTING
        ev_architecture = lv_architecture
    ).

    out->write( lv_architecture ).
  ENDMETHOD.
ENDCLASS.
