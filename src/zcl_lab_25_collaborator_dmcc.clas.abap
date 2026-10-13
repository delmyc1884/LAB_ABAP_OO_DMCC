CLASS zcl_lab_25_collaborator_dmcc DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_24_partner_dmcc
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS get_capital
      RETURNING
        VALUE(rv_capital) TYPE i.
ENDCLASS.
CLASS zcl_lab_25_collaborator_dmcc IMPLEMENTATION.
  METHOD get_capital.
    DATA lo_company TYPE REF TO zcl_lab_23_company_dmcc.
    lo_company = NEW zcl_lab_23_company_dmcc( ).
    rv_capital = lo_company->capital.
  ENDMETHOD.
ENDCLASS.
