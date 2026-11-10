
CLASS zcx_lab_56_no_date DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS constructor
      IMPORTING
        previous LIKE previous OPTIONAL.

ENDCLASS.


CLASS zcx_lab_56_no_date IMPLEMENTATION.

  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    super->constructor(
      previous = previous
    ).
  ENDMETHOD.

ENDCLASS.

