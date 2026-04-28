theory hydra_opt_2712
    imports  arith_lemmas
begin
theorem hydra_opt_2712_th:
"(bw s (signed q (bw q ((bw q 0) + (bw q newvar0)))))=(bw s (signed q (bw q newvar0)))" (is "?lhs = ?rhs")
if "(q < s)" and "(s > 0)" and "(q > 0)"
for s q :: nat and newvar0 :: int
proof -
    have "?lhs = (bw s (signed q (bw q (0 + (bw q newvar0)))))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw s (signed q (bw q (bw q newvar0))))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw s (signed q (bw q newvar0)))" using mod_eq that by (simp ; fail | simp only: mod_eq; fail | simp add: mod_eq; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
