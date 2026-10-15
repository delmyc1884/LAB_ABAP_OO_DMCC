CLASS zcl_lab_44_operating_sys_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lab_05_browser_dmcc.
    DATA log TYPE string.
    METHODS mouse_movement.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lab_44_operating_sys_dmcc IMPLEMENTATION.
  METHOD mouse_movement.
    log = 'Sistema operativo: movimiento detectado; se levanta CLOSE_WINDOW.'.
    RAISE EVENT zif_lab_05_browser_dmcc~close_window.
  ENDMETHOD.
ENDCLASS.
