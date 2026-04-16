theory hydra_opt_64
    imports  arith_lemmas bitwise_lemmas mixed_lemmas
begin
theorem hydra_opt_64_th:
"(bw r ((bw r (-1)) + (bw r ((bw r v0) - (bw r symconst_2)))))=(bw r ((bw r v0) + (bw r (xor (bw r (-1)) (bw r symconst_2)))))" (is "?lhs = ?rhs")
if "(r > 0)"
for r :: nat and symconst_2 v0 :: int
proof -
    have "?lhs = (bw r ((bw r ((bw r v0) - (bw r symconst_2))) + (bw r (-1))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw r v0) - (bw r symconst_2)) + (bw r (-1))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r (-1)) + ((bw r v0) - (bw r symconst_2))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((or (bw r symconst_2) (bw r (-1))) + ((bw r v0) - (bw r symconst_2))))" using or_allones that by (simp ; fail | simp only: or_allones; fail | simp add: or_allones; fail | blast; fail | metis)
    moreover have "... = (bw r ((or (bw r (-1)) (bw r symconst_2)) + ((bw r v0) - (bw r symconst_2))))" using or.commute that by (simp ; fail | simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((or (bw r (-1)) (bw r symconst_2)) + ((bw r v0) + ((-1) * (bw r symconst_2)))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw r ((or (bw r (-1)) (bw r symconst_2)) + (((-1) * (bw r symconst_2)) + (bw r v0))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((or (bw r (-1)) (bw r symconst_2)) + (((bw r symconst_2) * (-1)) + (bw r v0))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((or (bw r (-1)) (bw r symconst_2)) + (((and (bw r symconst_2) (bw r (-1))) * (-1)) + (bw r v0))))" using and_allones that by (simp ; fail | simp only: and_allones; fail | simp add: and_allones; fail | blast; fail | metis)
    moreover have "... = (bw r ((or (bw r (-1)) (bw r symconst_2)) + (((and (bw r (-1)) (bw r symconst_2)) * (-1)) + (bw r v0))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((or (bw r (-1)) (bw r symconst_2)) + (((-1) * (and (bw r (-1)) (bw r symconst_2))) + (bw r v0))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw r (((or (bw r (-1)) (bw r symconst_2)) + ((-1) * (and (bw r (-1)) (bw r symconst_2)))) + (bw r v0)))" using add.assoc that by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw r (((or (bw r (-1)) (bw r symconst_2)) - (and (bw r (-1)) (bw r symconst_2))) + (bw r v0)))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw r (or (bw r (-1)) (bw r symconst_2))) - (and (bw r (-1)) (bw r symconst_2))) + (bw r v0)))" using or_remove that by (simp ; fail | simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw r (or (bw r (-1)) (bw r symconst_2))) - (bw r (and (bw r (-1)) (bw r symconst_2)))) + (bw r v0)))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw r (((or (bw r (-1)) (bw r symconst_2)) - (bw r (and (bw r (-1)) (bw r symconst_2)))) + (bw r v0)))" using or_remove that by (simp ; fail | simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r ((or (bw r (-1)) (bw r symconst_2)) - (bw r (and (bw r (-1)) (bw r symconst_2))))) + (bw r v0)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r ((or (bw r (-1)) (bw r symconst_2)) - (and (bw r (-1)) (bw r symconst_2)))) + (bw r v0)))" using that mod_prop_sub_right by (blast; fail | metis)
    moreover have "... = (bw r ((bw r (xor (bw r (-1)) (bw r symconst_2))) + (bw r v0)))" using xor_as_or_and that by (simp ; fail | simp only: xor_as_or_and; fail | simp add: xor_as_or_and; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r v0) + (bw r (xor (bw r (-1)) (bw r symconst_2)))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
