CLASS zcl_lab_28_logistics_dmcc DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_27_factory_dmcc
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS production_line REDEFINITION.
    METHODS input_products REDEFINITION.
ENDCLASS.
CLASS zcl_lab_28_logistics_dmcc IMPLEMENTATION.
  METHOD production_line.
    rv_production = 'PRODUCTION_LINE'.
  ENDMETHOD.
  METHOD input_products.
    rv_input = 'INPUT_PRODUCTS'.
  ENDMETHOD.
ENDCLASS.

