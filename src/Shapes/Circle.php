<?php namespace VO\CreateShape;

/**
 * Create circle
 */
class Circle extends AbstractShape implements Shape {

    public function create() {

        /**********
        
        Script create circle
        
        **********/
        
        switch( $this->get_type_data ) {
            case 'pixels':
                $get = 'return data type circle pixels';
            break;
            default :
                $get = 'return data type circle image';
        }

        return $get;
    }

}