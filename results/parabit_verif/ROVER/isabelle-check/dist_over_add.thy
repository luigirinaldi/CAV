theory dist_over_add
    imports  arith_lemmas
begin
theorem dist_over_add_th:
"(bw r ((bw p a) * (bw q ((bw s b) + (bw t c)))))=(bw r ((bw u ((bw p a) * (bw s b))) + (bw v ((bw p a) * (bw t c)))))" (is "?lhs = ?rhs")
if "(q >= r)" and "(u >= r)" and "(v >= r)" and "(r > 0)" and "(t > 0)" and "(q > 0)" and "(v > 0)" and "(s > 0)" and "(u > 0)" and "(p > 0)"
for s u p t q r v :: nat and b c a :: int
proof -
    have "?lhs = (bw r ((bw q ((bw s b) + (bw t c))) * (bw p a)))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw s b) + (bw t c)) * (bw p a)))" using mul_remove_prec that by (simp ; fail | simp only: mul_remove_prec; fail | simp add: mul_remove_prec; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw p a) * ((bw s b) + (bw t c))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw p a) * (bw s b)) + ((bw p a) * (bw t c))))" using int_distrib that by (simp ; fail | simp only: int_distrib; fail | simp add: int_distrib; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw u ((bw p a) * (bw s b))) + ((bw p a) * (bw t c))))" using add_remove_prec_left that by (simp ; fail | simp only: add_remove_prec_left; fail | simp add: add_remove_prec_left; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw u ((bw p a) * (bw s b))) + (bw v ((bw p a) * (bw t c)))))" using add_remove_prec_right that by (simp ; fail | simp only: add_remove_prec_right; fail | simp add: add_remove_prec_right; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
