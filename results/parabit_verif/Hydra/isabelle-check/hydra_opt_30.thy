theory hydra_opt_30
    imports  arith_lemmas mixed_lemmas bitwise_lemmas
begin
theorem hydra_opt_30_th:
"(bw q ((bw q 1) + (bw q (xor (bw q (-1)) (bw q v0)))))=(bw q ((bw q (-1)) * (bw q v0)))" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and v0 :: int
proof -
    have "?lhs = (bw q ((bw q (xor (bw q (-1)) (bw q v0))) + (bw q 1)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q (bw q (xor (bw q (-1)) (bw q v0)))) + (bw q 1)))" using xor_remove that by (simp ; fail | simp only: xor_remove; fail | simp add: xor_remove; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q (not (bw q (not (bw q (bw q (xor (bw q (-1)) (bw q v0)))))))) + (bw q 1)))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q (not (bw q (not (bw q (bw q (xor (bw q (-1)) (bw q v0)))))))) + (bw q (bw q 1))))" using bw_1 that by (simp ; fail | simp only: bw_1; fail | simp add: bw_1; fail | blast; fail | metis)
    moreover have "... = (bw q ((not (bw q (not (bw q (bw q (xor (bw q (-1)) (bw q v0))))))) + (bw q (bw q 1))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((not (bw q (not (bw q (bw q (xor (bw q (-1)) (bw q v0))))))) + (bw q 1)))" using bw_1 that by (simp ; fail | simp only: bw_1; fail | simp add: bw_1; fail | blast; fail | metis)
    moreover have "... = (bw q ((not (bw q (not (bw q (bw q (xor (bw q (-1)) (bw q v0))))))) + 1))" using bw_1 that by (simp ; fail | simp only: bw_1; fail | simp add: bw_1; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not (bw q (bw q (xor (bw q (-1)) (bw q v0))))))))" using neg_not that by (simp ; fail | simp only: neg_not; fail | simp add: neg_not; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not (bw q (xor (bw q (-1)) (bw q v0)))))))" using xor_remove that by (simp ; fail | simp only: xor_remove; fail | simp add: xor_remove; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not (xor (bw q (-1)) (bw q v0))))))" using xor_remove that by (simp ; fail | simp only: xor_remove; fail | simp add: xor_remove; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not ((or (bw q (-1)) (bw q v0)) - (and (bw q (-1)) (bw q v0)))))))" using xor_as_or_and that by (simp ; fail | simp only: xor_as_or_and; fail | simp add: xor_as_or_and; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not ((or (bw q v0) (bw q (-1))) - (and (bw q (-1)) (bw q v0)))))))" using or.commute that by (simp ; fail | simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not ((bw q (-1)) - (and (bw q (-1)) (bw q v0)))))))" using or_allones that by (simp ; fail | simp only: or_allones; fail | simp add: or_allones; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not ((or (bw q (not (bw q (not (bw q v0))))) (bw q (-1))) - (and (bw q (-1)) (bw q v0)))))))" using or_allones that by (simp ; fail | simp only: or_allones; fail | simp add: or_allones; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not ((or (bw q (not (bw q (not (bw q v0))))) (bw q (not (bw q 0)))) - (and (bw q (-1)) (bw q v0)))))))" using not_0_allones that by (simp ; fail | simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not ((or (bw q (not (bw q (not (bw q v0))))) (bw q (not (bw q 0)))) - (and (bw q v0) (bw q (-1))))))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not ((or (bw q (not (bw q (not (bw q v0))))) (bw q (not (bw q 0)))) - (and (bw q v0) (bw q (not (bw q 0)))))))))" using not_0_allones that by (simp ; fail | simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not ((or (bw q (not (bw q (not (bw q v0))))) (bw q (not (bw q 0)))) - (and (bw q (not (bw q (not (bw q v0))))) (bw q (not (bw q 0)))))))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not (xor (bw q (not (bw q (not (bw q v0))))) (bw q (not (bw q 0))))))))" using xor_as_or_and that by (simp ; fail | simp only: xor_as_or_and; fail | simp add: xor_as_or_and; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not (xor (bw q v0) (bw q (not (bw q 0))))))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not (bw q (xor (bw q v0) (bw q (not (bw q 0)))))))))" using xor_remove that by (simp ; fail | simp only: xor_remove; fail | simp add: xor_remove; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not (bw q (xor (bw q v0) (bw q (-1))))))))" using not_0_allones that by (simp ; fail | simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not (bw q (not (bw q v0)))))))" using xor_allones that by (simp ; fail | simp only: xor_allones; fail | simp add: xor_allones; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not (or (bw q (not (bw q v0))) 0)))))" using or_zero that by (simp ; fail | simp only: or_zero; fail | simp add: or_zero; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not (or (bw q (not (bw q v0))) (bw q 0))))))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not (or (bw q (not (bw q v0))) (bw q (bw q 0)))))))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not (or (bw q (not (bw q v0))) (bw q (not (bw q (not (bw q (bw q 0)))))))))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not (or (bw q (not (bw q v0))) (bw q (not (bw q (not (bw q 0))))))))))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not (or (bw q (not (bw q v0))) (bw q (not (bw q (-1)))))))))" using not_0_allones that by (simp ; fail | simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (not (or (bw q (not (bw q (-1)))) (bw q (not (bw q v0))))))))" using or.commute that by (simp ; fail | simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (and (bw q (not (bw q (not (bw q (-1)))))) (bw q (not (bw q (not (bw q v0)))))))))" using demorg_or that by (simp ; fail | simp only: demorg_or; fail | simp add: demorg_or; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (and (bw q (-1)) (bw q (not (bw q (not (bw q v0)))))))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (and (bw q (-1)) (bw q v0)))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q (and (bw q (not (bw q 0))) (bw q v0)))))" using not_0_allones that by (simp ; fail | simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw q (- (and (bw q (not (bw q 0))) (bw q v0))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw q (- (and (bw q (-1)) (bw q v0))))" using not_0_allones that by (simp ; fail | simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw q (- (and (bw q v0) (bw q (-1)))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw q (- (bw q v0)))" using and_allones that by (simp ; fail | simp only: and_allones; fail | simp add: and_allones; fail | blast; fail | metis)
    moreover have "... = (bw q ((-1) * (bw q v0)))" using Num.ring_1_class.mult_minus1 that by (simp ; fail | simp only: Num.ring_1_class.mult_minus1; fail | simp add: Num.ring_1_class.mult_minus1; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q (-1)) * (bw q v0)))" using mul_eq_prec that by (simp ; fail | simp only: mul_eq_prec; fail | simp add: mul_eq_prec; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
