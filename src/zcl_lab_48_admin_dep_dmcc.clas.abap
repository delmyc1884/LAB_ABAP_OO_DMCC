CLASS zcl_lab_48_admin_dep_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    DATA employee_id TYPE string.
    DATA log         TYPE string.
    METHODS constructor
      IMPORTING
        iv_employee_id TYPE string.
    EVENTS payroll_paid.
    METHODS notify_employee.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lab_48_admin_dep_dmcc IMPLEMENTATION.
  METHOD constructor.
    me->employee_id = iv_employee_id.
  ENDMETHOD.
  METHOD notify_employee.
    log = |Administración: nómina pagada al empleado { employee_id }|.
    RAISE EVENT payroll_paid.
  ENDMETHOD.
ENDCLASS.
