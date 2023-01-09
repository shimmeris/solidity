contract C {
    using {this.contractFunction} for uint;

    function contractFunction(uint) external view {}
}
// ----
// DeclarationError 9589: (24-45): Function name expected, but the identifier was not found or is not unique.
