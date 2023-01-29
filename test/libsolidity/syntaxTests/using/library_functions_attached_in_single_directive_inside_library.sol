library L {
    function publicFunction(uint) public pure {}
    function externalFunction(uint) external pure {}
    function internalFunction(uint) internal pure {}
    using {publicFunction, externalFunction, internalFunction} for uint;
    function f() public pure {
        uint x;
        x.publicFunction();
        x.externalFunction();
        x.internalFunction();
    }
}
// ----
// TypeError 6700: (295-313): Libraries cannot call their own functions externally.
// TypeError 6700: (323-343): Libraries cannot call their own functions externally.
