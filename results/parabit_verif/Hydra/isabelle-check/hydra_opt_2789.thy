theory hydra_opt_2789
    imports  arith_lemmas
begin
theorem hydra_opt_2789_th:
"(bw t (bw r (or (bw r symconst_1) (bw r (bw t newvar2)))))=(bw t (or (bw t newvar2) (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(t < r)" and "(r > t)" and "(r > 0)" and "(t > 0)"
for t r :: nat and symconst_1 newvar2 :: int
proof -
    have "?lhs = (bw t (or (bw r symconst_1) (bw r (bw t newvar2))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw t (or (bw r symconst_1) (bw t newvar2)))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw t (or (bw t (bw r symconst_1)) (bw t newvar2)))" using that mod_prop_or by (blast; fail | metis)
    moreover have "... = (bw t (or (bw t newvar2) (bw t (bw r symconst_1))))" using or.commute that by (simp ; fail | simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
