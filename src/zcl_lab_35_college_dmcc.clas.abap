CLASS zcl_lab_35_college_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    DATA student TYPE REF TO zcl_lab_34_student_dmcc.
    METHODS enroll_student
      IMPORTING
        io_student TYPE REF TO zcl_lab_34_student_dmcc.
ENDCLASS.
CLASS zcl_lab_35_college_dmcc IMPLEMENTATION.
  METHOD enroll_student.
    student = io_student.
  ENDMETHOD.
ENDCLASS.
