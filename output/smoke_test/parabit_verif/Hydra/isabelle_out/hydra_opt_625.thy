theory hydra_opt_625
    imports  bitwise_lemmas
begin
theorem hydra_opt_625_th:
"(bw q (and (bw q (-1)) (bw q newvar0)))=(bw q newvar0)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and newvar0 :: int
proof -
    have "?lhs = (and (bw q (-1)) (bw q newvar0))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (and (bw q newvar0) (bw q (-1)))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw q newvar0)" using and_allones that by (simp ; fail | simp only: and_allones; fail | simp add: and_allones; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
