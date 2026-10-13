CLASS zcl_lab_18_animal_dmcc DEFINITION
  PUBLIC
  CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS walk
      RETURNING
        VALUE(rv_text) TYPE string.
ENDCLASS.
CLASS zcl_lab_18_animal_dmcc IMPLEMENTATION.
  METHOD walk.
    rv_text = 'The animal walks'.
  ENDMETHOD.
ENDCLASS.
