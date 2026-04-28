theory hydra_opt_2761
    imports  arith_lemmas
begin
theorem hydra_opt_2761_th:
"(bw t (bw r (and (bw r symconst_1) (bw r (bw t v0)))))=(bw t (and (bw t v0) (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(t < r)" and "(r > t)" and "(r > 0)" and "(t > 0)"
for r t :: nat and symconst_1 v0 :: int
proof -
    have "?lhs = (bw t (and (bw r symconst_1) (bw r (bw t v0))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw t (and (bw r symconst_1) (bw t v0)))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw t (and (bw t (bw r symconst_1)) (bw t v0)))" using that mod_prop_and by (blast; fail | metis)
    moreover have "... = (bw t (and (bw t v0) (bw t (bw r symconst_1))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
