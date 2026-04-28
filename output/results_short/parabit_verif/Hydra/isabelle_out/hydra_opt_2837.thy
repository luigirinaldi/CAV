theory hydra_opt_2837
    imports  arith_lemmas
begin
theorem hydra_opt_2837_th:
"(bw t (bw r ((bw r symconst_1) * (bw r (bw t v0)))))=(bw t ((bw t v0) * (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(t < r)" and "(r > t)" and "(t > 0)" and "(r > 0)"
for r t :: nat and v0 symconst_1 :: int
proof -
    have "?lhs = (bw t ((bw r symconst_1) * (bw r (bw t v0))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw t (bw r symconst_1)) * (bw r (bw t v0))))" using mul_eq_prec that by (simp ; fail | simp only: mul_eq_prec; fail | simp add: mul_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw t (bw r symconst_1)) * (bw t v0)))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw t v0) * (bw t (bw r symconst_1))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
