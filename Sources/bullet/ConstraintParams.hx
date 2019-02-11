package bullet;

#if hl
@:enum abstract ConstraintParams(Int) {
    var BT_CONSTRAINT_ERP = 0;
    var BT_CONSTRAINT_STOP_ERP = 1;
    var BT_CONSTRAINT_CFM = 2;
    var BT_CONSTRAINT_STOP_CFM = 3;
}
#elseif js
@:enum abstract ConstraintParams(Int) {
    var BT_CONSTRAINT_ERP = 0;
    var BT_CONSTRAINT_STOP_ERP = 1;
    var BT_CONSTRAINT_CFM = 2;
    var BT_CONSTRAINT_STOP_CFM = 3;
}
#end
