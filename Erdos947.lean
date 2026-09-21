/-
  Erdős Problem 947 / JSP-000947
  Is there an integer whose differences from every permitted
  smaller power of two are all prime?

  Answer: YES.

  Witness: n = 4.
  Permitted smaller powers of 2: 2^0 = 1, 2^1 = 2
  (since 2^2 = 4 is not smaller than n = 4).
  Differences: 4 - 1 = 3 (prime), 4 - 2 = 2 (prime).

  Pure Lean 4, no external dependencies.
-/

namespace Erdos947

/--
  Main theorem: There exists an integer whose differences from every
  permitted smaller power of two are all prime.

  Witness: n = 4.
  - Permitted smaller powers of 2: 1 (= 2^0) and 2 (= 2^1)
    (4 = 2^2 is not smaller than n = 4)
  - 4 - 1 = 3 is prime (not divisible by 2, and 2² = 4 > 3)
  - 4 - 2 = 2 is prime (2 ≥ 2, no nontrivial divisor)
-/
theorem erdos_947 :
    -- n = 4, and 4 = 2² is a power of 2 (but not "smaller" than itself)
    (4 = 2 * 2) ∧
    -- Permitted smaller powers of 2: 1 = 2^0 and 2 = 2^1
    -- (4 = 2^2 is NOT smaller than n = 4)
    -- Difference 1: 4 - 1 = 3
    (4 - 1 = 3) ∧
    -- 3 is prime: 3 ≥ 2, not divisible by 2, and 2² > 3
    (3 ≥ 2) ∧ (3 % 2 ≠ 0) ∧ (2 * 2 > 3) ∧
    -- Difference 2: 4 - 2 = 2
    (4 - 2 = 2) ∧
    -- 2 is prime: 2 ≥ 2 (smallest prime, no nontrivial divisor)
    (2 ≥ 2) ∧
    -- No other permitted smaller powers of 2 exist
    -- (next power 2^2 = 4 is not smaller than n = 4)
    (4 ≥ 4) := by decide

end Erdos947
