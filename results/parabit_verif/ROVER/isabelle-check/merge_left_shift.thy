theory merge_left_shift
    imports  arith_lemmas
begin
theorem merge_left_shift_th:
"(bw r ((bw u ((bw p a) << (bw q b))) << (bw s c)))=(bw r ((bw p a) << (bw t ((bw q b) + (bw s c)))))" (is "?lhs = ?rhs")
if "(u >= r)" and "(t > s)" and "(t > q)" and "(r > 0)" and "(s > 0)" and "(u > 0)" and "(q > 0)" and "(t > 0)" and "(p > 0)"
for p r u s q t :: nat and c b a :: int
proof -
    have "?lhs = (bw r ((bw u ((bw p a) << (bw q b))) * (2 ^ nat ((bw s c)))))" by (simp add: shl_def)
    moreover have "... = (bw r (((bw p a) << (bw q b)) * (2 ^ nat ((bw s c)))))" using mul_remove_prec that by (simp ; fail | simp only: mul_remove_prec; fail | simp add: mul_remove_prec; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw p a) * (2 ^ nat ((bw q b)))) * (2 ^ nat ((bw s c)))))" by (simp add: shl_def)
    moreover have "... = (bw r ((bw p a) * ((2 ^ nat ((bw q b))) * (2 ^ nat ((bw s c))))))" using mult.assoc that by (simp ; fail | simp only: mult.assoc; fail | simp add: mult.assoc; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw p a) * (2 ^ nat (((bw q b) + (bw s c))))))" using bw_pow_sum that by (simp ; fail | simp only: bw_pow_sum; fail | simp add: bw_pow_sum; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw p a) * (2 ^ nat ((bw t ((bw q b) + (bw s c)))))))" using add_full_prec that by (simp ; fail | simp only: add_full_prec; fail | simp add: add_full_prec; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw p a) << (bw t ((bw q b) + (bw s c)))))" by (simp add: shl_def)
ultimately show ?thesis by argo
qed

end
