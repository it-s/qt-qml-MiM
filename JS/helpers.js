.pragma library

function clamp(value, min, max) {
    value = value < min ? min : value;
    if (max) {
        value = value > max ? max : value;
    }
    return value
}
