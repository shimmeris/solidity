contract A {
    uint public data;
}

contract C {
    A a = new A();

    using {a.data} for uint;
}
// ----
// DeclarationError 9589: (82-88): Function name expected, but the identifier was not found or is not unique.
