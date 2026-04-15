theory AndOrXor_2052_values_0
    imports  bitwise_lemmas
begin
theorem AndOrXor_2052_values_0_th:
"(bw k (or (bw k (and (bw k var_x) (bw k C1))) (bw k C)))=(bw k (and (bw k (or (bw k var_x) (bw k C))) (bw k (or (bw k C) (bw k C1)))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_x C C1 :: int
proof -
    have "?lhs = (bw k (not (bw k (not (bw k (or (bw k (and (bw k var_x) (bw k C1))) (bw k C)))))))" using not_bw_not that by (simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw k (not (bw k (not (bw k (or (bw k (bw k (and (bw k var_x) (bw k C1)))) (bw k C)))))))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (bw k (not (or (bw k (bw k (and (bw k var_x) (bw k C1)))) (bw k C))))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (bw k (and (bw k (not (bw k (bw k (and (bw k var_x) (bw k C1)))))) (bw k (not (bw k C)))))))" using demorg_or that by (simp only: demorg_or; fail | simp add: demorg_or; fail | blast; fail | metis)
    moreover have "... = (bw k (not (and (bw k (not (bw k (bw k (and (bw k var_x) (bw k C1)))))) (bw k (not (bw k C))))))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (and (bw k (not (bw k C))) (bw k (not (bw k (bw k (and (bw k var_x) (bw k C1)))))))))" using and.commute that by (simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw k (not (and (bw k (not (bw k C))) (bw k (not (bw k (and (bw k var_x) (bw k C1))))))))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (and (bw k (not (bw k C))) (bw k (not (and (bw k var_x) (bw k C1)))))))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (and (bw k (not (bw k C))) (bw k (or (bw k (not (bw k var_x))) (bw k (not (bw k C1))))))))" using demorg_and that by (simp only: demorg_and; fail | simp add: demorg_and; fail | blast; fail | metis)
    moreover have "... = (bw k (not (and (bw k (not (bw k C))) (or (bw k (not (bw k var_x))) (bw k (not (bw k C1)))))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (or (and (bw k (not (bw k C))) (bw k (not (bw k var_x)))) (and (bw k (not (bw k C))) (bw k (not (bw k C1)))))))" using and_distrib that by (simp only: and_distrib; fail | simp add: and_distrib; fail | blast; fail | metis)
    moreover have "... = (bw k (not (or (bw k (and (bw k (not (bw k C))) (bw k (not (bw k var_x))))) (and (bw k (not (bw k C))) (bw k (not (bw k C1)))))))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (or (bw k (not (or (bw k C) (bw k var_x)))) (and (bw k (not (bw k C))) (bw k (not (bw k C1)))))))" using demorg_or that by (simp only: demorg_or; fail | simp add: demorg_or; fail | blast; fail | metis)
    moreover have "... = (bw k (not (or (bw k (not (or (bw k var_x) (bw k C)))) (and (bw k (not (bw k C))) (bw k (not (bw k C1)))))))" using or.commute that by (simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (bw k (not (or (bw k (not (bw k (or (bw k var_x) (bw k C))))) (and (bw k (not (bw k C))) (bw k (not (bw k C1)))))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (or (bw k (not (bw k (bw k (or (bw k var_x) (bw k C)))))) (and (bw k (not (bw k C))) (bw k (not (bw k C1)))))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (or (bw k (not (bw k (bw k (or (bw k var_x) (bw k C)))))) (bw k (and (bw k (not (bw k C))) (bw k (not (bw k C1))))))))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (or (bw k (not (bw k (bw k (or (bw k var_x) (bw k C)))))) (bw k (not (or (bw k C) (bw k C1)))))))" using demorg_or that by (simp only: demorg_or; fail | simp add: demorg_or; fail | blast; fail | metis)
    moreover have "... = (bw k (not (or (bw k (not (bw k (bw k (or (bw k var_x) (bw k C)))))) (bw k (not (bw k (or (bw k C) (bw k C1))))))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (or (bw k (not (bw k (bw k (or (bw k var_x) (bw k C)))))) (bw k (not (bw k (bw k (or (bw k C) (bw k C1)))))))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (bw k (or (bw k (not (bw k (bw k (or (bw k var_x) (bw k C)))))) (bw k (not (bw k (bw k (or (bw k C) (bw k C1))))))))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (bw k (not (and (bw k (bw k (or (bw k var_x) (bw k C)))) (bw k (bw k (or (bw k C) (bw k C1)))))))))" using demorg_and that by (simp only: demorg_and; fail | simp add: demorg_and; fail | blast; fail | metis)
    moreover have "... = (bw k (not (bw k (not (and (bw k (or (bw k var_x) (bw k C))) (bw k (bw k (or (bw k C) (bw k C1)))))))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (bw k (not (and (bw k (or (bw k var_x) (bw k C))) (bw k (or (bw k C) (bw k C1))))))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (not (bw k (not (bw k (and (bw k (or (bw k var_x) (bw k C))) (bw k (or (bw k C) (bw k C1)))))))))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (and (bw k (or (bw k var_x) (bw k C))) (bw k (or (bw k C) (bw k C1)))))" using not_bw_not that by (simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
