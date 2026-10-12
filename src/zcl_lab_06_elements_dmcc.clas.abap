CLASS zcl_lab_06_elements_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    TYPES:
      BEGIN OF ty_elem_objects,
        class     TYPE string,
        instance  TYPE string,
        reference TYPE string,
      END OF ty_elem_objects.

    CONSTANTS:
      gc_course   TYPE string VALUE 'ABAP Orientado a Objetos',
      gc_topic    TYPE string VALUE 'Fundamentos OO',
      gc_language TYPE string VALUE 'ABAP',
      gc_user     TYPE string VALUE 'DMCC'.

    DATA ms_object TYPE ty_elem_objects.

    METHODS set_object
      IMPORTING is_object TYPE ty_elem_objects.

ENDCLASS.

CLASS zcl_lab_06_elements_dmcc IMPLEMENTATION.

  METHOD set_object.
    ms_object = is_object.
  ENDMETHOD.

ENDCLASS.
