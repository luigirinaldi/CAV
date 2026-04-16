theory hydra_opt_293
    imports  mixed_lemmas arith_lemmas bitwise_lemmas
begin
theorem hydra_opt_293_th:
"(bw r ((bw r ((bw r v0) + (bw r symconst_1))) - (bw r symconst_2)))=(bw r ((bw r v0) + (bw r ((bw r symconst_1) - (bw r symconst_2)))))" (is "?lhs = ?rhs")
if "(r > 0)"
for r :: nat and v0 symconst_2 symconst_1 :: int
proof -
    have "?lhs = (bw r ((bw r ((bw r v0) + (bw r symconst_1))) + ((-1) * (bw r symconst_2))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r ((xor (bw r v0) (bw r symconst_1)) + (2 * (and (bw r v0) (bw r symconst_1))))) + ((-1) * (bw r symconst_2))))" using add_as_xor_and that by (simp ; fail | simp only: add_as_xor_and; fail | simp add: add_as_xor_and; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r ((bw r (xor (bw r v0) (bw r symconst_1))) + (2 * (and (bw r v0) (bw r symconst_1))))) + ((-1) * (bw r symconst_2))))" using that bw_def mod_prop_sum by (presburger ; fail | blast)
    moreover have "... = (bw r (((bw r (xor (bw r v0) (bw r symconst_1))) + (2 * (and (bw r v0) (bw r symconst_1)))) + ((-1) * (bw r symconst_2))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw r (((2 * (and (bw r v0) (bw r symconst_1))) + (bw r (xor (bw r v0) (bw r symconst_1)))) + ((-1) * (bw r symconst_2))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw r (((2 * (and (bw r v0) (bw r symconst_1))) + (xor (bw r v0) (bw r symconst_1))) + ((-1) * (bw r symconst_2))))" using xor_remove that by (simp ; fail | simp only: xor_remove; fail | simp add: xor_remove; fail | blast; fail | metis)
    moreover have "... = (bw r (((2 * (and (bw r v0) (bw r symconst_1))) + (and (or (bw r v0) (bw r symconst_1)) (or (bw r (not (bw r v0))) (bw r (not (bw r symconst_1)))))) + ((-1) * (bw r symconst_2))))" using xor_and_or that by (simp ; fail | simp only: xor_and_or; fail | simp add: xor_and_or; fail | blast; fail | metis)
    moreover have "... = (bw r (((2 * (and (bw r v0) (bw r symconst_1))) + (and (or (bw r symconst_1) (bw r v0)) (or (bw r (not (bw r v0))) (bw r (not (bw r symconst_1)))))) + ((-1) * (bw r symconst_2))))" using or.commute that by (simp ; fail | simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (bw r (((2 * (and (bw r v0) (bw r symconst_1))) + (and (or (bw r symconst_1) (bw r v0)) (or (bw r (not (bw r symconst_1))) (bw r (not (bw r v0)))))) + ((-1) * (bw r symconst_2))))" using or.commute that by (simp ; fail | simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (bw r (((2 * (and (bw r v0) (bw r symconst_1))) + (xor (bw r symconst_1) (bw r v0))) + ((-1) * (bw r symconst_2))))" using xor_and_or that by (simp ; fail | simp only: xor_and_or; fail | simp add: xor_and_or; fail | blast; fail | metis)
    moreover have "... = (bw r (((xor (bw r symconst_1) (bw r v0)) + (2 * (and (bw r v0) (bw r symconst_1)))) + ((-1) * (bw r symconst_2))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw r (((xor (bw r symconst_1) (bw r v0)) + (2 * (and (bw r symconst_1) (bw r v0)))) + ((-1) * (bw r symconst_2))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw r symconst_1) + (bw r v0)) + ((-1) * (bw r symconst_2))))" using add_as_xor_and that by (simp ; fail | simp only: add_as_xor_and; fail | simp add: add_as_xor_and; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw r v0) + (bw r symconst_1)) + ((-1) * (bw r symconst_2))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r v0) + ((bw r symconst_1) + ((-1) * (bw r symconst_2)))))" using add.assoc that by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r v0) + ((bw r symconst_1) - (bw r symconst_2))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw r symconst_1) - (bw r symconst_2)) + (bw r v0)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r ((bw r symconst_1) - (bw r symconst_2))) + (bw r v0)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r v0) + (bw r ((bw r symconst_1) - (bw r symconst_2)))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
