theory hydra_opt_57
    imports  arith_lemmas
begin
theorem hydra_opt_57_th:
"(bw q ((bw q newvar0) + (bw q ((bw q v10) - (bw q newvar0)))))=(bw q v10)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and v10 newvar0 :: int
proof -
    have "?lhs = (bw q ((bw q ((bw q v10) - (bw q newvar0))) + (bw q newvar0)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q (v10 - (bw q newvar0))) + (bw q newvar0)))" using diff_left_eq_prec that by (simp ; fail | simp only: diff_left_eq_prec; fail | simp add: diff_left_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q (v10 - (bw q (bw q newvar0)))) + (bw q newvar0)))" using that mod_prop_sub_right by (blast; fail | metis)
    moreover have "... = (bw q ((v10 - (bw q (bw q newvar0))) + (bw q newvar0)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((v10 - (bw q newvar0)) + (bw q newvar0)))" using mod_eq that by (simp ; fail | simp only: mod_eq; fail | simp add: mod_eq; fail | blast; fail | metis)
    moreover have "... = (bw q ((v10 + ((-1) * (bw q newvar0))) + (bw q newvar0)))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw q ((((-1) * (bw q newvar0)) + v10) + (bw q newvar0)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw q (((-1) * (bw q newvar0)) + (v10 + (bw q newvar0))))" using add.assoc that by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q ((-1) * (bw q newvar0))) + (v10 + (bw q newvar0))))" using that bw_def mod_prop_sum by (presburger ; fail | blast)
    moreover have "... = (bw q (((bw q ((-1) * (bw q newvar0))) + v10) + (bw q newvar0)))" using add.assoc that by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw q ((v10 + (bw q ((-1) * (bw q newvar0)))) + (bw q newvar0)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw q (v10 + ((bw q ((-1) * (bw q newvar0))) + (bw q newvar0))))" using add.assoc that by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw q (((bw q ((-1) * (bw q newvar0))) + (bw q newvar0)) + v10))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q ((bw q ((-1) * (bw q newvar0))) + (bw q newvar0))) + v10))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q (((-1) * (bw q newvar0)) + (bw q newvar0))) + v10))" using that bw_def mod_prop_sum by (presburger ; fail | blast)
    moreover have "... = (bw q ((bw q ((bw q newvar0) + ((-1) * (bw q newvar0)))) + v10))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q ((bw q newvar0) - (bw q newvar0))) + v10))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q 0) + v10))" using diff_self that by (simp ; fail | simp only: diff_self; fail | simp add: diff_self; fail | blast; fail | metis)
    moreover have "... = (bw q (0 + v10))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw q v10)" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
