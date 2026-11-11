CLASS zcl_lab_72_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS zcl_lab_72_test IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.


    DATA(lo_blog) = NEW zcl_lab_69_blog( ).


    DATA(lo_users) = NEW zcl_lab_72_users( ).


    SET HANDLER lo_users->on_new_article FOR lo_blog.


    lo_blog->publish_article(
      iv_title = 'Mi primer articulo ABAP'
    ).


    out->write(
      lo_blog->get_article_title( )
    ).


    out->write(
      lo_users->mv_notification
    ).

  ENDMETHOD.

ENDCLASS.
