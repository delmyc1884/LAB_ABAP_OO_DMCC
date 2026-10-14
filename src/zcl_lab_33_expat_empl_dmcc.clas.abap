CLASS zcl_lab_33_expat_empl_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lab_04_employee_dmcc.
ENDCLASS.
CLASS zcl_lab_33_expat_empl_dmcc IMPLEMENTATION.
  METHOD zif_lab_04_employee_dmcc~get_employees_count.
    rv_count = 25.
  ENDMETHOD.
ENDCLASS.
