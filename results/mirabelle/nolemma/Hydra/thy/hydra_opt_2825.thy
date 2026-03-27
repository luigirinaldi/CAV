theory hydra_opt_2825
    imports rewrite_defs
begin
theorem hydra_opt_2825_th:
"(bw u (bw r ((bw r (signed u (bw u v0))) - (bw r symconst_1))))=(bw u ((bw u v0) + (bw u (bw r ((bw r 0) - (bw r symconst_1))))))" (is "?lhs = ?rhs")
if "(u < r)" and "(r > u)" and "(r > 0)" and "(u > 0)"
for r u :: nat and v0 symconst_1 :: int
proof -
  show ?thesis sorry
qed

end
