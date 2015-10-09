<?php namespace VO\CreateShape;

/**
 * Create shapes
 */
class CreateShape {

    private $type;
    private $params = [];

    const DEFAULT_TYPE_DATE = 'image';

    /**
     * Set type shapes
     * 
     * @param type $type
     * @return \VO\CreateShape\CreateShape
     */
    public function set_type( $type ) {
        $this->type = $type;
        return $this;
    }

    /**
     * Set params shape
     * 
     * @param array $params
     * @return \VO\CreateShape\CreateShape
     */
    public function set_params( array $params ) {
        $this->params = $params;
        return $this;
    }

    /**
     * Create shape
     * 
     * @param string $get_type_date
     * @return void
     */
    public function create( $get_type_date = self::DEFAULT_TYPE_DATE ) {
        $obj = FactoryShape::obj( $this->type );
        $obj->set_type_data( $get_type_date );
        return $obj->create();
    }

}