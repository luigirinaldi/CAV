theory hydra_opt_2840
    imports  arith_lemmas
begin
theorem hydra_opt_2840_th:
"(bw t (bw r ((bw r symconst_1) + (bw r (bw t newvar1)))))=(bw t ((bw t newvar1) + (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(t < r)" and "(r > t)" and "(t > 0)" and "(r > 0)"
for r t :: nat and newvar1 symconst_1 :: int
proof -
    have "?lhs = (bw t ((bw r symconst_1) + (bw r (bw t newvar1))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw t (bw r symconst_1)) + (bw r (bw t newvar1))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw t (bw r symconst_1)) + (bw t newvar1)))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw t newvar1) + (bw t (bw r symconst_1))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
