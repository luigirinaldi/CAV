theory mult_sum_same
    imports  arith_lemmas
begin
theorem mult_sum_same_th:
"(bw r ((bw s ((bw p a) * (bw q b))) + (bw q b)))=(bw r ((bw t ((bw p a) + (bw 1 1))) * (bw q b)))" (is "?lhs = ?rhs")
if "(t > p)" and "(t > 1)" and "(s >= (p + q))" and "(q > 0)" and "(p > 0)" and "(r > 0)" and "(s > 0)" and "(t > 0)" and "(1 > 0)"
for t r q s p :: nat and b a :: int
proof -
    have "?lhs = (bw r ((bw r (bw s ((bw p a) * (bw q b)))) + (bw q b)))" using that bw_def mod_prop_sum by (presburger ; fail | blast)
    moreover have "... = (bw r ((bw r (bw s ((bw p a) * (bw q b)))) + (1 * (bw q b))))" using mult_1 that by (simp ; fail | simp only: mult_1; fail | simp add: mult_1; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r (bw s ((bw p a) * (bw q b)))) + ((bw q b) * 1)))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw s ((bw p a) * (bw q b))) + ((bw q b) * 1)))" using that bw_def mod_prop_sum by (presburger ; fail | blast)
    moreover have "... = (bw r (((bw p a) * (bw q b)) + ((bw q b) * 1)))" using mul_full_prec that by (simp ; fail | simp only: mul_full_prec; fail | simp add: mul_full_prec; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw q b) * (bw p a)) + ((bw q b) * 1)))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw q b) * ((bw p a) + 1)))" using int_distrib that by (simp ; fail | simp only: int_distrib; fail | simp add: int_distrib; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw q b) * ((bw p a) + (bw 1 1))))" by (simp add: bw_def)
    moreover have "... = (bw r ((bw q b) * (bw t ((bw p a) + (bw 1 1)))))" using add_full_prec that by (simp ; fail | simp only: add_full_prec; fail | simp add: add_full_prec; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw t ((bw p a) + (bw 1 1))) * (bw q b)))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
