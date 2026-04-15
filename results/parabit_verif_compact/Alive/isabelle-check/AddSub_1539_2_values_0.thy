theory AddSub_1539_2_values_0
    imports  arith_lemmas
begin
theorem AddSub_1539_2_values_0_th:
"(bw k ((bw k var_x) - (bw k C)))=(bw k ((bw k var_x) + (bw k (- (bw k C)))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and C var_x :: int
proof -
    have "?lhs = (bw k ((bw k var_x) + ((-1) * (bw k C))))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k var_x) + (- (bw k C))))" using Num.ring_1_class.mult_minus1 that by (simp only: Num.ring_1_class.mult_minus1; fail | simp add: Num.ring_1_class.mult_minus1; fail | blast; fail | metis)
    moreover have "... = (bw k ((- (bw k C)) + (bw k var_x)))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (- (bw k C))) + (bw k var_x)))" using add_eq_prec that by (simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k var_x) + (bw k (- (bw k C)))))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
