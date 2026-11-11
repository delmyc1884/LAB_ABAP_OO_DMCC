CLASS zcl_lab_68_package_b DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_66_travel
  FINAL
  CREATE PUBLIC.

  PROTECTED SECTION.

    METHODS transport_oneway REDEFINITION.
    METHODS day_one REDEFINITION.
    METHODS day_two REDEFINITION.
    METHODS day_three REDEFINITION.
    METHODS transport_return REDEFINITION.

ENDCLASS.

CLASS zcl_lab_68_package_b IMPLEMENTATION.

  METHOD transport_oneway.
    io_out->write( 'PAQUETE B: Transporte hacia la montana' ).
  ENDMETHOD.

  METHOD day_one.
    io_out->write( 'DIA 1: Caminata por el bosque' ).
  ENDMETHOD.

  METHOD day_two.
    io_out->write( 'DIA 2: Visita a una cascada' ).
  ENDMETHOD.

  METHOD day_three.
    io_out->write( 'DIA 3: Recorrido por senderos naturales' ).
  ENDMETHOD.

  METHOD transport_return.
    io_out->write( 'REGRESO: Transporte a la ciudad' ).
  ENDMETHOD.

ENDCLASS.

