
CLASS zcl_lab_69_blog DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.

    "Evento que avisa sobre un nuevo articulo
    EVENTS new_article
      EXPORTING
        VALUE(ev_title) TYPE string.

    "Metodo para publicar un articulo
    METHODS publish_article
      IMPORTING
        iv_title TYPE string.

    "Metodo para consultar el titulo publicado
    METHODS get_article_title
      RETURNING
        VALUE(rv_title) TYPE string.

  PRIVATE SECTION.

    DATA mv_title TYPE string.

ENDCLASS.


CLASS zcl_lab_69_blog IMPLEMENTATION.

  METHOD publish_article.

    "Guardamos el titulo del articulo
    mv_title = iv_title.

    "Avisamos que se publico un articulo
    RAISE EVENT new_article
      EXPORTING
        ev_title = mv_title.

  ENDMETHOD.


  METHOD get_article_title.

    rv_title = mv_title.

  ENDMETHOD.

ENDCLASS.

