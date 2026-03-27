theory hydra_opt_2840
    imports rewrite_defs
begin
theorem hydra_opt_2840_th:
"(bw t (bw r ((bw r symconst_1) + (bw r (bw t newvar1)))))=(bw t ((bw t newvar1) + (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(t < r)" and "(r > t)" and "(r > 0)" and "(t > 0)"
for t r :: nat and newvar1 symconst_1 :: int
proof -
  show ?thesis sorry
qed

end
