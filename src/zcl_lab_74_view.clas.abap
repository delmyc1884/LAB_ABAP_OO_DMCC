CLASS zcl_lab_74_view DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS constructor
      IMPORTING
        io_out TYPE REF TO if_oo_adt_classrun_out.

    METHODS display_flights
      IMPORTING
        it_flights TYPE /dmo/t_flight.

  PRIVATE SECTION.

    DATA mo_out TYPE REF TO if_oo_adt_classrun_out.

ENDCLASS.


CLASS zcl_lab_74_view IMPLEMENTATION.

  METHOD constructor.


    mo_out = io_out.

  ENDMETHOD.


  METHOD display_flights.


    IF it_flights IS INITIAL.

      mo_out->write(
        'No se encontraron vuelos.'
      ).

    ELSE.


      mo_out->write(
        'Listado de vuelos encontrados:'
      ).

      mo_out->write( it_flights ).

    ENDIF.

  ENDMETHOD.

ENDCLASS.

