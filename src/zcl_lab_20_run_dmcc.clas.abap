CLASS zcl_lab_20_run_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.
CLASS zcl_lab_20_run_dmcc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lo_collaborator TYPE REF TO zcl_lab_25_collaborator_dmcc.
    DATA lv_capital TYPE i.
    lo_collaborator = NEW zcl_lab_25_collaborator_dmcc( ).
    lv_capital = lo_collaborator->get_capital( ).
    out->write( |Capital obtenido por COLLABORATOR: { lv_capital }| ).
  ENDMETHOD.
ENDCLASS.
