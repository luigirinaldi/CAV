theory hydra_opt_263
    imports  arith_lemmas
begin
theorem hydra_opt_263_th:
"(bw q ((bw q ((bw q v0) + (bw q symconst_1))) - (bw q symconst_1)))=(bw q v0)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and symconst_1 v0 :: int
proof -
    have "?lhs = (bw q ((bw q ((bw q v0) + (bw q symconst_1))) - symconst_1))" using diff_right_eq_prec that by (simp ; fail | simp only: diff_right_eq_prec; fail | simp add: diff_right_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q ((bw q v0) + (bw q symconst_1))) + ((-1) * symconst_1)))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q (v0 + (bw q symconst_1))) + ((-1) * symconst_1)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((v0 + (bw q symconst_1)) + ((-1) * symconst_1)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q (v0 + ((bw q symconst_1) + ((-1) * symconst_1))))" using add.assoc that by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw q (((bw q symconst_1) + ((-1) * symconst_1)) + v0))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q ((bw q symconst_1) + ((-1) * symconst_1))) + v0))" using that bw_def mod_prop_sum by (presburger ; fail | blast)
    moreover have "... = (bw q ((bw q ((bw q symconst_1) - symconst_1)) + v0))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q ((bw q symconst_1) - (bw q symconst_1))) + v0))" using diff_right_eq_prec that by (simp ; fail | simp only: diff_right_eq_prec; fail | simp add: diff_right_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q 0) + v0))" using diff_self that by (simp ; fail | simp only: diff_self; fail | simp add: diff_self; fail | blast; fail | metis)
    moreover have "... = (bw q (0 + v0))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw q v0)" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
