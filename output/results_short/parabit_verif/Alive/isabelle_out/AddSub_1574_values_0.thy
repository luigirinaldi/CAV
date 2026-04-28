theory AddSub_1574_values_0
    imports  arith_lemmas
begin
theorem AddSub_1574_values_0_th:
"(bw k ((bw k C) - (bw k ((bw k var_X) + (bw k C2)))))=(bw k ((bw k ((bw k C) - (bw k C2))) - (bw k var_X)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_X C2 C :: int
proof -
    have "?lhs = (bw k ((bw k C) - ((bw k var_X) + (bw k C2))))" using diff_right_eq_prec that by (simp ; fail | simp only: diff_right_eq_prec; fail | simp add: diff_right_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k C) + ((-1) * ((bw k var_X) + (bw k C2)))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k (C + ((-1) * ((bw k var_X) + (bw k C2)))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k (C + ((-1) * ((bw k C2) + (bw k var_X)))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k (C + (((-1) * (bw k C2)) + ((-1) * (bw k var_X)))))" using int_distrib that by (simp ; fail | simp only: int_distrib; fail | simp add: int_distrib; fail | blast; fail | metis)
    moreover have "... = (bw k ((C + ((-1) * (bw k C2))) + ((-1) * (bw k var_X))))" using add.assoc that by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw k ((C - (bw k C2)) + ((-1) * (bw k var_X))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (C - (bw k C2))) + ((-1) * (bw k var_X))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k C) - (bw k C2))) + ((-1) * (bw k var_X))))" using diff_left_eq_prec that by (simp ; fail | simp only: diff_left_eq_prec; fail | simp add: diff_left_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k C) - (bw k C2))) - (bw k var_X)))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
