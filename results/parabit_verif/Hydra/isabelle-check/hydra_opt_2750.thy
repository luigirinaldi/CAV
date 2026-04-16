theory hydra_opt_2750
    imports  arith_lemmas
begin
theorem hydra_opt_2750_th:
"(bw r (bw s (or (bw s (bw r v0)) (bw s (bw r newvar1)))))=(bw r (or (bw r v0) (bw r newvar1)))" (is "?lhs = ?rhs")
if "(r < s)" and "(s > r)" and "(r > 0)" and "(s > 0)"
for r s :: nat and v0 newvar1 :: int
proof -
    have "?lhs = (bw r (or (bw s (bw r v0)) (bw s (bw r newvar1))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw r (or (bw r v0) (bw s (bw r newvar1))))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw r (or (bw r v0) (bw r newvar1)))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
