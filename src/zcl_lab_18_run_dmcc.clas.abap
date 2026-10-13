CLASS zcl_lab_18_run_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.
CLASS zcl_lab_18_run_dmcc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA(lo_student) = NEW zcl_lab_22_student_dmcc( ).
    lo_student->assign_student( ).
    out->write( 'CLASSROOM creado desde la clase hija STUDENT' ).
  ENDMETHOD.
ENDCLASS.
