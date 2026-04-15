theory AndOrXor_1230_values_0
    imports  bitwise_lemmas
begin
theorem AndOrXor_1230_values_0_th:
"(bw k (and (bw k (xor (bw k var_notOp0) (bw k (not (bw k 0))))) (bw k (xor (bw k var_notOp1) (bw k (not (bw k 0)))))))=(bw k (xor (bw k (or (bw k var_notOp0) (bw k var_notOp1))) (bw k (not (bw k 0)))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_notOp0 var_notOp1 :: int
proof -
    have "?lhs = (bw k (and (bw k (xor (bw k var_notOp1) (bw k (not (bw k 0))))) (bw k (xor (bw k var_notOp0) (bw k (not (bw k 0)))))))" using and.commute that by (simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw k (and (bw k (xor (bw k var_notOp1) (bw k (-1)))) (bw k (xor (bw k var_notOp0) (bw k (not (bw k 0)))))))" using not_0_allones that by (simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw k (and (bw k (not (bw k var_notOp1))) (bw k (xor (bw k var_notOp0) (bw k (not (bw k 0)))))))" using xor_allones that by (simp only: xor_allones; fail | simp add: xor_allones; fail | blast; fail | metis)
    moreover have "... = (bw k (and (bw k (not (bw k var_notOp1))) (bw k (xor (bw k var_notOp0) (bw k (-1))))))" using not_0_allones that by (simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw k (and (bw k (not (bw k var_notOp1))) (bw k (not (bw k var_notOp0)))))" using xor_allones that by (simp only: xor_allones; fail | simp add: xor_allones; fail | blast; fail | metis)
    moreover have "... = (bw k (not (or (bw k var_notOp1) (bw k var_notOp0))))" using demorg_or that by (simp only: demorg_or; fail | simp add: demorg_or; fail | blast; fail | metis)
    moreover have "... = (bw k (not (or (bw k var_notOp0) (bw k var_notOp1))))" using or.commute that by (simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (bw k (not (bw k (or (bw k var_notOp0) (bw k var_notOp1)))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (bw k (bw k (or (bw k var_notOp0) (bw k var_notOp1))))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (bw k (not (bw k (not (bw k (bw k (or (bw k var_notOp0) (bw k var_notOp1))))))))))" using not_bw_not that by (simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw k (xor (bw k (not (bw k (not (bw k (bw k (or (bw k var_notOp0) (bw k var_notOp1)))))))) (bw k (-1))))" using xor_allones that by (simp only: xor_allones; fail | simp add: xor_allones; fail | blast; fail | metis)
    moreover have "... = (bw k (xor (bw k (bw k (or (bw k var_notOp0) (bw k var_notOp1)))) (bw k (-1))))" using not_bw_not that by (simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw k (xor (bw k (or (bw k var_notOp0) (bw k var_notOp1))) (bw k (-1))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (xor (bw k (or (bw k var_notOp0) (bw k var_notOp1))) (bw k (not (bw k 0)))))" using not_0_allones that by (simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
