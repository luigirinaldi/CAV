theory hydra_opt_2873
    imports rewrite_defs
begin
theorem hydra_opt_2873_th:
"(bw t (bw r (xor (bw r symconst_1) (bw r (bw t v0)))))=(bw t (xor (bw t v0) (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(t < r)" and "(r > t)" and "(r > 0)" and "(t > 0)"
for t r :: nat and symconst_1 v0 :: int
proof -
  show ?thesis sorry
qed

end
