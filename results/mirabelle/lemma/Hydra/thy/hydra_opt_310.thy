theory hydra_opt_310
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_310_th:
"(bw r ((bw r 0) - (bw r (bw q newvar0))))=(bw r (signed q (bw q newvar0)))" (is "?lhs = ?rhs")
if "(q < r)" and "(r > 0)" and "(q > 0)"
for r q :: nat and newvar0 :: int
proof -
  show ?thesis sorry
qed

end
