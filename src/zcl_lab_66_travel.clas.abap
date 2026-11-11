
CLASS zcl_lab_66_travel DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS travel FINAL
      IMPORTING
        io_out TYPE REF TO if_oo_adt_classrun_out.

  PROTECTED SECTION.

    METHODS transport_oneway ABSTRACT
      IMPORTING
        io_out TYPE REF TO if_oo_adt_classrun_out.

    METHODS day_one ABSTRACT
      IMPORTING
        io_out TYPE REF TO if_oo_adt_classrun_out.

    METHODS day_two ABSTRACT
      IMPORTING
        io_out TYPE REF TO if_oo_adt_classrun_out.

    METHODS day_three ABSTRACT
      IMPORTING
        io_out TYPE REF TO if_oo_adt_classrun_out.

    METHODS transport_return ABSTRACT
      IMPORTING
        io_out TYPE REF TO if_oo_adt_classrun_out.

ENDCLASS.


CLASS zcl_lab_66_travel IMPLEMENTATION.

  METHOD travel.

    transport_oneway( io_out ).
    day_one( io_out ).
    day_two( io_out ).
    day_three( io_out ).
    transport_return( io_out ).

  ENDMETHOD.

ENDCLASS.

