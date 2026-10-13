CLASS zcl_lab_11_system_dmcc DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA architecture TYPE string VALUE '64BITS'.

    METHODS get_architecture
      EXPORTING
        ev_architecture TYPE string.
ENDCLASS.

CLASS zcl_lab_11_system_dmcc IMPLEMENTATION.
  METHOD get_architecture.
    ev_architecture = me->architecture.
  ENDMETHOD.
ENDCLASS.
