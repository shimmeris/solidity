function id(int8 x) pure returns(int8) {
    return x;
}
function id(uint256 x) pure returns(uint256) {
    return x;
}

contract C {
    using {id} for uint256;
}
// ----
// DeclarationError 9589: (145-147): Function name expected, but the identifier was not found or is not unique.
