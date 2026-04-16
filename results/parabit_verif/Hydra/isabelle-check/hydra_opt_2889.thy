theory hydra_opt_2889
    imports  arith_lemmas
begin
theorem hydra_opt_2889_th:
"(bw u (bw r ((bw r (bw u v0)) << (bw r symconst_1))))=(bw u ((bw u v0) * (bw u (bw r ((bw r 1) << (bw r symconst_1))))))" (is "?lhs = ?rhs")
if "(u < r)" and "(r > u)" and "(r > 0)" and "(u > 0)"
for u r :: nat and symconst_1 v0 :: int
proof -
    have "?lhs = (bw u ((bw r (bw u v0)) << (bw r symconst_1)))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw r (bw u v0)) * (2 ^ nat ((bw r symconst_1)))))" by (simp add: shl_def)
    moreover have "... = (bw u ((bw u v0) * (2 ^ nat ((bw r symconst_1)))))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw u ((2 ^ nat ((bw r symconst_1))) * (bw u v0)))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u (2 ^ nat ((bw r symconst_1)))) * (bw u v0)))" using mul_eq_prec that by (simp ; fail | simp only: mul_eq_prec; fail | simp add: mul_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u (1 * (2 ^ nat ((bw r symconst_1))))) * (bw u v0)))" using mult_1 that by (simp ; fail | simp only: mult_1; fail | simp add: mult_1; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u ((bw r 1) * (2 ^ nat ((bw r symconst_1))))) * (bw u v0)))" using bw_1 that by (simp ; fail | simp only: bw_1; fail | simp add: bw_1; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u ((bw r (bw r 1)) * (2 ^ nat ((bw r symconst_1))))) * (bw u v0)))" using bw_1 that by (simp ; fail | simp only: bw_1; fail | simp add: bw_1; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u ((bw r (bw r 1)) << (bw r symconst_1))) * (bw u v0)))" by (simp add: shl_def)
    moreover have "... = (bw u ((bw u ((bw r 1) << (bw r symconst_1))) * (bw u v0)))" using bw_1 that by (simp ; fail | simp only: bw_1; fail | simp add: bw_1; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u (bw r ((bw r 1) << (bw r symconst_1)))) * (bw u v0)))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u v0) * (bw u (bw r ((bw r 1) << (bw r symconst_1))))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
