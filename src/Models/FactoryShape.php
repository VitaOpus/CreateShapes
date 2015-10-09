<?php namespace VO\CreateShape;

/**
 * Abstract Factory for create object shape
 */
class FactoryShape {

    /**
     * Create and return object shape
     * 
     * @param string $obj_name
     * @return \VO\CreateShape\obj_name
     */
    static function obj ( $obj_name ) {
        $obj_name = 'VO\CreateShape\\'.ucfirst( $obj_name );
        return new $obj_name;
    }

}
