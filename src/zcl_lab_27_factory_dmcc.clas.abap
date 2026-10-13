CLASS zcl_lab_27_factory_dmcc DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS merchandise_output
      RETURNING
        VALUE(rv_merchendise) TYPE string.
    METHODS production_line ABSTRACT
      RETURNING
        VALUE(rv_production) TYPE string.
    METHODS input_products ABSTRACT
      RETURNING
        VALUE(rv_input) TYPE string.
ENDCLASS.


CLASS zcl_lab_27_factory_dmcc IMPLEMENTATION.

  METHOD merchandise_output.
    rv_merchendise = 'MERCHANDISE_OUTPUT'.
  ENDMETHOD.

ENDCLASS.

