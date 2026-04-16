theory hydra_opt_2763
    imports  arith_lemmas
begin
theorem hydra_opt_2763_th:
"(bw s (bw q ((bw q 0) + (bw q v0))))=(bw s (bw q v0))" (is "?lhs = ?rhs")
if "(q > s)" and "(s > 0)" and "(q > 0)"
for q s :: nat and v0 :: int
proof -
    have "?lhs = (bw s (bw q (0 + (bw q v0))))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw s (bw q (bw q v0)))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw s (bw q v0))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
