theory sub_to_neg
    imports  arith_lemmas
begin
theorem sub_to_neg_th:
"(bw r ((bw p a) - (bw q b)))=(bw r ((bw p a) + (bw r (- (bw q b)))))" (is "?lhs = ?rhs")
if "(q > 0)" and "(r > 0)" and "(p > 0)"
for q p r :: nat and a b :: int
proof -
    have "?lhs = (bw r ((bw p a) + ((-1) * (bw q b))))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw p a) + (- (bw q b))))" using Num.ring_1_class.mult_minus1 that by (simp ; fail | simp only: Num.ring_1_class.mult_minus1; fail | simp add: Num.ring_1_class.mult_minus1; fail | blast; fail | metis)
    moreover have "... = (bw r ((- (bw q b)) + (bw p a)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r (- (bw q b))) + (bw p a)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw p a) + (bw r (- (bw q b)))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
