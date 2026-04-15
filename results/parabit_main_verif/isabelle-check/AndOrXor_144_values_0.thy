theory AndOrXor_144_values_0
    imports  bitwise_lemmas
begin
theorem AndOrXor_144_values_0_th:
"(bw k (and (bw k (or (bw k var_X) (bw k C1))) (bw k C2)))=(bw k (and (bw k (or (bw k var_X) (bw k (and (bw k C1) (bw k C2))))) (bw k C2)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_X C1 C2 :: int
proof -
    have "?lhs = (and (bw k (or (bw k var_X) (bw k C1))) (bw k C2))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (and (bw k C2) (bw k (or (bw k var_X) (bw k C1))))" using and.commute that by (simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (and (bw k C2) (or (bw k var_X) (bw k C1)))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (or (and (bw k C2) (bw k var_X)) (and (bw k C2) (bw k C1)))" using and_distrib that by (simp only: and_distrib; fail | simp add: and_distrib; fail | blast; fail | metis)
    moreover have "... = (or (and (bw k C2) (bw k var_X)) (and (bw k C1) (bw k C2)))" using and.commute that by (simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (or (and (bw k C2) (bw k var_X)) (bw k (and (bw k C1) (bw k C2))))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (or (bw k (and (bw k C1) (bw k C2))) (and (bw k C2) (bw k var_X)))" using or.commute that by (simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (or (and (bw k C1) (bw k C2)) (and (bw k C2) (bw k var_X)))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (or (and (bw k C1) (and (bw k C2) (bw k C2))) (and (bw k C2) (bw k var_X)))" using and_self that by (simp only: and_self; fail | simp add: and_self; fail | blast; fail | metis)
    moreover have "... = (or (and (and (bw k C1) (bw k C2)) (bw k C2)) (and (bw k C2) (bw k var_X)))" using and_assoc that by (simp only: and_assoc; fail | simp add: and_assoc; fail | blast; fail | metis)
    moreover have "... = (or (and (bw k (and (bw k C1) (bw k C2))) (bw k C2)) (and (bw k C2) (bw k var_X)))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (or (and (bw k C2) (bw k (and (bw k C1) (bw k C2)))) (and (bw k C2) (bw k var_X)))" using and.commute that by (simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (or (and (bw k C2) (bw k var_X)) (and (bw k C2) (bw k (and (bw k C1) (bw k C2)))))" using or.commute that by (simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (and (bw k C2) (or (bw k var_X) (bw k (and (bw k C1) (bw k C2)))))" using and_distrib that by (simp only: and_distrib; fail | simp add: and_distrib; fail | blast; fail | metis)
    moreover have "... = (and (bw k C2) (or (bw k var_X) (bw k (bw k (and (bw k C1) (bw k C2))))))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (and (bw k C2) (bw k (or (bw k var_X) (bw k (bw k (and (bw k C1) (bw k C2)))))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (and (bw k C2) (bw k (or (bw k var_X) (bw k (and (bw k C1) (bw k C2))))))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (and (bw k (or (bw k var_X) (bw k (and (bw k C1) (bw k C2))))) (bw k C2))" using and.commute that by (simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw k (and (bw k (or (bw k var_X) (bw k (and (bw k C1) (bw k C2))))) (bw k C2)))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
