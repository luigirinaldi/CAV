theory add_zero
    imports  arith_lemmas
begin
theorem add_zero_th:
"(bw p ((bw p a) + (bw q 0)))=(bw p a)" (is "?lhs = ?rhs")
if "(p > 0)" and "(q > 0)"
for p q :: nat and a :: int
proof -
    have "?lhs = (bw p ((bw q 0) + (bw p a)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw p (0 + (bw p a)))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw p (bw p a))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw p a)" using mod_eq that by (simp ; fail | simp only: mod_eq; fail | simp add: mod_eq; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
