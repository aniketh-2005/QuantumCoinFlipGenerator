namespace QuantumExamples {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    operation QuantumCoinFlip() : Result {
        use qubit = Qubit() {
            H(qubit); // we Apply Hadamard gate to create superposition
            let result = M(qubit); // used to Measure the qubit
            Reset(qubit); // Reset the qubit to its original state to avoid the leakage of resources
            return result; // it is used to Return the measurement result
        }
    }

    @EntryPoint()
    operation Main() : Unit {
        let flipResult = QuantumCoinFlip();
        if (flipResult == Zero) {
            Message("Heads");
        } else {
            Message("Tails");
        }
    }
}
