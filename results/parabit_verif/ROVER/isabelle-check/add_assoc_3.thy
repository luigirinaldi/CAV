theory add_assoc_3
    imports  arith_lemmas
begin
theorem add_assoc_3_th:
"(bw t ((bw u ((bw p a) + (bw r b))) + (bw s c)))=(bw t ((bw p a) + (bw q ((bw r b) + (bw s c)))))" (is "?lhs = ?rhs")
if "(q >= t)" and "(p < u)" and "(r < u)" and "(t > 0)" and "(q > 0)" and "(s > 0)" and "(p > 0)" and "(u > 0)" and "(r > 0)"
for q t u p r s :: nat and b c a :: int
proof -
    have "?lhs = (bw t (((bw p a) + (bw r b)) + (bw s c)))" using add_full_prec that by (simp ; fail | simp only: add_full_prec; fail | simp add: add_full_prec; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw p a) + ((bw r b) + (bw s c))))" using add.assoc that by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw p a) + (bw q ((bw r b) + (bw s c)))))" using add_remove_prec_right that by (simp ; fail | simp only: add_remove_prec_right; fail | simp add: add_remove_prec_right; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
