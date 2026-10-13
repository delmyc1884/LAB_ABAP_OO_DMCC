CLASS zcl_lab_15_run_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.
CLASS zcl_lab_15_run_dmcc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lo_lion_1 TYPE REF TO zcl_lab_19_lion_dmcc.
    DATA lo_lion_2 TYPE REF TO zcl_lab_19_lion_dmcc.
    DATA lo_animal TYPE REF TO zcl_lab_18_animal_dmcc.
    lo_lion_1 = NEW zcl_lab_19_lion_dmcc( ).
    lo_animal = lo_lion_1.
    TRY.
        lo_lion_2 ?= lo_animal.
        out->write( lo_lion_2->walk( ) ).
      CATCH cx_sy_move_cast_error INTO DATA(lx_cast).
        out->write( lx_cast->get_text( ) ).
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
