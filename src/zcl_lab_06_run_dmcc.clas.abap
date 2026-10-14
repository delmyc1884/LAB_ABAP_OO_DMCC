CLASS zcl_lab_06_run_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.
CLASS zcl_lab_06_run_dmcc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lo_budget TYPE REF TO zcl_lab_39_budget_dmcc.
    lo_budget = NEW zcl_lab_40_actual_budget_dmcc( ).
    out->write( 'Módulo 6: Clase abstracta y subclase concreta' ).
    out->write( lo_budget->get_budget( ) ).
  ENDMETHOD.
ENDCLASS.
