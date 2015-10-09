<?php namespace VO\CreateShapes;

 abstract class AbstractShapes {

    protected $flag;

    public function getTypeData( $flag ) {
        $this->flag = $flag;
    }
}