theory mult_assoc_4
    imports  arith_lemmas
begin
theorem mult_assoc_4_th:
"(bw t ((bw u ((bw p a) * (bw r b))) * (bw s c)))=(bw t ((bw p a) * (bw q ((bw r b) * (bw s c)))))" (is "?lhs = ?rhs")
if "((r + s) <= q)" and "((p + r) <= u)" and "(u > 0)" and "(p > 0)" and "(r > 0)" and "(t > 0)" and "(q > 0)" and "(s > 0)"
for q p s r u t :: nat and a c b :: int
proof -
    have "?lhs = (bw t ((bw s c) * (bw u ((bw p a) * (bw r b)))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw s c) * (bw u ((bw r b) * (bw p a)))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw s c) * ((bw r b) * (bw p a))))" using mul_full_prec that by (simp ; fail | simp only: mul_full_prec; fail | simp add: mul_full_prec; fail | blast; fail | metis)
    moreover have "... = (bw t (((bw s c) * (bw r b)) * (bw p a)))" using mult.assoc that by (simp ; fail | simp only: mult.assoc; fail | simp add: mult.assoc; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw q ((bw s c) * (bw r b))) * (bw p a)))" using mul_full_prec that by (simp ; fail | simp only: mul_full_prec; fail | simp add: mul_full_prec; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw q ((bw r b) * (bw s c))) * (bw p a)))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw p a) * (bw q ((bw r b) * (bw s c)))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
