theory AndOrXor_1241_values_0
    imports  bitwise_lemmas
begin
theorem AndOrXor_1241_values_0_th:
"(bw k (and (bw k (or (bw k var_A) (bw k var_B))) (bw k (xor (bw k (and (bw k var_A) (bw k var_B))) (bw k (not (bw k 0)))))))=(bw k (xor (bw k var_A) (bw k var_B)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_B var_A :: int
proof -
    have "?lhs = (and (bw k (or (bw k var_A) (bw k var_B))) (bw k (xor (bw k (and (bw k var_A) (bw k var_B))) (bw k (not (bw k 0))))))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (and (bw k (or (bw k var_A) (bw k var_B))) (bw k (xor (bw k (bw k (and (bw k var_A) (bw k var_B)))) (bw k (not (bw k 0))))))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (and (bw k (or (bw k var_A) (bw k var_B))) (bw k (xor (bw k (not (bw k (not (bw k (bw k (and (bw k var_A) (bw k var_B)))))))) (bw k (not (bw k 0))))))" using not_bw_not that by (simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (and (bw k (or (bw k var_A) (bw k var_B))) (bw k (xor (bw k (not (bw k (not (bw k (bw k (and (bw k var_A) (bw k var_B)))))))) (bw k (-1)))))" using not_0_allones that by (simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (and (bw k (or (bw k var_A) (bw k var_B))) (bw k (not (bw k (not (bw k (not (bw k (bw k (and (bw k var_A) (bw k var_B)))))))))))" using xor_allones that by (simp only: xor_allones; fail | simp add: xor_allones; fail | blast; fail | metis)
    moreover have "... = (and (bw k (or (bw k var_A) (bw k var_B))) (bw k (not (bw k (bw k (and (bw k var_A) (bw k var_B)))))))" using not_bw_not that by (simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (and (bw k (or (bw k var_A) (bw k var_B))) (bw k (not (bw k (and (bw k var_A) (bw k var_B))))))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (and (bw k (or (bw k var_A) (bw k var_B))) (bw k (not (and (bw k var_A) (bw k var_B)))))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (and (bw k (or (bw k var_A) (bw k var_B))) (bw k (or (bw k (not (bw k var_A))) (bw k (not (bw k var_B))))))" using demorg_and that by (simp only: demorg_and; fail | simp add: demorg_and; fail | blast; fail | metis)
    moreover have "... = (and (bw k (or (bw k var_A) (bw k var_B))) (bw k (or (bw k (not (bw k var_B))) (bw k (not (bw k var_A))))))" using or.commute that by (simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (and (bw k (or (bw k var_A) (bw k var_B))) (or (bw k (not (bw k var_B))) (bw k (not (bw k var_A)))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (or (and (bw k (or (bw k var_A) (bw k var_B))) (bw k (not (bw k var_B)))) (and (bw k (or (bw k var_A) (bw k var_B))) (bw k (not (bw k var_A)))))" using and_distrib that by (simp only: and_distrib; fail | simp add: and_distrib; fail | blast; fail | metis)
    moreover have "... = (or (and (bw k (or (bw k var_A) (bw k var_B))) (bw k (not (bw k var_A)))) (and (bw k (or (bw k var_A) (bw k var_B))) (bw k (not (bw k var_B)))))" using or.commute that by (simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (and (bw k (or (bw k var_A) (bw k var_B))) (or (bw k (not (bw k var_A))) (bw k (not (bw k var_B)))))" using and_distrib that by (simp only: and_distrib; fail | simp add: and_distrib; fail | blast; fail | metis)
    moreover have "... = (and (or (bw k var_A) (bw k var_B)) (or (bw k (not (bw k var_A))) (bw k (not (bw k var_B)))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (xor (bw k var_A) (bw k var_B))" using xor_and_or that by (simp only: xor_and_or; fail | simp add: xor_and_or; fail | blast; fail | metis)
    moreover have "... = (bw k (xor (bw k var_A) (bw k var_B)))" using xor_remove that by (simp only: xor_remove; fail | simp add: xor_remove; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
