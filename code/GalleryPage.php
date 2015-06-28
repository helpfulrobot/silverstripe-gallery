<?php

class GalleryPage extends CarouselPage {

    private static $icon = 'gallery/img/image.png';

    private static $db = array(
        'ThumbnailWidth'  => 'Int',
        'ThumbnailHeight' => 'Int',
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
