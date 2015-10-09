<?php namespace VO\CreateShapes;

 abstract class AbstractShapes {
    public function getTypeData( $flag ) {
        $this->flag = $flag;
    }
}