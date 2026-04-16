theory hydra_opt_1097
    imports  bitwise_lemmas arith_lemmas
begin
theorem hydra_opt_1097_th:
"(bw q (or (bw q 0) (bw q newvar0)))=(bw q newvar0)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and newvar0 :: int
proof -
    have "?lhs = (bw q (or (bw q (bw q 0)) (bw q newvar0)))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (or (bw q (bw q 0)) (bw q newvar0))" using or_remove that by (simp ; fail | simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (or (bw q 0) (bw q newvar0))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (or (bw q newvar0) (bw q 0))" using or.commute that by (simp ; fail | simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (or (bw q newvar0) 0)" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw q newvar0)" using or_zero that by (simp ; fail | simp only: or_zero; fail | simp add: or_zero; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
