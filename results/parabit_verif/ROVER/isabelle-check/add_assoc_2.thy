theory add_assoc_2
    imports  arith_lemmas
begin
theorem add_assoc_2_th:
"(bw t ((bw u ((bw p a) + (bw r b))) + (bw s c)))=(bw t ((bw p a) + (bw q ((bw r b) + (bw s c)))))" (is "?lhs = ?rhs")
if "(r < q)" and "(s < q)" and "(u >= t)" and "(t > 0)" and "(r > 0)" and "(q > 0)" and "(s > 0)" and "(u > 0)" and "(p > 0)"
for t p r u s q :: nat and b c a :: int
proof -
    have "?lhs = (bw t (((bw p a) + (bw r b)) + (bw s c)))" using add_remove_prec_left that by (simp ; fail | simp only: add_remove_prec_left; fail | simp add: add_remove_prec_left; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw p a) + ((bw r b) + (bw s c))))" using add.assoc that by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw p a) + (bw q ((bw r b) + (bw s c)))))" using add_full_prec that by (simp ; fail | simp only: add_full_prec; fail | simp add: add_full_prec; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
