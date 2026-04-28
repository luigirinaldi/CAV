theory AndOrXor_1280_values_0
    imports  bitwise_lemmas
begin
theorem AndOrXor_1280_values_0_th:
"(bw k (and (bw k (or (bw k (xor (bw k var_A) (bw k (not (bw k 0))))) (bw k var_B))) (bw k var_A)))=(bw k (and (bw k var_A) (bw k var_B)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_A var_B :: int
proof -
    have "?lhs = (and (bw k (or (bw k (xor (bw k var_A) (bw k (not (bw k 0))))) (bw k var_B))) (bw k var_A))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (and (bw k var_A) (bw k (or (bw k (xor (bw k var_A) (bw k (not (bw k 0))))) (bw k var_B))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (and (bw k var_A) (or (bw k (xor (bw k var_A) (bw k (not (bw k 0))))) (bw k var_B)))" using or_remove that by (simp ; fail | simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (and (bw k var_A) (or (bw k var_B) (bw k (xor (bw k var_A) (bw k (not (bw k 0)))))))" using or.commute that by (simp ; fail | simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (or (and (bw k var_A) (bw k var_B)) (and (bw k var_A) (bw k (xor (bw k var_A) (bw k (not (bw k 0)))))))" using and_distrib that by (simp ; fail | simp only: and_distrib; fail | simp add: and_distrib; fail | blast; fail | metis)
    moreover have "... = (or (and (bw k var_A) (bw k var_B)) (and (bw k var_A) (bw k (xor (bw k var_A) (bw k (-1))))))" using not_0_allones that by (simp ; fail | simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (or (and (bw k var_A) (bw k var_B)) (and (bw k var_A) (bw k (not (bw k var_A)))))" using xor_allones that by (simp ; fail | simp only: xor_allones; fail | simp add: xor_allones; fail | blast; fail | metis)
    moreover have "... = (or (and (bw k var_A) (bw k var_B)) 0)" using and_not_self that by (simp ; fail | simp only: and_not_self; fail | simp add: and_not_self; fail | blast; fail | metis)
    moreover have "... = (and (bw k var_A) (bw k var_B))" using or_zero that by (simp ; fail | simp only: or_zero; fail | simp add: or_zero; fail | blast; fail | metis)
    moreover have "... = (bw k (and (bw k var_A) (bw k var_B)))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
