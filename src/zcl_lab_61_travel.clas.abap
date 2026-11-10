
CLASS zcl_lab_61_travel DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS get_travel
      IMPORTING
        iv_travel_id TYPE /dmo/travel_id
      RETURNING
        VALUE(rs_travel) TYPE /dmo/travel.

ENDCLASS.


CLASS zcl_lab_61_travel IMPLEMENTATION.

  METHOD get_travel.

    CLEAR rs_travel.

    TEST-SEAM leer_viaje.

      SELECT SINGLE *
        FROM /dmo/travel
        WHERE travel_id = @iv_travel_id
        INTO @rs_travel.

    END-TEST-SEAM.

  ENDMETHOD.

ENDCLASS.

