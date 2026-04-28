theory hydra_opt_1003
    imports  bitwise_lemmas
begin
theorem hydra_opt_1003_th:
"(bw r (or (bw r (and (bw r symconst_2) (bw r v0))) (bw r (and (bw r v0) (bw r symconst_1)))))=(bw r (and (bw r v0) (bw r (or (bw r symconst_2) (bw r symconst_1)))))" (is "?lhs = ?rhs")
if "(r > 0)"
for r :: nat and symconst_2 symconst_1 v0 :: int
proof -
    have "?lhs = (bw r (or (and (bw r symconst_2) (bw r v0)) (bw r (and (bw r v0) (bw r symconst_1)))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw r (or (and (bw r v0) (bw r symconst_2)) (bw r (and (bw r v0) (bw r symconst_1)))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw r (or (and (bw r v0) (bw r symconst_2)) (and (bw r v0) (bw r symconst_1))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw r (and (bw r v0) (or (bw r symconst_2) (bw r symconst_1))))" using and_distrib that by (simp ; fail | simp only: and_distrib; fail | simp add: and_distrib; fail | blast; fail | metis)
    moreover have "... = (bw r (and (bw r v0) (bw r (or (bw r symconst_2) (bw r symconst_1)))))" using or_remove that by (simp ; fail | simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
