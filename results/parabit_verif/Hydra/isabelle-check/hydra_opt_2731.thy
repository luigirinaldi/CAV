theory hydra_opt_2731
    imports  arith_lemmas
begin
theorem hydra_opt_2731_th:
"(bw r (bw s (and (bw s (bw r v0)) (bw s (bw r v2)))))=(bw r (and (bw r v0) (bw r v2)))" (is "?lhs = ?rhs")
if "(r < s)" and "(s > r)" and "(r > 0)" and "(s > 0)"
for s r :: nat and v2 v0 :: int
proof -
    have "?lhs = (bw r (and (bw s (bw r v0)) (bw s (bw r v2))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw r (and (bw r v0) (bw s (bw r v2))))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw r (and (bw r v0) (bw r v2)))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
