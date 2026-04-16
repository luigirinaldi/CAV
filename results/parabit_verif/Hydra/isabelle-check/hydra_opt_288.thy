theory hydra_opt_288
    imports  arith_lemmas
begin
theorem hydra_opt_288_th:
"(bw q ((bw q newvar1) - (bw q 0)))=(bw q newvar1)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and newvar1 :: int
proof -
    have "?lhs = (bw q ((bw q newvar1) + ((-1) * (bw q 0))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q newvar1) + ((-1) * 0)))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q newvar1) + 0))" by (simp add: bw_def)
    moreover have "... = (bw q ((bw q newvar1) + (bw q 0)))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q 0) + (bw q newvar1)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw q (0 + (bw q newvar1)))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw q (bw q newvar1))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw q newvar1)" using mod_eq that by (simp ; fail | simp only: mod_eq; fail | simp add: mod_eq; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
