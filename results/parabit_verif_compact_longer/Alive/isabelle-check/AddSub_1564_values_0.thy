theory AddSub_1564_values_0
    imports  bitwise_lemmas mixed_lemmas arith_lemmas
begin
theorem AddSub_1564_values_0_th:
"(bw k ((bw k C) - (bw k (xor (bw k var_x) (bw k (not (bw k 0)))))))=(bw k ((bw k var_x) + (bw k ((bw k C) + (bw k 1)))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_x C :: int
proof -
    have "?lhs = (bw k ((bw k C) + ((-1) * (bw k (xor (bw k var_x) (bw k (not (bw k 0))))))))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k (C + ((-1) * (bw k (xor (bw k var_x) (bw k (not (bw k 0))))))))" using add_eq_prec that by (simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) * (bw k (xor (bw k var_x) (bw k (not (bw k 0)))))) + C))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((- (bw k (xor (bw k var_x) (bw k (not (bw k 0)))))) + C))" using Num.ring_1_class.mult_minus1 that by (simp only: Num.ring_1_class.mult_minus1; fail | simp add: Num.ring_1_class.mult_minus1; fail | blast; fail | metis)
    moreover have "... = (bw k ((- (bw k (bw k (xor (bw k var_x) (bw k (not (bw k 0))))))) + C))" using xor_remove that by (simp only: xor_remove; fail | simp add: xor_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (((not (bw k (bw k (xor (bw k var_x) (bw k (not (bw k 0))))))) + 1) + C))" using neg_not that by (simp only: neg_not; fail | simp add: neg_not; fail | blast; fail | metis)
    moreover have "... = (bw k (((not (bw k (xor (bw k var_x) (bw k (not (bw k 0)))))) + 1) + C))" using xor_remove that by (simp only: xor_remove; fail | simp add: xor_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (((not (bw k (xor (bw k var_x) (bw k (-1))))) + 1) + C))" using not_0_allones that by (simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw k (((not (bw k (not (bw k var_x)))) + 1) + C))" using xor_allones that by (simp only: xor_allones; fail | simp add: xor_allones; fail | blast; fail | metis)
    moreover have "... = (bw k (((not (bw k (not (bw k var_x)))) + (bw k 1)) + C))" using bw_1 that by (simp only: bw_1; fail | simp add: bw_1; fail | blast; fail | metis)
    moreover have "... = (bw k ((not (bw k (not (bw k var_x)))) + ((bw k 1) + C)))" using add.assoc that by (simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw k ((not (bw k (not (bw k var_x)))) + (C + (bw k 1))))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (not (bw k (not (bw k var_x))))) + (C + (bw k 1))))" using add_eq_prec that by (simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k var_x) + (C + (bw k 1))))" using not_bw_not that by (simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw k ((C + (bw k 1)) + (bw k var_x)))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (C + (bw k 1))) + (bw k var_x)))" using add_eq_prec that by (simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k C) + (bw k 1))) + (bw k var_x)))" using add_eq_prec that by (simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k var_x) + (bw k ((bw k C) + (bw k 1)))))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
