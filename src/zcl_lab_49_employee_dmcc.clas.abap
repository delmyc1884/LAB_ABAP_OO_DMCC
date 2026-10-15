CLASS zcl_lab_49_employee_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    DATA log TYPE string.
    METHODS on_payroll_paid
      FOR EVENT payroll_paid
      OF zcl_lab_48_admin_dep_dmcc
      IMPORTING
        sender.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lab_49_employee_dmcc IMPLEMENTATION.
  METHOD on_payroll_paid.
    log = |Empleado notificado: { sender->employee_id }|.
  ENDMETHOD.
ENDCLASS.
