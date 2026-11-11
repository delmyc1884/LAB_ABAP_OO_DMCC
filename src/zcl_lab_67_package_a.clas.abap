
CLASS zcl_lab_67_package_a DEFINITION
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


CLASS zcl_lab_67_package_a IMPLEMENTATION.

  METHOD transport_oneway.
    io_out->write( 'PAQUETE A: Viaje en autobus a la playa' ).
  ENDMETHOD.

  METHOD day_one.
    io_out->write( 'DIA 1: Disfrutar de la playa' ).
  ENDMETHOD.

  METHOD day_two.
    io_out->write( 'DIA 2: Paseo en lancha' ).
  ENDMETHOD.

  METHOD day_three.
    io_out->write( 'DIA 3: Actividades acuaticas' ).
  ENDMETHOD.

  METHOD transport_return.
    io_out->write( 'REGRESO: Viaje en autobus a casa' ).
  ENDMETHOD.

ENDCLASS.

