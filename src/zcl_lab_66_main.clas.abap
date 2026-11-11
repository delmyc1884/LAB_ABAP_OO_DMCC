
CLASS zcl_lab_66_main DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.


CLASS zcl_lab_66_main IMPLEMENTATION.


METHOD if_oo_adt_classrun~main.

  "Paquete A: Playa
  out->write( '===== PAQUETE A: PLAYA =====' ).

  DATA(lo_package_a) = NEW zcl_lab_67_package_a( ).

  lo_package_a->travel(
    io_out = out
  ).

  out->write( ' ' ).

  "Paquete B: Montana
  out->write( '===== PAQUETE B: MONTANA =====' ).

  DATA(lo_package_b) = NEW zcl_lab_68_package_b( ).

  lo_package_b->travel(
    io_out = out
  ).

ENDMETHOD.


ENDCLASS.

