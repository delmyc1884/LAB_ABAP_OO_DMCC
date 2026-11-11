
CLASS zcl_lab_70_observer DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS on_new_article ABSTRACT
      FOR EVENT new_article OF zcl_lab_69_blog
      IMPORTING ev_title.

ENDCLASS.


CLASS zcl_lab_70_observer IMPLEMENTATION.

ENDCLASS.

