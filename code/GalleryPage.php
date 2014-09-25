<?php

class GalleryImage extends DataExtension {

    private static $belongs_many_many = array(
        'Gallery' => 'GalleryPage',
    );
}

class GalleryPage extends Page {

    private static $icon = 'gallery/images/gallery.png';
    private static $db = array(
        'Captions'    => 'Boolean',
        'ImageHeight' => 'Int',
        'StripHeight' => 'Int',
    );
    private static $many_many = array(
        'Images' => 'Image'
    );
    private static $many_many_extraFields = array(
        'Images' => array(
            'SortOrder' => 'Int'
        )
    );
    private static $defaults = array(
        'ImageHeight' => 400,
        'StripHeight' => 64,
        'Captions' => true
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $field = new SortableUploadField('Images', _t('GalleryPage.UPLOAD'));
        $fields->findOrMakeTab('Root.Gallery')
            ->setTitle(_t('GalleryPage.SINGULARNAME'))
            ->push($field);

        return $fields;
    }

    public function getSettingsFields() {
        $fields = parent::getSettingsFields();

        $fields->addFieldToTab('Root.Settings',
            FieldGroup::create(
                TextField::create('ImageHeight', _t('GalleryPage.db_ImageHeight')),
                TextField::create('StripHeight', _t('GalleryPage.db_StripHeight')),
                CheckboxField::create('Captions', _t('GalleryPage.db_Captions'))
            )->setTitle(_t('GalleryPage.SINGULARNAME'))
        );

        return $fields;
    }

    public function getCMSValidator() {
        return new RequiredFields(array('ImageHeight', 'StripHeight'));
    }
}

class GalleryPage_Controller extends Page_Controller {

    public function SortedImages() {
        return $this->Images()->Sort('SortOrder');
    }
}
