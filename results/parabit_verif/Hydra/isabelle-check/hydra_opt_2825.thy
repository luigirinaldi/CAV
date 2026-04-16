theory hydra_opt_2825
    imports  bitwise_lemmas signed_lemmas arith_lemmas mixed_lemmas
begin
theorem hydra_opt_2825_th:
"(bw u (bw r ((bw r (signed u (bw u v0))) - (bw r symconst_1))))=(bw u ((bw u v0) + (bw u (bw r ((bw r 0) - (bw r symconst_1))))))" (is "?lhs = ?rhs")
if "(u < r)" and "(r > u)" and "(u > 0)" and "(r > 0)"
for u r :: nat and symconst_1 v0 :: int
proof -
    have "?lhs = (bw u ((bw r (signed u (bw u v0))) - (bw r symconst_1)))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw r (signed u (bw u v0))) + ((-1) * (bw r symconst_1))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u (bw r (signed u (bw u v0)))) + ((-1) * (bw r symconst_1))))" using that bw_def mod_prop_sum by (presburger ; fail | blast)
    moreover have "... = (bw u ((bw u (not (bw u (not (bw u (bw r (signed u (bw u v0)))))))) + ((-1) * (bw r symconst_1))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw u ((not (bw u (not (bw u (bw r (signed u (bw u v0))))))) + ((-1) * (bw r symconst_1))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw u ((not (bw u (not (bw u (signed u (bw u v0)))))) + ((-1) * (bw r symconst_1))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw u ((not (bw u (not (bw u v0)))) + ((-1) * (bw r symconst_1))))" using redundant_signed that by (simp ; fail | simp only: redundant_signed; fail | simp add: redundant_signed; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u (not (bw u (not (bw u v0))))) + ((-1) * (bw r symconst_1))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u v0) + ((-1) * (bw r symconst_1))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw u (((-1) * (bw r symconst_1)) + (bw u v0)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw u ((0 + ((-1) * (bw r symconst_1))) + (bw u v0)))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw u (((bw r 0) + ((-1) * (bw r symconst_1))) + (bw u v0)))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw u (((bw r 0) - (bw r symconst_1)) + (bw u v0)))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw u ((0 - (bw r symconst_1)) + (bw u v0)))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw u (((bw u 0) - (bw r symconst_1)) + (bw u v0)))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw u (((bw u (bw r 0)) - (bw r symconst_1)) + (bw u v0)))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u ((bw u (bw r 0)) - (bw r symconst_1))) + (bw u v0)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u ((bw r 0) - (bw r symconst_1))) + (bw u v0)))" using that mod_prop_sub_left by (blast; fail | metis)
    moreover have "... = (bw u ((bw u ((bw r 0) + ((-1) * (bw r symconst_1)))) + (bw u v0)))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u (0 + ((-1) * (bw r symconst_1)))) + (bw u v0)))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u ((-1) * (bw r symconst_1))) + (bw u v0)))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw u ((xor (bw u ((-1) * (bw r symconst_1))) (bw u v0)) + (2 * (and (bw u ((-1) * (bw r symconst_1))) (bw u v0)))))" using add_as_xor_and that by (simp ; fail | simp only: add_as_xor_and; fail | simp add: add_as_xor_and; fail | blast; fail | metis)
    moreover have "... = (bw u ((xor (bw u (0 + ((-1) * (bw r symconst_1)))) (bw u v0)) + (2 * (and (bw u ((-1) * (bw r symconst_1))) (bw u v0)))))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw u ((xor (bw u ((bw r 0) + ((-1) * (bw r symconst_1)))) (bw u v0)) + (2 * (and (bw u ((-1) * (bw r symconst_1))) (bw u v0)))))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw u ((xor (bw u ((bw r 0) - (bw r symconst_1))) (bw u v0)) + (2 * (and (bw u ((-1) * (bw r symconst_1))) (bw u v0)))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw u ((xor (bw u (bw r ((bw r 0) - (bw r symconst_1)))) (bw u v0)) + (2 * (and (bw u ((-1) * (bw r symconst_1))) (bw u v0)))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw u ((xor (bw u (bw r ((bw r 0) - (bw r symconst_1)))) (bw u v0)) + (2 * (and (bw u (0 + ((-1) * (bw r symconst_1)))) (bw u v0)))))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw u ((xor (bw u (bw r ((bw r 0) - (bw r symconst_1)))) (bw u v0)) + (2 * (and (bw u ((bw r 0) + ((-1) * (bw r symconst_1)))) (bw u v0)))))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw u ((xor (bw u (bw r ((bw r 0) - (bw r symconst_1)))) (bw u v0)) + (2 * (and (bw u ((bw r 0) - (bw r symconst_1))) (bw u v0)))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw u ((xor (bw u (bw r ((bw r 0) - (bw r symconst_1)))) (bw u v0)) + (2 * (and (bw u (bw r ((bw r 0) - (bw r symconst_1)))) (bw u v0)))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u (bw r ((bw r 0) - (bw r symconst_1)))) + (bw u v0)))" using add_as_xor_and that by (simp ; fail | simp only: add_as_xor_and; fail | simp add: add_as_xor_and; fail | blast; fail | metis)
    moreover have "... = (bw u ((bw u v0) + (bw u (bw r ((bw r 0) - (bw r symconst_1))))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
