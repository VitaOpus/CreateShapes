<?php namespace VO\CreateShape;

/**
 * Interface shape
 */
interface Shape {

    /**
     * Set type data
     * 
     * @param string $type_data
     */
    public function set_type_data( $type_data );

    /**
     * Create shape
     */
    public function create();

}