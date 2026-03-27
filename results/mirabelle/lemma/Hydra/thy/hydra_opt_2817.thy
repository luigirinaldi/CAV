theory hydra_opt_2817
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2817_th:
"(bw u (bw r ((bw r (bw u newvar0)) - (bw r symconst_1))))=(bw u ((bw u newvar0) + (bw u (bw r ((bw r 0) - (bw r symconst_1))))))" (is "?lhs = ?rhs")
if "(u < r)" and "(r > u)" and "(u > 0)" and "(r > 0)"
for r u :: nat and newvar0 symconst_1 :: int
proof -
  show ?thesis sorry
qed

end
