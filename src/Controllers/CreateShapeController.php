<?php namespace VO\CreateShape;

class CreateShapeController {

    public function create( array $shapes ) {

        foreach( $shapes as $value ) {
            $r[] = ( new CreateShape )->set_type( $value['type'] )->set_params( $value['params'] )->create();
        }

        return $r;        
    }

}