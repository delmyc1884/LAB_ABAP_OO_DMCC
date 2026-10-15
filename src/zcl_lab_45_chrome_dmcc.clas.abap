CLASS zcl_lab_45_chrome_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    DATA log TYPE string.
    METHODS on_close_window
      FOR EVENT close_window
      OF zif_lab_05_browser_dmcc.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lab_45_chrome_dmcc IMPLEMENTATION.
  METHOD on_close_window.
    log = 'Chrome: evento CLOSE_WINDOW recibido; cerrar ventana.'.
  ENDMETHOD.
ENDCLASS.
