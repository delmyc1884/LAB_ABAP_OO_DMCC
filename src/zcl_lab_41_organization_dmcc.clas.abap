CLASS zcl_lab_41_organization_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS set_headquarters
      IMPORTING iv_headquarters TYPE string.
    METHODS get_headquarters
      RETURNING VALUE(rv_headquarters) TYPE string.
  PRIVATE SECTION.
    DATA headquarters TYPE string.
ENDCLASS.
CLASS zcl_lab_41_organization_dmcc IMPLEMENTATION.
  METHOD set_headquarters.
    headquarters = iv_headquarters.
  ENDMETHOD.
  METHOD get_headquarters.
    rv_headquarters = headquarters.
  ENDMETHOD.
ENDCLASS.
