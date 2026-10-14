CLASS zcl_lab_07_run_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.
CLASS zcl_lab_07_run_dmcc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lo_object TYPE REF TO object.
    DATA lv_method_set TYPE string.
    DATA lv_method_get TYPE string.
    DATA lv_headquarters TYPE string.
    lo_object = NEW zcl_lab_41_organization_dmcc( ).
    lv_method_set = 'SET_HEADQUARTERS'.
    lv_method_get = 'GET_HEADQUARTERS'.
    CALL METHOD lo_object->(lv_method_get)
      RECEIVING
        rv_headquarters = lv_headquarters.
    out->write( 'Módulo 7: Referencia genérica OBJECT' ).
    IF lv_headquarters IS INITIAL.
      out->write( 'Antes del cambio: sede vacía' ).
    ELSE.
      out->write( |Antes del cambio: { lv_headquarters }| ).
    ENDIF.
    CALL METHOD lo_object->(lv_method_set)
      EXPORTING
        iv_headquarters = 'Tegucigalpa, Honduras'.
    CALL METHOD lo_object->(lv_method_get)
      RECEIVING
        rv_headquarters = lv_headquarters.
    out->write(
      |Después del cambio: { lv_headquarters }|
    ).
  ENDMETHOD.
ENDCLASS.
