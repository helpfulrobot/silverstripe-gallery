<?php

class GalleryPage extends Page {

    private static $icon = 'gallery/images/gallery.png';
    private static $db = array(
        'HideDescription'   => 'Boolean'
    );
    private static $many_many = array(
        'Images'     => 'Image'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->findOrMakeTab('Root.Gallery')
            ->setTitle(_t('GalleryPage.SINGULARNAME'))
            ->push(UploadField::create('Images', _t('GalleryPage.UPLOAD')));

        return $fields;
    }

    public function getSettingsFields() {
        $fields = parent::getSettingsFields();

        $gallery = FieldGroup::create(
            CheckboxField::create('HideDescription', _t('GalleryPage.HIDE_DESCRIPTION'))
        )->setTitle(_t('GalleryPage.SINGULARNAME'));

        $fields->addFieldToTab('Root.Settings', $gallery);

        return $fields;
    }

}

class GalleryPage_Controller extends Page_Controller {
    public function init() {
        parent::init();
    }

    public function Gallery() {
        $vars = array(
            'HideDescription' => $this->HideDescription,
            'Images' => $this->Images()->sort('Sort','DESC')
        );

        return $this->renderWith('Gallery',$vars);
    }
}
