
CLASS zcl_lab_62_main DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.


CLASS zcl_lab_62_main IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    " Primera referencia
    DATA(lo_context1) =
      zcl_lab_62_context=>get_instance( ).

    " Segunda referencia
    DATA(lo_context2) =
      zcl_lab_62_context=>get_instance( ).

    " Comprobar si ambas referencias
    " apuntan al mismo objeto

    IF lo_context1 = lo_context2.

      out->write(
        'CORRECTO: Ambas referencias apuntan al mismo objeto.'
      ).

    ELSE.

      out->write(
        'ERROR: Las referencias apuntan a objetos diferentes.'
      ).

    ENDIF.

  ENDMETHOD.

ENDCLASS.

