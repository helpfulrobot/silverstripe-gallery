<?php

class GalleryPage extends CarouselPage {

    private static $icon = 'gallery/img/gallery.png';
    private static $db = array(
        'ThumbnailWidth'  => 'Int default(64)',
        'ThumbnailHeight' => 'Int default(64)',
    );
    private static $defaults = array(
        // Override the carousel default height to provide
        // a height value more suitable to galleries
        'Height'          => 400,
        'ThumbnailWidth'  => 64,
        'ThumbnailHeight' => 64,
    );

    public function getSettingsFields() {
        $fields = parent::getSettingsFields();

        // Promove the CarouselPage settings to GalleryPage
        $field = $fields->fieldByName('Root.Settings.Carousel');
        $field->setTitle(_t('GalleryPage.SINGULARNAME'));
        $field->push(TextField::create('ThumbnailWidth',  _t('GalleryPage.db_ThumbnailWidth')));
        $field->push(TextField::create('ThumbnailHeight',  _t('GalleryPage.db_ThumbnailHeight')));

        return $fields;
    }
}

class GalleryPage_Controller extends CarouselPage_Controller {
}
