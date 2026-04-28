theory AddSub_1614_values_0
    imports  arith_lemmas bitwise_lemmas
begin
theorem AddSub_1614_values_0_th:
"(bw k ((bw k var_X) - (bw k ((bw k var_X) + (bw k var_Y)))))=(bw k ((bw k 0) - (bw k var_Y)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_X var_Y :: int
proof -
    have "?lhs = (bw k ((bw k var_X) - (bw k ((bw k var_Y) + (bw k var_X)))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k var_X) - (bw k ((bw k (not (bw k (not (bw k var_Y))))) + (bw k var_X)))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k var_X) - (bw k ((not (bw k (not (bw k var_Y)))) + (bw k var_X)))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k var_X) - ((not (bw k (not (bw k var_Y)))) + (bw k var_X))))" using diff_right_eq_prec that by (simp ; fail | simp only: diff_right_eq_prec; fail | simp add: diff_right_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k (var_X - ((not (bw k (not (bw k var_Y)))) + (bw k var_X))))" using diff_left_eq_prec that by (simp ; fail | simp only: diff_left_eq_prec; fail | simp add: diff_left_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k (var_X + ((-1) * ((not (bw k (not (bw k var_Y)))) + (bw k var_X)))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) * ((not (bw k (not (bw k var_Y)))) + (bw k var_X))) + var_X))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((-1) * ((not (bw k (not (bw k var_Y)))) + (bw k var_X)))) + var_X))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (((not (bw k (not (bw k var_Y)))) + (bw k var_X)) * (-1))) + var_X))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k ((not (bw k (not (bw k var_Y)))) + (bw k var_X))) * (-1))) + var_X))" using mul_eq_prec that by (simp ; fail | simp only: mul_eq_prec; fail | simp add: mul_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k ((bw k (not (bw k (not (bw k var_Y))))) + (bw k var_X))) * (-1))) + var_X))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k ((bw k var_Y) + (bw k var_X))) * (-1))) + var_X))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k ((bw k var_X) + (bw k var_Y))) * (-1))) + var_X))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (((bw k var_X) + (bw k var_Y)) * (-1))) + var_X))" using mul_eq_prec that by (simp ; fail | simp only: mul_eq_prec; fail | simp add: mul_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((-1) * ((bw k var_X) + (bw k var_Y)))) + var_X))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((-1) * ((bw k var_Y) + (bw k var_X)))) + var_X))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (((-1) * (bw k var_Y)) + ((-1) * (bw k var_X)))) + var_X))" using int_distrib that by (simp ; fail | simp only: int_distrib; fail | simp add: int_distrib; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((0 + ((-1) * (bw k var_Y))) + ((-1) * (bw k var_X)))) + var_X))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (((bw k 0) + ((-1) * (bw k var_Y))) + ((-1) * (bw k var_X)))) + var_X))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (((bw k 0) - (bw k var_Y)) + ((-1) * (bw k var_X)))) + var_X))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (((bw k 0) - (bw k var_Y)) - (bw k var_X))) + var_X))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (((bw k 0) - (bw k var_Y)) - (bw k (bw k var_X)))) + var_X))" using that mod_prop_sub_right by (blast; fail | metis)
    moreover have "... = (bw k ((((bw k 0) - (bw k var_Y)) - (bw k (bw k var_X))) + var_X))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((((bw k 0) - (bw k var_Y)) - (bw k var_X)) + var_X))" using mod_eq that by (simp ; fail | simp only: mod_eq; fail | simp add: mod_eq; fail | blast; fail | metis)
    moreover have "... = (bw k ((((bw k 0) - (bw k var_Y)) + ((-1) * (bw k var_X))) + var_X))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k (((bw k 0) - (bw k var_Y)) + (((-1) * (bw k var_X)) + var_X)))" using add.assoc that by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw k ((((-1) * (bw k var_X)) + var_X) + ((bw k 0) - (bw k var_Y))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (((-1) * (bw k var_X)) + var_X)) + ((bw k 0) - (bw k var_Y))))" using that bw_def mod_prop_sum by (presburger ; fail | blast)
    moreover have "... = (bw k ((bw k (var_X + ((-1) * (bw k var_X)))) + ((bw k 0) - (bw k var_Y))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k var_X) + ((-1) * (bw k var_X)))) + ((bw k 0) - (bw k var_Y))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k var_X) - (bw k var_X))) + ((bw k 0) - (bw k var_Y))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k 0) + ((bw k 0) - (bw k var_Y))))" using diff_self that by (simp ; fail | simp only: diff_self; fail | simp add: diff_self; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k 0) + ((bw k 0) + ((-1) * (bw k var_Y)))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k 0) + (0 + ((-1) * (bw k var_Y)))))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k 0) + ((-1) * (bw k var_Y))))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k 0) - (bw k var_Y)))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
