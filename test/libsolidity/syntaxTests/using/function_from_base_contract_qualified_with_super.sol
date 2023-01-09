contract C {
    function baseFunction(uint) public pure {}
}

contract D is C {
    using {super.baseFunction} for uint;
}
// ----
// DeclarationError 9589: (92-110): Function name expected, but the identifier was not found or is not unique.
