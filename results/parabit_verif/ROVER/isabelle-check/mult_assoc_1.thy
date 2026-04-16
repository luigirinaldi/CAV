theory mult_assoc_1
    imports  arith_lemmas
begin
theorem mult_assoc_1_th:
"(bw t ((bw u ((bw p a) * (bw r b))) * (bw s c)))=(bw t ((bw p a) * (bw q ((bw r b) * (bw s c)))))" (is "?lhs = ?rhs")
if "(q >= t)" and "(u >= t)" and "(t > 0)" and "(s > 0)" and "(u > 0)" and "(q > 0)" and "(p > 0)" and "(r > 0)"
for u t s r p q :: nat and b a c :: int
proof -
    have "?lhs = (bw t (((bw p a) * (bw r b)) * (bw s c)))" using mul_remove_prec that by (simp ; fail | simp only: mul_remove_prec; fail | simp add: mul_remove_prec; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw p a) * ((bw r b) * (bw s c))))" using mult.assoc that by (simp ; fail | simp only: mult.assoc; fail | simp add: mult.assoc; fail | blast; fail | metis)
    moreover have "... = (bw t (((bw r b) * (bw s c)) * (bw p a)))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw q ((bw r b) * (bw s c))) * (bw p a)))" using mul_remove_prec that by (simp ; fail | simp only: mul_remove_prec; fail | simp add: mul_remove_prec; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw p a) * (bw q ((bw r b) * (bw s c)))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
