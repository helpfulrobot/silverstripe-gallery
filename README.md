Silverstripe Image Gallery
==========================

A new page type (_GalleryPage_) that provides everything needed to
manage a photo gallery.

You can do bulk uploads and reorder the images by dragging and dropping
their thumbnails in a dedicated tab (_Gallery_) inside the CMS. The same
image can be shared among multiple galleries. This module adds also some
field to the _Settings_ tab. This will allow to customize some aspect of
the gallery on a per page basis, e.g. the height of the thumbnail strip,
the height of the image slide and a flag to show or hide the captions.

On the developer side of things, you can write your own templates and
support the JavaScript library of your choice. Out of the box this
project uses [Fotorama](http://fotorama.io/) and you can embed the
gallery block in your pages by including `ContentGallery.ss`, e.g.:

    <%-- This is a typical Page.ss --%>
    <h1>$Title</h1>
    <div class="gallery">
        <% include ContentGallery.ss %>
    </div>
    <div class="content">
        $Content
    </div>

It is also available a page template (`GalleryPage.ss`) that provides
a [silverstrap](http://dev.entidi.com/p/silverstrap/) ready page
template.

Author
------

Although the project originally started as a fork of
[silverstripe-gallery](https://github.com/i-lateral/silverstripe-gallery)
by [i-lateral](http://www.i-lateral.com/), the actual code has been
rewrote almost from scratch by [ntd](http://www.entidi.com/) and, apart
the name, practically everything else has changed.

The project [home page](http://silverstripe.entidi.com/) is shared by
other [SilverStripe](http://www.silverstripe.org/) modules and themes.

To check out the code, report issues or propose enanchements, go to the
[dedicated tracker](http://dev.entidi.com/p/silverstripe-gallery).
Alternatively, you can do the same things by leveraging the official
[github repository](https://github.com/ntd/silverstripe-gallery).

Installation
------------

The feature of reordering with drag and drop is provided by the
[sortablefile](https://github.com/bummzack/sortablefile) module that
*must* be installed before.

To install silverstripe-gallery you should proceed as usual: drop the
directory in your SilverStripe root and do a `/dev/build/`. You will
gain the new `GalleryPage` type in the CMS.
