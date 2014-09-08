//------------------------
//Settings:
//------------------------

var GRID_COLUMNS = 12,
    GRID_COLUMN_WIDTH = 8,
    UNIT_SIZE = 10;


//------------------------
//Resolution helpers:
//------------------------

function computeScale (o) {
//    console.log(JSON.stringify(o.definition))
    var ir = Math.sqrt(o.intendedResolution.width ^ 2 + o.intendedResolution.height ^ 2),
        cr = Math.sqrt(o.currentResolution.width ^ 2 + o.currentResolution.height ^ 2);
//    console.log(SCALE);
    return cr/ir || 1;
}

function em(i){return i*UNIT_SIZE*window.scale;}
function column(i){return i*em(GRID_COLUMN_WIDTH);}

//------------------------
//Math and Logic helpers:
//------------------------

function clamp(value, min, max) {
    value = value < min ? min : value;
    if (max) {
        value = value > max ? max : value;
    }
    return value
}
