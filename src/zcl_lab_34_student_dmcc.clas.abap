CLASS zcl_lab_34_student_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS set
      IMPORTING iv_name TYPE string.
    METHODS get
      RETURNING VALUE(rv_name) TYPE string.
  PRIVATE SECTION.
    DATA name TYPE string.
ENDCLASS.
CLASS zcl_lab_34_student_dmcc IMPLEMENTATION.
  METHOD set.
    name = iv_name.
  ENDMETHOD.
  METHOD get.
    rv_name = name.
  ENDMETHOD.
ENDCLASS.
