theory hydra_opt_2430
    imports  arith_lemmas bitwise_lemmas
begin
theorem hydra_opt_2430_th:
"(bw s (bw q ((bw q 0) + (bw q v0))))=(bw s (bw q v0))" (is "?lhs = ?rhs")
if "(q < s)" and "(s > 0)" and "(q > 0)"
for q s :: nat and v0 :: int
proof -
    have "?lhs = (bw s (bw q (not (bw q (not (bw q ((bw q 0) + (bw q v0))))))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw q (not (bw q (not (bw q ((bw q 0) + (bw q v0)))))))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q 0) + (bw q v0)))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw q (0 + (bw q v0)))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw q (bw q v0))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw s (bw q (bw q v0)))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw s (bw q v0))" using mod_eq that by (simp ; fail | simp only: mod_eq; fail | simp add: mod_eq; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
