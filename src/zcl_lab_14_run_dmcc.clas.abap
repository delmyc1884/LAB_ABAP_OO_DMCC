CLASS zcl_lab_14_run_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.
CLASS zcl_lab_14_run_dmcc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lo_lion TYPE REF TO zcl_lab_19_lion_dmcc.
    DATA lo_animal TYPE REF TO zcl_lab_18_animal_dmcc.
    lo_lion = NEW zcl_lab_19_lion_dmcc( ).
    lo_animal = lo_lion.
    out->write( lo_animal->walk( ) ).
  ENDMETHOD.
ENDCLASS.
