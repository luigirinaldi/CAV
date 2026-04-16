theory AndOrXor_1346b_values_0
    imports  bitwise_lemmas arith_lemmas
begin
theorem AndOrXor_1346b_values_0_th:
"(bw (k + k) (and (bw (k + k) (bw k var_x)) (bw (k + k) (bw k var_y))))=(bw (k + k) (bw k (and (bw k var_x) (bw k var_y))))" (is "?lhs = ?rhs")
if "((k + k) > 0)" and "(k > 0)"
for k :: nat and var_y var_x :: int
proof -
    have "?lhs = (bw (k + k) (and (bw k var_x) (bw (k + k) (bw k var_y))))" using that mod_prop_and by (blast; fail | metis)
    moreover have "... = (bw (k + k) (and (bw (k + k) (bw k var_y)) (bw k var_x)))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw (k + k) (and (bw k var_y) (bw k var_x)))" using that mod_prop_and by (blast; fail | metis)
    moreover have "... = (bw (k + k) (and (bw k var_x) (bw k var_y)))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw (k + k) (bw k (and (bw k var_x) (bw k var_y))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
