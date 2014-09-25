Silverstripe Image Gallery
==========================

It implements the new **GalleryPage** type that adds a new content tab
in the CMS (called _Gallery_) for handling the images. You can do bulk
uploads and reorder the images with drag and drop on their thumbnails.
The same image can be included in more than one gallery.

Furthermore the page will add some field to the _Settings_ tab. This
will allow to customize some aspect of the gallery, e.g. the height of
the thumbnail strip, the height of the image slide and a flag to show or
hide the captions.

Regardling the JavaScript side, it is easy to write your own template
and support the library of your choice. Out of the box the project use
[Fotorama](http://fotorama.io/). You can include the gallery block in
your page from the `ContentGallery.ss` template, e.g.:

    <%-- Typical layout Page.ss --%>
    <h1>$Title</h1>
    <div class="gallery">
        <% include ContentGallery.ss %>
    </div>
    <div class="content">
        $Content
    </div>

Author
------

Although originally a fork of
[silverstripe-gallery](https://github.com/i-lateral/silverstripe-gallery)
by i-lateral, the actual code has been rewrote almost from scratch by
[ntd](http://www.entidi.com/) and, apart the name, practically
everything else has changed.

Installation
------------

The feature of reordering with drag and drop is provided by the
[sortablefile](https://github.com/bummzack/sortablefile) project that
*must* be installed before.

To install silverstripe-gallery you should proceed as usual: drop the
directory in your SilverStripe root and do a `/dev/build/`. You will
gain the new `GalleryPage` type in the CMS.
