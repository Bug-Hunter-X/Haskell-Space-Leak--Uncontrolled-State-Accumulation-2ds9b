The solution addresses the space leak by modifying the state update to only keep the necessary portion of the accumulated data instead of appending to a growing list.  This prevents unbounded memory growth.

```haskell
import Control.Monad.State

loop :: Int -> State Int Int
loop 0 = return 0
loop n = do
  s <- get
  put n
  x <- loop (n - 1)
  return (x + n)

main :: IO ()
main = do
  let result = evalState (loop 100000) 0
  print result
```

This revised version uses an integer to track the progress, avoiding the linear space consumption of the original implementation.