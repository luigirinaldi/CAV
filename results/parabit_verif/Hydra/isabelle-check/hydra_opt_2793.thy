theory hydra_opt_2793
    imports  arith_lemmas
begin
theorem hydra_opt_2793_th:
"(bw r (bw s ((bw s (bw r v0)) + (bw s (bw r v3)))))=(bw r ((bw r v0) + (bw r v3)))" (is "?lhs = ?rhs")
if "(r < s)" and "(s > r)" and "(s > 0)" and "(r > 0)"
for s r :: nat and v3 v0 :: int
proof -
    have "?lhs = (bw r ((bw s (bw r v0)) + (bw s (bw r v3))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r v0) + (bw s (bw r v3))))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r v0) + (bw r v3)))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
