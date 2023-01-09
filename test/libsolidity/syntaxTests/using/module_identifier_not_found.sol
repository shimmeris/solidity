==== Source: A ====
function id(uint x) pure returns (uint) {
    return x;
}

==== Source: B ====
import "A" as M;

contract C {
    using { id } for uint;
}
// ----
// DeclarationError 9589: (B:43-45): Function name expected, but the identifier was not found or is not unique.
