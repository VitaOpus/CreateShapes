<?php namespace VO\CreateShapes;

/**
 * Фабрика фигур
 */
class FactoryShapes {

    static function obj ( $type ) {

        switch ( $type ) {
            case 'circle':
                $obj = new Circle();
            break;
            case 'square':
                $obj = new Square();
            break;
            default:
                $obj = false;
        }

        return $obj;
    }
}
