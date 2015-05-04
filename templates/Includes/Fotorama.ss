<%--
    The JQuery.ss template is used to pull in the JQuery dependency so,
    when this module is used together to silverstrap (or to any module that
    relies on a JQuery.ss template), JQuery will not be included twice.
 --%>
<% include JQuery %>
<% require javascript(//cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.3/fotorama.min.js) %>
<% require CSS(//cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.3/fotorama.min.css) %>
<% require javascript(gallery/js/gallery.js) %>
