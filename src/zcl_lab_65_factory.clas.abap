
CLASS zcl_lab_65_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CLASS-METHODS create_file
      IMPORTING
        iv_file_type TYPE string
      RETURNING
        VALUE(ro_file) TYPE REF TO zif_lab_06_file.

ENDCLASS.


CLASS zcl_lab_65_factory IMPLEMENTATION.

  METHOD create_file.

    CASE iv_file_type.

      WHEN 'WORK'.

        ro_file = NEW zcl_lab_63_work_file( ).

      WHEN 'SUPPLY'.

        ro_file = NEW zcl_lab_64_supply_file( ).

      WHEN OTHERS.

        CLEAR ro_file.

    ENDCASE.

  ENDMETHOD.

ENDCLASS.

