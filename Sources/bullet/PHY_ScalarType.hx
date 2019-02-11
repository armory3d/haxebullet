package bullet;

#if hl
@:enum abstract PHY_ScalarType(Int) {
    var PHY_FLOAT = 0;
    var PHY_DOUBLE = 1;
    var PHY_INTEGER = 2;
    var PHY_SHORT = 3;
    var PHY_FIXEDPOINT88 = 4;
    var PHY_UCHAR = 5;
}
#elseif js
@:enum abstract PHY_ScalarType(Int) {
    var PHY_FLOAT = 0;
    var PHY_DOUBLE = 1;
    var PHY_INTEGER = 2;
    var PHY_SHORT = 3;
    var PHY_FIXEDPOINT88 = 4;
    var PHY_UCHAR = 5;
}
#end
