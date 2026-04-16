theory move_sel_zero
    imports  arith_lemmas
begin
theorem move_sel_zero_th:
"(bw r ((bw p (sel (bw 1 b) (bw p 0) (bw p a))) * (bw q c)))=(bw r ((bw p a) * (bw q (sel (bw 1 b) (bw q 0) (bw q c)))))" (is "?lhs = ?rhs")
if "(p >= 1)" and "(q >= 1)" and "(p > 0)" and "(1 > 0)" and "(q > 0)" and "(r > 0)"
for p q r :: nat and c a b :: int
proof -
    have "?lhs = (bw r ((bw r (bw p (sel (bw 1 b) (bw p 0) (bw p a)))) * (bw q c)))" using that mod_prop_mul by (blast; fail | metis)
    moreover have "... = (bw r ((bw r (bw p (sel (bw 1 b) 0 (bw p a)))) * (bw q c)))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r (bw p ((0 * (bw 1 (bw 1 b))) + ((bw p a) * (bw 1 (not (bw 1 (bw 1 b)))))))) * (bw q c)))" by (simp add: sel_def)
    moreover have "... = (bw r ((bw r (bw p (0 + ((bw p a) * (bw 1 (not (bw 1 (bw 1 b)))))))) * (bw q c)))" using mult_0 that by (simp ; fail | simp only: mult_0; fail | simp add: mult_0; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r (bw p ((bw p a) * (bw 1 (not (bw 1 (bw 1 b))))))) * (bw q c)))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r (bw p ((bw p a) * (bw 1 (not (bw 1 b)))))) * (bw q c)))" using mod_eq that by (simp ; fail | simp only: mod_eq; fail | simp add: mod_eq; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r ((bw p a) * (bw 1 (not (bw 1 b))))) * (bw q c)))" using mul_by_bit_eq that by (simp ; fail | simp only: mul_by_bit_eq; fail | simp add: mul_by_bit_eq; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r ((bw p a) * (bw 1 (not (bw 1 (bw 1 b)))))) * (bw q c)))" using mod_eq that by (simp ; fail | simp only: mod_eq; fail | simp add: mod_eq; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw p a) * (bw 1 (not (bw 1 (bw 1 b))))) * (bw q c)))" using mul_eq_prec that by (simp ; fail | simp only: mul_eq_prec; fail | simp add: mul_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw p a) * ((bw 1 (not (bw 1 (bw 1 b)))) * (bw q c))))" using mult.assoc that by (simp ; fail | simp only: mult.assoc; fail | simp add: mult.assoc; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw p a) * ((bw q c) * (bw 1 (not (bw 1 (bw 1 b)))))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw p a) * ((bw q c) * (bw 1 (not (bw 1 b))))))" using mod_eq that by (simp ; fail | simp only: mod_eq; fail | simp add: mod_eq; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw p a) * (bw q ((bw q c) * (bw 1 (not (bw 1 b)))))))" using mul_by_bit_eq that by (simp ; fail | simp only: mul_by_bit_eq; fail | simp add: mul_by_bit_eq; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw p a) * (bw q ((bw q c) * (bw 1 (not (bw 1 (bw 1 b))))))))" using mod_eq that by (simp ; fail | simp only: mod_eq; fail | simp add: mod_eq; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw p a) * (bw q (0 + ((bw q c) * (bw 1 (not (bw 1 (bw 1 b)))))))))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw p a) * (bw q ((0 * (bw 1 (bw 1 b))) + ((bw q c) * (bw 1 (not (bw 1 (bw 1 b)))))))))" using mult_0 that by (simp ; fail | simp only: mult_0; fail | simp add: mult_0; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw p a) * (bw q (sel (bw 1 b) 0 (bw q c)))))" by (simp add: sel_def)
    moreover have "... = (bw r ((bw p a) * (bw q (sel (bw 1 b) (bw q 0) (bw q c)))))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
