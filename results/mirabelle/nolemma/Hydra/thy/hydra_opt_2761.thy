theory hydra_opt_2761
    imports rewrite_defs
begin
theorem hydra_opt_2761_th:
"(bw t (bw r (and (bw r symconst_1) (bw r (bw t v0)))))=(bw t (and (bw t v0) (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(t < r)" and "(r > t)" and "(t > 0)" and "(r > 0)"
for r t :: nat and symconst_1 v0 :: int
proof -
  show ?thesis sorry
qed

end
