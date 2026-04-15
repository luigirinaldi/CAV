theory AddSub_1560_values_0
    imports  arith_lemmas bitwise_lemmas mixed_lemmas
begin
theorem AddSub_1560_values_0_th:
"(bw k ((bw k (not (bw k 0))) - (bw k var_a)))=(bw k (xor (bw k var_a) (bw k (not (bw k 0)))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_a :: int
proof -
    have "?lhs = (bw k ((bw k (not (bw k 0))) + ((-1) * (bw k var_a))))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (not (bw k 0))) - (bw k var_a)))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (-1)) - (bw k var_a)))" using not_0_allones that by (simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw k ((or (bw k (not (bw k (not (bw k var_a))))) (bw k (-1))) - (bw k var_a)))" using or_allones that by (simp only: or_allones; fail | simp add: or_allones; fail | blast; fail | metis)
    moreover have "... = (bw k ((or (bw k (not (bw k (not (bw k var_a))))) (bw k (not (bw k 0)))) - (bw k var_a)))" using not_0_allones that by (simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw k ((or (bw k (not (bw k (not (bw k var_a))))) (bw k (not (bw k 0)))) - (and (bw k var_a) (bw k (-1)))))" using and_allones that by (simp only: and_allones; fail | simp add: and_allones; fail | blast; fail | metis)
    moreover have "... = (bw k ((or (bw k (not (bw k (not (bw k var_a))))) (bw k (not (bw k 0)))) - (and (bw k var_a) (bw k (not (bw k 0))))))" using not_0_allones that by (simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw k ((or (bw k (not (bw k (not (bw k var_a))))) (bw k (not (bw k 0)))) - (and (bw k (not (bw k (not (bw k var_a))))) (bw k (not (bw k 0))))))" using not_bw_not that by (simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw k (xor (bw k (not (bw k (not (bw k var_a))))) (bw k (not (bw k 0)))))" using xor_as_or_and that by (simp only: xor_as_or_and; fail | simp add: xor_as_or_and; fail | blast; fail | metis)
    moreover have "... = (bw k (xor (bw k var_a) (bw k (not (bw k 0)))))" using not_bw_not that by (simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
