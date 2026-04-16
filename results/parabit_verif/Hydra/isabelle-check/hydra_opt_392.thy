theory hydra_opt_392
    imports  arith_lemmas
begin
theorem hydra_opt_392_th:
"(bw q ((bw q 1) * (bw q newvar2)))=(bw q newvar2)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and newvar2 :: int
proof -
    have "?lhs = (bw q (1 * (bw q newvar2)))" using bw_1 that by (simp ; fail | simp only: bw_1; fail | simp add: bw_1; fail | blast; fail | metis)
    moreover have "... = (bw q (bw q newvar2))" using mult_1 that by (simp ; fail | simp only: mult_1; fail | simp add: mult_1; fail | blast; fail | metis)
    moreover have "... = (bw q newvar2)" using mod_eq that by (simp ; fail | simp only: mod_eq; fail | simp add: mod_eq; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
