CLASS zcl_lab_22_student_dmcc DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_21_classroom_dmcc
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS assign_student.
ENDCLASS.
CLASS zcl_lab_22_student_dmcc IMPLEMENTATION.
  METHOD assign_student.
    DATA lo_classroom TYPE REF TO zcl_lab_21_classroom_dmcc.
    lo_classroom = NEW zcl_lab_21_classroom_dmcc( ).
  ENDMETHOD.
ENDCLASS.
