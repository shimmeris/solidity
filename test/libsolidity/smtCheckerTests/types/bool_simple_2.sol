contract C {
    function f(bool x, bool y) public pure {
        assert(x == y);
    }
}
// ====
// SMTEngine: all
// SMTIgnoreCex: yes
// ----
<<<<<<< HEAD
// Warning 6328: (66-80): CHC: Assertion violation happens here.\nCounterexample:\n\nx = true\ny = false\n\nTransaction trace:\nC.constructor()\nC.f(true, false)
=======
// Warning 6328: (66-80): CHC: Assertion violation happens here.
>>>>>>> c51099a83 (Adjust tests for nondeterminism)
