theory AddSub_1165_values_0
    imports  arith_lemmas
begin
theorem AddSub_1165_values_0_th:
"(bw k ((bw k ((bw k 0) - (bw k var_a))) + (bw k ((bw k 0) - (bw k var_b)))))=(bw k ((bw k 0) - (bw k ((bw k var_a) + (bw k var_b)))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_b var_a :: int
proof -
    have "?lhs = (bw k (((bw k 0) - (bw k var_a)) + (bw k ((bw k 0) - (bw k var_b)))))" using add_eq_prec that by (simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k 0) - (bw k var_b))) + ((bw k 0) - (bw k var_a))))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k (((bw k 0) - (bw k var_b)) + ((bw k 0) - (bw k var_a))))" using add_eq_prec that by (simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k (((bw k 0) + ((-1) * (bw k var_b))) + ((bw k 0) - (bw k var_a))))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((0 + ((-1) * (bw k var_b))) + ((bw k 0) - (bw k var_a))))" using bw_0 that by (simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) * (bw k var_b)) + ((bw k 0) - (bw k var_a))))" using add_0 that by (simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) * (bw k var_b)) + ((bw k 0) + ((-1) * (bw k var_a)))))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) * (bw k var_b)) + (0 + ((-1) * (bw k var_a)))))" using bw_0 that by (simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) * (bw k var_b)) + ((-1) * (bw k var_a))))" using add_0 that by (simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((-1) * ((bw k var_b) + (bw k var_a))))" using int_distrib that by (simp only: int_distrib; fail | simp add: int_distrib; fail | blast; fail | metis)
    moreover have "... = (bw k ((-1) * ((bw k var_a) + (bw k var_b))))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k (0 + ((-1) * ((bw k var_a) + (bw k var_b)))))" using add_0 that by (simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k 0) + ((-1) * ((bw k var_a) + (bw k var_b)))))" using bw_0 that by (simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (bw k 0)) + ((-1) * ((bw k var_a) + (bw k var_b)))))" using bw_0 that by (simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k 0) + ((-1) * ((bw k var_a) + (bw k var_b)))))" using bw_0 that by (simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k (0 + ((-1) * ((bw k var_a) + (bw k var_b)))))" using bw_0 that by (simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((-1) * ((bw k var_a) + (bw k var_b))))" using add_0 that by (simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw k (((bw k var_a) + (bw k var_b)) * (-1)))" using mult.commute that by (simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k var_a) + (bw k var_b))) * (-1)))" using mul_eq_prec that by (simp only: mul_eq_prec; fail | simp add: mul_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((-1) * (bw k ((bw k var_a) + (bw k var_b)))))" using mult.commute that by (simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw k (0 + ((-1) * (bw k ((bw k var_a) + (bw k var_b))))))" using add_0 that by (simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k 0) + ((-1) * (bw k ((bw k var_a) + (bw k var_b))))))" using bw_0 that by (simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (bw k 0)) + ((-1) * (bw k ((bw k var_a) + (bw k var_b))))))" using bw_0 that by (simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (bw k 0)) + (0 + ((-1) * (bw k ((bw k var_a) + (bw k var_b)))))))" using add_0 that by (simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (bw k 0)) + ((bw k 0) + ((-1) * (bw k ((bw k var_a) + (bw k var_b)))))))" using bw_0 that by (simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (bw k 0)) + ((bw k 0) - (bw k ((bw k var_a) + (bw k var_b))))))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k 0) + ((bw k 0) - (bw k ((bw k var_a) + (bw k var_b))))))" using bw_0 that by (simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k 0) + ((bw k 0) + ((-1) * (bw k ((bw k var_a) + (bw k var_b)))))))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k 0) + (0 + ((-1) * (bw k ((bw k var_a) + (bw k var_b)))))))" using bw_0 that by (simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k 0) + ((-1) * (bw k ((bw k var_a) + (bw k var_b))))))" using add_0 that by (simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k 0) - (bw k ((bw k var_a) + (bw k var_b)))))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (bw k 0)) - (bw k ((bw k var_a) + (bw k var_b)))))" using bw_0 that by (simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k 0) - (bw k ((bw k var_a) + (bw k var_b)))))" using diff_left_eq_prec that by (simp only: diff_left_eq_prec; fail | simp add: diff_left_eq_prec; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
