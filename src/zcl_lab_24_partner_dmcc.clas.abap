CLASS zcl_lab_24_partner_dmcc DEFINITION
  PUBLIC
  CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS get_company_capital
      RETURNING
        VALUE(rv_capital) TYPE i.
ENDCLASS.
CLASS zcl_lab_24_partner_dmcc IMPLEMENTATION.
  METHOD get_company_capital.
    DATA lo_company TYPE REF TO zcl_lab_23_company_dmcc.
    lo_company = NEW zcl_lab_23_company_dmcc( ).
    rv_capital = lo_company->capital.
  ENDMETHOD.
ENDCLASS.
