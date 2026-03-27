theory hydra_opt_2778
    imports rewrite_defs
begin
theorem hydra_opt_2778_th:
"(bw t (bw r (or (bw r symconst_1) (bw r (signed t (bw t v0))))))=(bw t (or (bw t v0) (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(t < r)" and "(r > t)" and "(r > 0)" and "(t > 0)"
for t r :: nat and symconst_1 v0 :: int
proof -
  show ?thesis sorry
qed

end
