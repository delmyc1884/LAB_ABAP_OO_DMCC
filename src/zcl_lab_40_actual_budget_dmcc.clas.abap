CLASS zcl_lab_40_actual_budget_dmcc DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_39_budget_dmcc
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS get_budget REDEFINITION.
ENDCLASS.
CLASS zcl_lab_40_actual_budget_dmcc IMPLEMENTATION.
  METHOD get_budget.
    rv_budget = 'Presupuesto actual: L 50,000'.
  ENDMETHOD.
ENDCLASS.
