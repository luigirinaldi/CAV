theory AddSub_1176_values_0
    imports  arith_lemmas
begin
theorem AddSub_1176_values_0_th:
"(bw k ((bw k var_a) + (bw k ((bw k 0) - (bw k var_b)))))=(bw k ((bw k var_a) - (bw k var_b)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_a var_b :: int
proof -
    have "?lhs = (bw k ((bw k ((bw k 0) - (bw k var_b))) + (bw k var_a)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k 0) + ((-1) * (bw k var_b)))) + (bw k var_a)))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (0 + ((-1) * (bw k var_b)))) + (bw k var_a)))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((-1) * (bw k var_b))) + (bw k var_a)))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) * (bw k var_b)) + (bw k var_a)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k var_a) + ((-1) * (bw k var_b))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k var_a) - (bw k var_b)))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
