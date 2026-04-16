theory mul_one
    imports  arith_lemmas
begin
theorem mul_one_th:
"(bw p ((bw p a) * (bw q 1)))=(bw p a)" (is "?lhs = ?rhs")
if "(p > 0)" and "(q > 0)"
for p q :: nat and a :: int
proof -
    have "?lhs = (bw p ((bw q 1) * (bw p a)))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw p (1 * (bw p a)))" using bw_1 that by (simp ; fail | simp only: bw_1; fail | simp add: bw_1; fail | blast; fail | metis)
    moreover have "... = (bw p (bw p a))" using mult_1 that by (simp ; fail | simp only: mult_1; fail | simp add: mult_1; fail | blast; fail | metis)
    moreover have "... = (bw p a)" using mod_eq that by (simp ; fail | simp only: mod_eq; fail | simp add: mod_eq; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
