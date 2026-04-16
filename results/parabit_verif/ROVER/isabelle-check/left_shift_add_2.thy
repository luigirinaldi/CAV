theory left_shift_add_2
    imports  arith_lemmas
begin
theorem left_shift_add_2_th:
"(bw r ((bw s ((bw p a) + (bw q b))) << (bw t c)))=(bw r ((bw u ((bw p a) << (bw t c))) + (bw u ((bw q b) << (bw t c)))))" (is "?lhs = ?rhs")
if "(u >= r)" and "(s > p)" and "(s > q)" and "(t > 0)" and "(r > 0)" and "(u > 0)" and "(p > 0)" and "(q > 0)" and "(s > 0)"
for u p r s t q :: nat and c a b :: int
proof -
    have "?lhs = (bw r ((bw s ((bw p a) + (bw q b))) * (2 ^ nat ((bw t c)))))" by (simp add: shl_def)
    moreover have "... = (bw r ((2 ^ nat ((bw t c))) * (bw s ((bw p a) + (bw q b)))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((2 ^ nat ((bw t c))) * (bw s ((bw q b) + (bw p a)))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((2 ^ nat ((bw t c))) * ((bw q b) + (bw p a))))" using add_full_prec that by (simp ; fail | simp only: add_full_prec; fail | simp add: add_full_prec; fail | blast; fail | metis)
    moreover have "... = (bw r (((2 ^ nat ((bw t c))) * (bw q b)) + ((2 ^ nat ((bw t c))) * (bw p a))))" using int_distrib that by (simp ; fail | simp only: int_distrib; fail | simp add: int_distrib; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw q b) * (2 ^ nat ((bw t c)))) + ((2 ^ nat ((bw t c))) * (bw p a))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw q b) << (bw t c)) + ((2 ^ nat ((bw t c))) * (bw p a))))" by (simp add: shl_def)
    moreover have "... = (bw r (((bw q b) << (bw t c)) + ((bw p a) * (2 ^ nat ((bw t c))))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw q b) << (bw t c)) + ((bw p a) << (bw t c))))" by (simp add: shl_def)
    moreover have "... = (bw r (((bw p a) << (bw t c)) + ((bw q b) << (bw t c))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw u ((bw p a) << (bw t c))) + ((bw q b) << (bw t c))))" using add_remove_prec_left that by (simp ; fail | simp only: add_remove_prec_left; fail | simp add: add_remove_prec_left; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw u ((bw p a) << (bw t c))) + (bw u ((bw q b) << (bw t c)))))" using add_remove_prec_right that by (simp ; fail | simp only: add_remove_prec_right; fail | simp add: add_remove_prec_right; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
