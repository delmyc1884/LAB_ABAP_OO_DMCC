
CLASS zcl_lab_65_main DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.


CLASS zcl_lab_65_main IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    "Crear expediente de trabajo
    DATA(lo_work) =
      zcl_lab_65_factory=>create_file(
        iv_file_type = 'WORK'
      ).

    IF lo_work IS BOUND.
      out->write(
        lo_work->get_file_type( )
      ).
    ENDIF.

    "Crear expediente de suministros
    DATA(lo_supply) =
      zcl_lab_65_factory=>create_file(
        iv_file_type = 'SUPPLY'
      ).

    IF lo_supply IS BOUND.
      out->write(
        lo_supply->get_file_type( )
      ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.

