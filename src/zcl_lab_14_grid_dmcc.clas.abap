CLASS zcl_lab_14_grid_dmcc DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_13_view_dmcc
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS constructor
      IMPORTING
        iv_box TYPE string.
ENDCLASS.

CLASS zcl_lab_14_grid_dmcc IMPLEMENTATION.
  METHOD constructor.
    super->constructor(
      iv_view_type = 'GRID'
    ).

    me->box = iv_box.
  ENDMETHOD.
ENDCLASS.
