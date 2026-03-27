theory hydra_opt_2825
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2825_th:
"(bw u (bw r ((bw r (signed u (bw u v0))) - (bw r symconst_1))))=(bw u ((bw u v0) + (bw u (bw r ((bw r 0) - (bw r symconst_1))))))" (is "?lhs = ?rhs")
if "(u < r)" and "(r > u)" and "(u > 0)" and "(r > 0)"
for u r :: nat and v0 symconst_1 :: int
proof -
  show ?thesis sorry
qed

end
