theory hydra_opt_2438
    imports rewrite_defs
begin
theorem hydra_opt_2438_th:
"(bw t (bw r (and (bw r symconst_1) (bw r (bw t v0)))))=(bw t (and (bw t v0) (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(r < t)" and "(t > r)" and "(r > 0)" and "(t > 0)"
for r t :: nat and symconst_1 v0 :: int
proof -
  show ?thesis sorry
qed

end
