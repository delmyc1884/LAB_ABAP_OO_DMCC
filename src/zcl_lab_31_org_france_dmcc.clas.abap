CLASS zcl_lab_31_org_france_dmcc DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_29_organization_dmcc
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS get_location REDEFINITION.
ENDCLASS.
CLASS zcl_lab_31_org_france_dmcc IMPLEMENTATION.
  METHOD get_location.
    rv_location = 'Francia - París'.
  ENDMETHOD.
ENDCLASS.
