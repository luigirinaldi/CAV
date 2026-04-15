theory AndOrXor_2367_values_0
    imports  bitwise_lemmas
begin
theorem AndOrXor_2367_values_0_th:
"(bw k (or (bw k (or (bw k var_A) (bw k C1))) (bw k var_op1)))=(bw k (or (bw k (or (bw k var_A) (bw k var_op1))) (bw k C1)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and C1 var_A var_op1 :: int
proof -
    have "?lhs = (bw k (or (bw k (bw k (or (bw k var_A) (bw k C1)))) (bw k var_op1)))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (or (bw k (bw k (or (bw k var_A) (bw k C1)))) (bw k var_op1))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (or (bw k (or (bw k var_A) (bw k C1))) (bw k var_op1))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (or (bw k var_op1) (bw k (or (bw k var_A) (bw k C1))))" using or.commute that by (simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (or (bw k var_op1) (or (bw k var_A) (bw k C1)))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (or (or (bw k var_op1) (bw k var_A)) (bw k C1))" using or_assoc that by (simp only: or_assoc; fail | simp add: or_assoc; fail | blast; fail | metis)
    moreover have "... = (or (or (bw k var_A) (bw k var_op1)) (bw k C1))" using or.commute that by (simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (or (bw k (or (bw k var_A) (bw k var_op1))) (bw k C1))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (or (bw k (or (bw k var_A) (bw k var_op1))) (bw k C1)))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
