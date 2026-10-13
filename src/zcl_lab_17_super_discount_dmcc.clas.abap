CLASS zcl_lab_17_super_discount_dmcc DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_15_flight_price_dmcc
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS add_price REDEFINITION.
ENDCLASS.
CLASS zcl_lab_17_super_discount_dmcc IMPLEMENTATION.
  METHOD add_price.
    DATA ls_flight TYPE /dmo/flight.
    ls_flight = is_flight.
    ls_flight-price = ls_flight-price * 80 / 100.
    APPEND ls_flight TO me->mt_flights.
  ENDMETHOD.
ENDCLASS.
