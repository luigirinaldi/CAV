theory hydra_opt_391
    imports  arith_lemmas
begin
theorem hydra_opt_391_th:
"(bw q ((bw q (-1)) * (bw q ((bw q newvar0) - (bw q symconst_1)))))=(bw q ((bw q symconst_1) - (bw q newvar0)))" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and symconst_1 newvar0 :: int
proof -
    have "?lhs = (bw q ((-1) * (bw q ((bw q newvar0) - (bw q symconst_1)))))" using mul_eq_prec that by (simp ; fail | simp only: mul_eq_prec; fail | simp add: mul_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q ((bw q newvar0) - (bw q symconst_1))) * (-1)))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q ((bw q newvar0) - symconst_1)) * (-1)))" using diff_right_eq_prec that by (simp ; fail | simp only: diff_right_eq_prec; fail | simp add: diff_right_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q (newvar0 - symconst_1)) * (-1)))" using diff_left_eq_prec that by (simp ; fail | simp only: diff_left_eq_prec; fail | simp add: diff_left_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((newvar0 - symconst_1) * (-1)))" using mul_eq_prec that by (simp ; fail | simp only: mul_eq_prec; fail | simp add: mul_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((-1) * (newvar0 - symconst_1)))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw q ((-1) * (newvar0 + ((-1) * symconst_1))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw q ((-1) * (((-1) * symconst_1) + newvar0)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw q (((-1) * ((-1) * symconst_1)) + ((-1) * newvar0)))" using int_distrib that by (simp ; fail | simp only: int_distrib; fail | simp add: int_distrib; fail | blast; fail | metis)
    moreover have "... = (bw q (((-1) * ((-1) * symconst_1)) - newvar0))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw q ((((-1) * (-1)) * symconst_1) - newvar0))" using mult.assoc that by (simp ; fail | simp only: mult.assoc; fail | simp add: mult.assoc; fail | blast; fail | metis)
    moreover have "... = (bw q ((1 * symconst_1) - newvar0))" by (simp add: bw_def)
    moreover have "... = (bw q (symconst_1 - newvar0))" using mult_1 that by (simp ; fail | simp only: mult_1; fail | simp add: mult_1; fail | blast; fail | metis)
    moreover have "... = (bw q (symconst_1 + ((-1) * newvar0)))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q symconst_1) + ((-1) * newvar0)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q symconst_1) - newvar0))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q symconst_1) - (bw q newvar0)))" using diff_right_eq_prec that by (simp ; fail | simp only: diff_right_eq_prec; fail | simp add: diff_right_eq_prec; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
