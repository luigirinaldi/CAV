theory muldivrem_152_values_0
    imports  arith_lemmas
begin
theorem muldivrem_152_values_0_th:
"(bw k ((bw k var_x) * (bw k (not (bw k 0)))))=(bw k ((bw k 0) - (bw k var_x)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_x :: int
proof -
    have "?lhs = (bw k ((bw k (not (bw k 0))) * (bw k var_x)))" using mult.commute that by (simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((not (bw k 0)) * (bw k var_x)))" using mul_eq_prec that by (simp only: mul_eq_prec; fail | simp add: mul_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((not 0) * (bw k var_x)))" using bw_0 that by (simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((-1) * (bw k var_x)))" by (simp add: bw_def)
    moreover have "... = (bw k (0 + ((-1) * (bw k var_x))))" using add_0 that by (simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k 0) + ((-1) * (bw k var_x))))" using bw_0 that by (simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k 0) - (bw k var_x)))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
