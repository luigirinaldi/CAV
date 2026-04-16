theory sum_same
    imports  arith_lemmas
begin
theorem sum_same_th:
"(bw q ((bw p a) + (bw p a)))=(bw q ((bw 2 2) * (bw p a)))" (is "?lhs = ?rhs")
if "(q > 0)" and "(2 > 0)" and "(p > 0)"
for p q :: nat and a :: int
proof -
    have "?lhs = (bw q (2 * (bw p a)))" using mult_2 that by (simp ; fail | simp only: mult_2; fail | simp add: mult_2; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw 2 2) * (bw p a)))" by (simp add: bw_def)
ultimately show ?thesis by argo
qed

end
