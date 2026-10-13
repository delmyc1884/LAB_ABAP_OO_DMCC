CLASS zcl_lab_12_run_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_lab_12_run_dmcc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lo_grid TYPE REF TO zcl_lab_14_grid_dmcc.

    lo_grid = NEW zcl_lab_14_grid_dmcc(
      iv_box = 'CAJA PRINCIPAL'
    ).

    out->write( 'Objeto GRID creado correctamente' ).
  ENDMETHOD.
ENDCLASS.
