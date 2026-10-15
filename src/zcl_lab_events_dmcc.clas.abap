CLASS zcl_lab_events_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lab_events_dmcc IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( '--- EVENTO TOUCH_SCREEN ---' ).
    DATA(lo_screen) = NEW zcl_lab_42_screen_dmcc(
      iv_screen_type = 'Pantalla táctil'
    ).
    DATA(lo_navigation) = NEW zcl_lab_43_navigation_dmcc( ).
    SET HANDLER lo_navigation->on_touch_screen
      FOR lo_screen.
    lo_screen->element_selected(
      iv_horizontal = 100
      iv_vertical   = 200
    ).
    out->write( lo_navigation->log ).
    out->write( '--- CLOSE_WINDOW: MANEJADOR ACTIVO ---' ).
    DATA(lo_operating_system) =
      NEW zcl_lab_44_operating_sys_dmcc( ).
    DATA(lo_chrome) = NEW zcl_lab_45_chrome_dmcc( ).
    SET HANDLER lo_chrome->on_close_window
      FOR lo_operating_system
      ACTIVATION abap_true.
    lo_operating_system->mouse_movement( ).
    out->write( lo_operating_system->log ).
    out->write( lo_chrome->log ).
    out->write( '--- CLOSE_WINDOW: MANEJADOR DESACTIVADO ---' ).
    SET HANDLER lo_chrome->on_close_window
      FOR lo_operating_system
      ACTIVATION abap_false.
    CLEAR lo_operating_system->log.
    CLEAR lo_chrome->log.
    lo_operating_system->mouse_movement( ).
    out->write( lo_operating_system->log ).
    IF lo_chrome->log IS INITIAL.
      out->write(
        'Chrome: LOG vacío. El manejador no fue ejecutado.'
      ).
    ELSE.
      out->write( lo_chrome->log ).
    ENDIF.
    out->write( '--- EVENTO ESTÁTICO NEW_CALL ---' ).
    CLEAR zcl_lab_47_customer_serv_dmcc=>log.
    SET HANDLER zcl_lab_47_customer_serv_dmcc=>on_new_call.
    zcl_lab_46_mobile_oper_dmcc=>assign_call(
      iv_phone_number = '+504 8892-8251'
    ).
    out->write( zcl_lab_47_customer_serv_dmcc=>log ).
    out->write( '--- PAYROLL_PAID: ALL INSTANCES ---' ).
    DATA(lo_employee) = NEW zcl_lab_49_employee_dmcc( ).
    SET HANDLER lo_employee->on_payroll_paid
      FOR ALL INSTANCES.
    DATA(lo_admin_1) = NEW zcl_lab_48_admin_dep_dmcc(
      iv_employee_id = 'EMP001'
    ).
    DATA(lo_admin_2) = NEW zcl_lab_48_admin_dep_dmcc(
      iv_employee_id = 'EMP002'
    ).
    DATA(lo_admin_3) = NEW zcl_lab_48_admin_dep_dmcc(
      iv_employee_id = 'EMP003'
    ).
    lo_admin_1->notify_employee( ).
    out->write( lo_admin_1->log ).
    out->write( lo_employee->log ).
    lo_admin_2->notify_employee( ).
    out->write( lo_admin_2->log ).
    out->write( lo_employee->log ).
    lo_admin_3->notify_employee( ).
    out->write( lo_admin_3->log ).
    out->write( lo_employee->log ).
  ENDMETHOD.
ENDCLASS.
