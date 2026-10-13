CLASS zcl_lab_15_flight_price_dmcc DEFINITION
  PUBLIC
  CREATE PUBLIC.
  PUBLIC SECTION.
    DATA mt_flights TYPE STANDARD TABLE OF /dmo/flight
      WITH DEFAULT KEY.
    METHODS add_price
      IMPORTING
        is_flight TYPE /dmo/flight.
ENDCLASS.
CLASS zcl_lab_15_flight_price_dmcc IMPLEMENTATION.
  METHOD add_price.
    APPEND is_flight TO me->mt_flights.
  ENDMETHOD.
ENDCLASS.
