CLASS zcl_lab_19_run_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.
CLASS zcl_lab_19_run_dmcc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lo_partner TYPE REF TO zcl_lab_24_partner_dmcc.
    DATA lv_capital TYPE i.
    lo_partner = NEW zcl_lab_24_partner_dmcc( ).
    lv_capital = lo_partner->get_company_capital( ).
    out->write( |Capital de la empresa: { lv_capital }| ).
  ENDMETHOD.
ENDCLASS.
