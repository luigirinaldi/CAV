theory hydra_opt_2817
    imports rewrite_defs
begin
theorem hydra_opt_2817_th:
"(bw u (bw r ((bw r (bw u newvar0)) - (bw r symconst_1))))=(bw u ((bw u newvar0) + (bw u (bw r ((bw r 0) - (bw r symconst_1))))))" (is "?lhs = ?rhs")
if "(u < r)" and "(r > u)" and "(r > 0)" and "(u > 0)"
for u r :: nat and symconst_1 newvar0 :: int
proof -
  show ?thesis sorry
qed

end
