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
        $group = $fields->fieldByName('Root.Settings.Carousel');
        $group->setTitle(_t('GalleryPage.SINGULARNAME'));

        // Integrate carousel settings with gallery settings
        $subgroup = new FieldGroup();
        $group->push($subgroup);

        $field = new NumericField('ThumbnailWidth',  _t('GalleryPage.db_ThumbnailWidth'));
        $subgroup->push($field);

        $field = new NumericField('ThumbnailHeight',  _t('GalleryPage.db_ThumbnailHeight'));
        $subgroup->push($field);

        return $fields;
    }

    public function getCMSValidator() {
        return new RequiredFields(
            'Width',
            'Height',
            'ThumbnailWidth',
            'ThumbnailHeight'
        );
    }
}

class GalleryPage_Controller extends CarouselPage_Controller {
}
