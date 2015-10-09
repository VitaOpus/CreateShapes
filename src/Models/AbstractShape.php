<?php namespace VO\CreateShape;

/**
 * Abstract base class 
 */
abstract class AbstractShape {

    protected $get_type_data;

    /**
     * Set type data
     * 
     * @param string $type_data
     */
    public function set_type_data( $type_data ) {
        $this->get_type_data = $type_data;
    }

}