# Haskell Space Leak: Uncontrolled State Accumulation

This repository demonstrates a common yet subtle error in Haskell programming involving the `State` monad: uncontrolled state accumulation leading to a space leak.  The `bug.hs` file contains the erroneous code, while `bugSolution.hs` provides a corrected version. 

The problem arises from accumulating state within the `loop` function without any mechanism for discarding unnecessary elements. This causes a linear growth in memory consumption, eventually leading to resource exhaustion for large input values.

The solution involves carefully managing the state, potentially using techniques like `modify` to update only necessary parts of the state or employing more advanced state management techniques if the state is complex. The solution provides an example illustrating one possible fix.