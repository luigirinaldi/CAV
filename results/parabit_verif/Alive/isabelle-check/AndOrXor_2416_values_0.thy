theory AndOrXor_2416_values_0
    imports  bitwise_lemmas
begin
theorem AndOrXor_2416_values_0_th:
"(bw k (xor (bw k (and (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))) (bw k var_y))) (bw k (not (bw k 0)))))=(bw k (or (bw k var_nx) (bw k (xor (bw k var_y) (bw k (not (bw k 0)))))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_y var_nx :: int
proof -
    have "?lhs = (bw k (xor (bw k (bw k (and (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))) (bw k var_y)))) (bw k (not (bw k 0)))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (xor (bw k (not (bw k (not (bw k (bw k (and (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))) (bw k var_y)))))))) (bw k (not (bw k 0)))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw k (xor (bw k (not (bw k (not (bw k (bw k (and (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))) (bw k var_y)))))))) (bw k (-1))))" using not_0_allones that by (simp ; fail | simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw k (not (bw k (not (bw k (not (bw k (bw k (and (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))) (bw k var_y))))))))))" using xor_allones that by (simp ; fail | simp only: xor_allones; fail | simp add: xor_allones; fail | blast; fail | metis)
    moreover have "... = (bw k (not (bw k (bw k (and (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))) (bw k var_y))))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw k (not (bw k (and (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))) (bw k var_y)))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (and (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))) (bw k var_y))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (and (bw k (bw k (xor (bw k var_nx) (bw k (not (bw k 0)))))) (bw k var_y))))" using xor_remove that by (simp ; fail | simp only: xor_remove; fail | simp add: xor_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (or (bw k (not (bw k (bw k (xor (bw k var_nx) (bw k (not (bw k 0)))))))) (bw k (not (bw k var_y)))))" using demorg_and that by (simp ; fail | simp only: demorg_and; fail | simp add: demorg_and; fail | blast; fail | metis)
    moreover have "... = (bw k (or (bw k (not (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))))) (bw k (not (bw k var_y)))))" using xor_remove that by (simp ; fail | simp only: xor_remove; fail | simp add: xor_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (or (bw k (not (bw k (xor (bw k var_nx) (bw k (-1)))))) (bw k (not (bw k var_y)))))" using not_0_allones that by (simp ; fail | simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw k (or (bw k (not (bw k (not (bw k var_nx))))) (bw k (not (bw k var_y)))))" using xor_allones that by (simp ; fail | simp only: xor_allones; fail | simp add: xor_allones; fail | blast; fail | metis)
    moreover have "... = (bw k (or (bw k var_nx) (bw k (not (bw k var_y)))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw k (or (bw k var_nx) (bw k (xor (bw k var_y) (bw k (-1))))))" using xor_allones that by (simp ; fail | simp only: xor_allones; fail | simp add: xor_allones; fail | blast; fail | metis)
    moreover have "... = (bw k (or (bw k var_nx) (bw k (xor (bw k var_y) (bw k (not (bw k 0)))))))" using not_0_allones that by (simp ; fail | simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
