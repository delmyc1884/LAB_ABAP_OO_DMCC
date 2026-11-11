
CLASS zcl_lab_63_work_file DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES zif_lab_06_file.

ENDCLASS.


CLASS zcl_lab_63_work_file IMPLEMENTATION.

  METHOD zif_lab_06_file~get_file_type.

    rv_file_type = 'WORK FILE'.

  ENDMETHOD.

ENDCLASS.

