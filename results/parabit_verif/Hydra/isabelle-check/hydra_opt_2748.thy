theory hydra_opt_2748
    imports  arith_lemmas
begin
theorem hydra_opt_2748_th:
"(bw u (bw r (sel (bw 1 newvar1) (bw r symconst_1) (bw r symconst_2))))=(bw u (sel (bw 1 newvar1) (bw u (bw r symconst_1)) (bw u (bw r symconst_2))))" (is "?lhs = ?rhs")
if "(r > u)" and "(u > 0)" and "(r > 0)" and "(1 > 0)"
for u r :: nat and symconst_2 symconst_1 newvar1 :: int
proof -
    have "?lhs = (bw u (bw r (((bw r symconst_1) * (bw 1 (bw 1 newvar1))) + ((bw r symconst_2) * (bw 1 (not (bw 1 (bw 1 newvar1))))))))" by (simp add: sel_def)
    moreover have "... = (bw u (((bw r symconst_1) * (bw 1 (bw 1 newvar1))) + ((bw r symconst_2) * (bw 1 (not (bw 1 (bw 1 newvar1)))))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw u (((bw r symconst_2) * (bw 1 (not (bw 1 (bw 1 newvar1))))) + ((bw r symconst_1) * (bw 1 (bw 1 newvar1)))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u ((bw r symconst_2) * (bw 1 (not (bw 1 (bw 1 newvar1)))))) + ((bw r symconst_1) * (bw 1 (bw 1 newvar1)))))" using that bw_def mod_prop_sum by (presburger ; fail | blast)
    moreover have "... = (bw u (((bw r symconst_1) * (bw 1 (bw 1 newvar1))) + (bw u ((bw r symconst_2) * (bw 1 (not (bw 1 (bw 1 newvar1))))))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw u (((bw r symconst_1) * (bw 1 (bw 1 newvar1))) + (bw u ((bw u (bw r symconst_2)) * (bw 1 (not (bw 1 (bw 1 newvar1))))))))" using mul_eq_prec that by (simp ; fail | simp only: mul_eq_prec; fail | simp add: mul_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw u (((bw r symconst_1) * (bw 1 (bw 1 newvar1))) + ((bw u (bw r symconst_2)) * (bw 1 (not (bw 1 (bw 1 newvar1)))))))" using mul_by_bit_eq that by (simp ; fail | simp only: mul_by_bit_eq; fail | simp add: mul_by_bit_eq; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u ((bw r symconst_1) * (bw 1 (bw 1 newvar1)))) + ((bw u (bw r symconst_2)) * (bw 1 (not (bw 1 (bw 1 newvar1)))))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u ((bw u (bw r symconst_1)) * (bw 1 (bw 1 newvar1)))) + ((bw u (bw r symconst_2)) * (bw 1 (not (bw 1 (bw 1 newvar1)))))))" using mul_eq_prec that by (simp ; fail | simp only: mul_eq_prec; fail | simp add: mul_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw u (((bw u (bw r symconst_1)) * (bw 1 (bw 1 newvar1))) + ((bw u (bw r symconst_2)) * (bw 1 (not (bw 1 (bw 1 newvar1)))))))" using that bw_def mod_prop_sum by (presburger ; fail | blast)
    moreover have "... = (bw u (sel (bw 1 newvar1) (bw u (bw r symconst_1)) (bw u (bw r symconst_2))))" by (simp add: sel_def)
ultimately show ?thesis by argo
qed

end
