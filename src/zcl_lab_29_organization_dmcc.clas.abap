CLASS zcl_lab_29_organization_dmcc DEFINITION
  PUBLIC
  CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS get_location
      RETURNING VALUE(rv_location) TYPE string.
ENDCLASS.
CLASS zcl_lab_29_organization_dmcc IMPLEMENTATION.
  METHOD get_location.
    rv_location = 'Ubicación general de la organización'.
  ENDMETHOD.
ENDCLASS.
