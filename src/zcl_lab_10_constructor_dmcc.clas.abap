CLASS zcl_lab_10_constructor_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-DATA log TYPE string.
    METHODS constructor.
    CLASS-METHODS class_constructor.
ENDCLASS.

CLASS zcl_lab_10_constructor_dmcc IMPLEMENTATION.
  METHOD class_constructor.
    log = log && `Constructor estático → `.
  ENDMETHOD.

  METHOD constructor.
    log = log && `Constructor de instancia`.
  ENDMETHOD.
ENDCLASS.
