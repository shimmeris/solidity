library L {
    function publicFunction(uint) public pure {}
    function externalFunction(uint) external pure {}
    function internalFunction(uint) internal pure {}
    function privateFunction(uint) private pure {}

    using {publicFunction, externalFunction, internalFunction, privateFunction} for uint;

    function f() public pure {
        uint x;
        x.publicFunction();
        x.externalFunction();
        x.internalFunction();
        x.privateFunction();
    }
}
// ----
// TypeError 6700: (365-383): Libraries cannot call their own functions externally.
// TypeError 6700: (393-413): Libraries cannot call their own functions externally.
