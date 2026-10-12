CLASS zcl_lab_08_work_record_dmcc DEFINITION FINAL.
  PUBLIC SECTION.
    CLASS-METHODS open_new_record
      IMPORTING
        iv_date       TYPE zdate
        iv_first_name TYPE string
        iv_last_name  TYPE string
        iv_surname    TYPE string OPTIONAL.

    CLASS-METHODS get_record
      EXPORTING
        ev_date       TYPE zdate
        ev_first_name TYPE string
        ev_last_name  TYPE string
        ev_surname    TYPE string.

  PRIVATE SECTION.
    CLASS-DATA:
      date       TYPE zdate,
      first_name TYPE string,
      last_name  TYPE string,
      surname    TYPE string.
ENDCLASS.

CLASS zcl_lab_08_work_record_dmcc IMPLEMENTATION.
  METHOD open_new_record.
    date = iv_date.
    first_name = iv_first_name.
    last_name = iv_last_name.
    surname = iv_surname.
  ENDMETHOD.

  METHOD get_record.
    ev_date = date.
    ev_first_name = first_name.
    ev_last_name = last_name.
    ev_surname = surname.
  ENDMETHOD.
ENDCLASS.
