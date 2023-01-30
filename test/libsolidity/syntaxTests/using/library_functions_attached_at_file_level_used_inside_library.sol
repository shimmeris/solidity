using {L.publicFunction, L.externalFunction, L.internalFunction} for uint;

library L {
    function publicFunction(uint) public pure {}
    function externalFunction(uint) external pure {}
    function internalFunction(uint) internal pure {}
    function privateFunction(uint) private pure {}

    function f() public pure {
        uint x;
        x.publicFunction();
        x.externalFunction();
        x.internalFunction();
    }
}
// ----
// TypeError 6700: (350-368): Libraries cannot call their own functions externally.
// TypeError 6700: (378-398): Libraries cannot call their own functions externally.
