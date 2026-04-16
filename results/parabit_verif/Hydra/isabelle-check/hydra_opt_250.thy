theory hydra_opt_250
    imports  arith_lemmas bitwise_lemmas
begin
theorem hydra_opt_250_th:
"(bw q ((bw q 0) - (bw q ((bw q v0) - (bw q symconst_2)))))=(bw q ((bw q symconst_2) - (bw q v0)))" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and symconst_2 v0 :: int
proof -
    have "?lhs = (bw q ((bw q 0) + ((-1) * (bw q ((bw q v0) - (bw q symconst_2))))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw q (0 + ((-1) * (bw q ((bw q v0) - (bw q symconst_2))))))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw q ((-1) * (bw q ((bw q v0) - (bw q symconst_2)))))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q ((bw q v0) - (bw q symconst_2)))))" using Num.ring_1_class.mult_minus1 that by (simp ; fail | simp only: Num.ring_1_class.mult_minus1; fail | simp add: Num.ring_1_class.mult_minus1; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (v0 - (bw q symconst_2)))))" using diff_left_eq_prec that by (simp ; fail | simp only: diff_left_eq_prec; fail | simp add: diff_left_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (v0 - (bw q (not (bw q (not (bw q symconst_2)))))))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (v0 - (not (bw q (not (bw q symconst_2))))))))" using diff_right_eq_prec that by (simp ; fail | simp only: diff_right_eq_prec; fail | simp add: diff_right_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q (- (v0 - (not (bw q (not (bw q symconst_2)))))))" using that mod_prop_neg by (blast; fail | metis)
    moreover have "... = (bw q ((-1) * (v0 - (not (bw q (not (bw q symconst_2)))))))" using Num.ring_1_class.mult_minus1 that by (simp ; fail | simp only: Num.ring_1_class.mult_minus1; fail | simp add: Num.ring_1_class.mult_minus1; fail | blast; fail | metis)
    moreover have "... = (bw q ((-1) * (v0 + ((-1) * (not (bw q (not (bw q symconst_2))))))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw q (((-1) * v0) + ((-1) * ((-1) * (not (bw q (not (bw q symconst_2))))))))" using int_distrib that by (simp ; fail | simp only: int_distrib; fail | simp add: int_distrib; fail | blast; fail | metis)
    moreover have "... = (bw q (((-1) * ((-1) * (not (bw q (not (bw q symconst_2)))))) + ((-1) * v0)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw q ((((-1) * (-1)) * (not (bw q (not (bw q symconst_2))))) + ((-1) * v0)))" using mult.assoc that by (simp ; fail | simp only: mult.assoc; fail | simp add: mult.assoc; fail | blast; fail | metis)
    moreover have "... = (bw q ((1 * (not (bw q (not (bw q symconst_2))))) + ((-1) * v0)))" by (simp add: bw_def)
    moreover have "... = (bw q ((not (bw q (not (bw q symconst_2)))) + ((-1) * v0)))" using mult_1 that by (simp ; fail | simp only: mult_1; fail | simp add: mult_1; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q (not (bw q (not (bw q symconst_2))))) + ((-1) * v0)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q symconst_2) + ((-1) * v0)))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q symconst_2) - v0))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q symconst_2) - (bw q v0)))" using diff_right_eq_prec that by (simp ; fail | simp only: diff_right_eq_prec; fail | simp add: diff_right_eq_prec; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
