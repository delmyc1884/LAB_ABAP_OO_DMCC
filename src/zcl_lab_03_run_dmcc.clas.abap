CLASS zcl_lab_03_run_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.
CLASS zcl_lab_03_run_dmcc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA(lo_student) = NEW zcl_lab_34_student_dmcc( ).
    lo_student->set( iv_name = 'Delmy' ).
    DATA(lo_college) = NEW zcl_lab_35_college_dmcc( ).
    lo_college->enroll_student(
      io_student = lo_student
    ).
    out->write( 'Módulo 3: Asociación' ).
    IF lo_college->student IS BOUND.
      out->write(
        |Estudiante matriculado: { lo_college->student->get( ) }|
      ).
      IF lo_college->student = lo_student.
        out->write(
          'Ambas referencias apuntan al mismo estudiante.'
        ).

      ENDIF.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
