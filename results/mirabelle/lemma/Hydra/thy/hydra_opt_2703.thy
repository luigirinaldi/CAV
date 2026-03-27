theory hydra_opt_2703
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2703_th:
"(bw t (signed r (bw r ((bw r 0) - (bw r (bw q newvar0))))))=(bw t (signed q (bw q newvar0)))" (is "?lhs = ?rhs")
if "(q < r)" and "(q < t)" and "(r < t)" and "(q > 0)" and "(r > 0)" and "(t > 0)"
for t r q :: nat and newvar0 :: int
proof -
  show ?thesis sorry
qed

end
