theory hydra_opt_252
    imports  arith_lemmas
begin
theorem hydra_opt_252_th:
"(bw r ((bw r 0) - (bw r ((bw r newvar1) + (bw r symconst_2)))))=(bw r ((bw r ((bw r 0) - (bw r symconst_2))) - (bw r newvar1)))" (is "?lhs = ?rhs")
if "(r > 0)"
for r :: nat and newvar1 symconst_2 :: int
proof -
    have "?lhs = (bw r (0 + ((bw r 0) - (bw r ((bw r newvar1) + (bw r symconst_2))))))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r 0) + ((bw r 0) - (bw r ((bw r newvar1) + (bw r symconst_2))))))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r 0) + ((bw r 0) + ((-1) * (bw r ((bw r newvar1) + (bw r symconst_2)))))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r 0) + (0 + ((-1) * (bw r ((bw r newvar1) + (bw r symconst_2)))))))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r 0) + ((-1) * (bw r ((bw r newvar1) + (bw r symconst_2))))))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw r (0 + ((-1) * (bw r ((bw r newvar1) + (bw r symconst_2))))))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw r ((-1) * (bw r ((bw r newvar1) + (bw r symconst_2)))))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r ((bw r newvar1) + (bw r symconst_2))) * (-1)))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw r newvar1) + (bw r symconst_2)) * (-1)))" using mul_eq_prec that by (simp ; fail | simp only: mul_eq_prec; fail | simp add: mul_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw r ((-1) * ((bw r newvar1) + (bw r symconst_2))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((-1) * ((bw r symconst_2) + (bw r newvar1))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw r (((-1) * (bw r symconst_2)) + ((-1) * (bw r newvar1))))" using int_distrib that by (simp ; fail | simp only: int_distrib; fail | simp add: int_distrib; fail | blast; fail | metis)
    moreover have "... = (bw r ((0 + ((-1) * (bw r symconst_2))) + ((-1) * (bw r newvar1))))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw r 0) + ((-1) * (bw r symconst_2))) + ((-1) * (bw r newvar1))))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw r 0) - (bw r symconst_2)) + ((-1) * (bw r newvar1))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r ((bw r 0) - (bw r symconst_2))) + ((-1) * (bw r newvar1))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r ((bw r 0) - (bw r symconst_2))) - (bw r newvar1)))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
