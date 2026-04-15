theory AndOrXor_2417_values_0
    imports  bitwise_lemmas
begin
theorem AndOrXor_2417_values_0_th:
"(bw k (xor (bw k (or (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))) (bw k var_y))) (bw k (not (bw k 0)))))=(bw k (and (bw k var_nx) (bw k (xor (bw k var_y) (bw k (not (bw k 0)))))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_nx var_y :: int
proof -
    have "?lhs = (bw k (xor (bw k (bw k (or (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))) (bw k var_y)))) (bw k (not (bw k 0)))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (xor (bw k (not (bw k (not (bw k (bw k (or (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))) (bw k var_y)))))))) (bw k (not (bw k 0)))))" using not_bw_not that by (simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw k (xor (bw k (not (bw k (not (bw k (bw k (or (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))) (bw k var_y)))))))) (bw k (-1))))" using not_0_allones that by (simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw k (not (bw k (not (bw k (not (bw k (bw k (or (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))) (bw k var_y))))))))))" using xor_allones that by (simp only: xor_allones; fail | simp add: xor_allones; fail | blast; fail | metis)
    moreover have "... = (bw k (not (bw k (bw k (or (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))) (bw k var_y))))))" using not_bw_not that by (simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw k (not (bw k (or (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))) (bw k var_y)))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (or (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))) (bw k var_y))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (or (bw k (bw k (xor (bw k var_nx) (bw k (not (bw k 0)))))) (bw k var_y))))" using xor_remove that by (simp only: xor_remove; fail | simp add: xor_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (and (bw k (not (bw k (bw k (xor (bw k var_nx) (bw k (not (bw k 0)))))))) (bw k (not (bw k var_y)))))" using demorg_or that by (simp only: demorg_or; fail | simp add: demorg_or; fail | blast; fail | metis)
    moreover have "... = (bw k (and (bw k (not (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))))) (bw k (not (bw k var_y)))))" using xor_remove that by (simp only: xor_remove; fail | simp add: xor_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (and (bw k (not (bw k (xor (bw k var_nx) (bw k (-1)))))) (bw k (not (bw k var_y)))))" using not_0_allones that by (simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw k (and (bw k (not (bw k (not (bw k var_nx))))) (bw k (not (bw k var_y)))))" using xor_allones that by (simp only: xor_allones; fail | simp add: xor_allones; fail | blast; fail | metis)
    moreover have "... = (bw k (and (bw k var_nx) (bw k (not (bw k var_y)))))" using not_bw_not that by (simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw k (and (bw k var_nx) (bw k (xor (bw k var_y) (bw k (-1))))))" using xor_allones that by (simp only: xor_allones; fail | simp add: xor_allones; fail | blast; fail | metis)
    moreover have "... = (bw k (and (bw k var_nx) (bw k (xor (bw k var_y) (bw k (not (bw k 0)))))))" using not_0_allones that by (simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
