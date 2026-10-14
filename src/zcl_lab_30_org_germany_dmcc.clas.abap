CLASS zcl_lab_30_org_germany_dmcc DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_29_organization_dmcc
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS get_location REDEFINITION.
ENDCLASS.
CLASS zcl_lab_30_org_germany_dmcc IMPLEMENTATION.
  METHOD get_location.
    rv_location = 'Alemania - Berlín'.
  ENDMETHOD.
ENDCLASS.
