theory left_shift_mult
    imports  arith_lemmas
begin
theorem left_shift_mult_th:
"(bw r ((bw t ((bw p a) * (bw q b))) << (bw u c)))=(bw r ((bw v ((bw p a) << (bw u c))) * (bw q b)))" (is "?lhs = ?rhs")
if "(t >= r)" and "(v >= r)" and "(r > 0)" and "(q > 0)" and "(t > 0)" and "(u > 0)" and "(p > 0)" and "(v > 0)"
for u p q t v r :: nat and c b a :: int
proof -
    have "?lhs = (bw r ((bw t ((bw p a) * (bw q b))) * (2 ^ nat ((bw u c)))))" by (simp add: shl_def)
    moreover have "... = (bw r (((bw p a) * (bw q b)) * (2 ^ nat ((bw u c)))))" using mul_remove_prec that by (simp ; fail | simp only: mul_remove_prec; fail | simp add: mul_remove_prec; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw q b) * (bw p a)) * (2 ^ nat ((bw u c)))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw q b) * ((bw p a) * (2 ^ nat ((bw u c))))))" using mult.assoc that by (simp ; fail | simp only: mult.assoc; fail | simp add: mult.assoc; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw q b) * ((bw p a) << (bw u c))))" by (simp add: shl_def)
    moreover have "... = (bw r (((bw p a) << (bw u c)) * (bw q b)))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw v ((bw p a) << (bw u c))) * (bw q b)))" using mul_remove_prec that by (simp ; fail | simp only: mul_remove_prec; fail | simp add: mul_remove_prec; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
