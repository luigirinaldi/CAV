theory hydra_opt_2817
    imports  arith_lemmas
begin
theorem hydra_opt_2817_th:
"(bw u (bw r ((bw r (bw u newvar0)) - (bw r symconst_1))))=(bw u ((bw u newvar0) + (bw u (bw r ((bw r 0) - (bw r symconst_1))))))" (is "?lhs = ?rhs")
if "(u < r)" and "(r > u)" and "(u > 0)" and "(r > 0)"
for u r :: nat and newvar0 symconst_1 :: int
proof -
    have "?lhs = (bw u ((bw r (bw u newvar0)) - (bw r symconst_1)))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u newvar0) - (bw r symconst_1)))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u newvar0) + ((-1) * (bw r symconst_1))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw u (((-1) * (bw r symconst_1)) + (bw u newvar0)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u ((-1) * (bw r symconst_1))) + (bw u newvar0)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u (bw r ((-1) * (bw r symconst_1)))) + (bw u newvar0)))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u (bw r (0 + ((-1) * (bw r symconst_1))))) + (bw u newvar0)))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u (bw r ((bw r 0) + ((-1) * (bw r symconst_1))))) + (bw u newvar0)))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u (bw r ((bw r 0) - (bw r symconst_1)))) + (bw u newvar0)))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u newvar0) + (bw u (bw r ((bw r 0) - (bw r symconst_1))))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
