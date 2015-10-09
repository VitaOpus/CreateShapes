<?php namespace VO\CreateShape;

/**
 * Create square
 */
class Square extends AbstractShape implements Shape {

    public function create() {

        /**********
        
        Script create square
        
        **********/

        switch( $this->get_type_data ) {
            case 'pixels':
                $get = 'return data type square pixels';
            break;
            default :
                $get = 'return data type square image';
        }

        return $get;
    }

}