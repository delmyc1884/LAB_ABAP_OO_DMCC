CLASS zcl_lab_47_customer_serv_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA log TYPE string.
    CLASS-METHODS on_new_call
      FOR EVENT new_call
      OF zcl_lab_46_mobile_oper_dmcc
      IMPORTING
        ev_phone_number.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lab_47_customer_serv_dmcc IMPLEMENTATION.
  METHOD on_new_call.
    log = |Atención al cliente: nueva llamada del número { ev_phone_number }|.
  ENDMETHOD.
ENDCLASS.
