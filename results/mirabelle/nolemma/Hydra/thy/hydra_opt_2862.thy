theory hydra_opt_2862
    imports rewrite_defs
begin
theorem hydra_opt_2862_th:
"(bw t (bw r ((bw r symconst_1) + (bw r (signed t (bw t v0))))))=(bw t ((bw t v0) + (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(t < r)" and "(r > t)" and "(r > 0)" and "(t > 0)"
for r t :: nat and v0 symconst_1 :: int
proof -
  show ?thesis sorry
qed

end
