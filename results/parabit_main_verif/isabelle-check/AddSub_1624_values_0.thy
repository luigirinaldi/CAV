theory AddSub_1624_values_0
    imports  mixed_lemmas arith_lemmas bitwise_lemmas
begin
theorem AddSub_1624_values_0_th:
"(bw k ((bw k (or (bw k var_A) (bw k var_B))) - (bw k (xor (bw k var_A) (bw k var_B)))))=(bw k (and (bw k var_A) (bw k var_B)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_A var_B :: int
proof -
    have "?lhs = (bw k ((bw k (or (bw k var_A) (bw k var_B))) + ((-1) * (bw k (xor (bw k var_A) (bw k var_B))))))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) * (bw k (xor (bw k var_A) (bw k var_B)))) + (bw k (or (bw k var_A) (bw k var_B)))))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) * (xor (bw k var_A) (bw k var_B))) + (bw k (or (bw k var_A) (bw k var_B)))))" using xor_remove that by (simp only: xor_remove; fail | simp add: xor_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) * ((or (bw k var_A) (bw k var_B)) - (and (bw k var_A) (bw k var_B)))) + (bw k (or (bw k var_A) (bw k var_B)))))" using xor_as_or_and that by (simp only: xor_as_or_and; fail | simp add: xor_as_or_and; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) * ((bw k (or (bw k var_A) (bw k var_B))) - (and (bw k var_A) (bw k var_B)))) + (bw k (or (bw k var_A) (bw k var_B)))))" using or_remove that by (simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) * ((bw k (or (bw k var_A) (bw k var_B))) + ((-1) * (and (bw k var_A) (bw k var_B))))) + (bw k (or (bw k var_A) (bw k var_B)))))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((((-1) * (bw k (or (bw k var_A) (bw k var_B)))) + ((-1) * ((-1) * (and (bw k var_A) (bw k var_B))))) + (bw k (or (bw k var_A) (bw k var_B)))))" using int_distrib that by (simp only: int_distrib; fail | simp add: int_distrib; fail | blast; fail | metis)
    moreover have "... = (bw k ((((-1) * ((-1) * (and (bw k var_A) (bw k var_B)))) + ((-1) * (bw k (or (bw k var_A) (bw k var_B))))) + (bw k (or (bw k var_A) (bw k var_B)))))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) * ((-1) * (and (bw k var_A) (bw k var_B)))) + (((-1) * (bw k (or (bw k var_A) (bw k var_B)))) + (bw k (or (bw k var_A) (bw k var_B))))))" using add.assoc that by (simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) * (- (and (bw k var_A) (bw k var_B)))) + (((-1) * (bw k (or (bw k var_A) (bw k var_B)))) + (bw k (or (bw k var_A) (bw k var_B))))))" using Num.ring_1_class.mult_minus1 that by (simp only: Num.ring_1_class.mult_minus1; fail | simp add: Num.ring_1_class.mult_minus1; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) * (- (bw k (and (bw k var_A) (bw k var_B))))) + (((-1) * (bw k (or (bw k var_A) (bw k var_B)))) + (bw k (or (bw k var_A) (bw k var_B))))))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) * ((not (bw k (and (bw k var_A) (bw k var_B)))) + 1)) + (((-1) * (bw k (or (bw k var_A) (bw k var_B)))) + (bw k (or (bw k var_A) (bw k var_B))))))" using neg_not that by (simp only: neg_not; fail | simp add: neg_not; fail | blast; fail | metis)
    moreover have "... = (bw k ((((-1) * (not (bw k (and (bw k var_A) (bw k var_B))))) + ((-1) * 1)) + (((-1) * (bw k (or (bw k var_A) (bw k var_B)))) + (bw k (or (bw k var_A) (bw k var_B))))))" using int_distrib that by (simp only: int_distrib; fail | simp add: int_distrib; fail | blast; fail | metis)
    moreover have "... = (bw k ((((-1) * (not (bw k (and (bw k var_A) (bw k var_B))))) + (-1)) + (((-1) * (bw k (or (bw k var_A) (bw k var_B)))) + (bw k (or (bw k var_A) (bw k var_B))))))" by (simp add: bw_def)
    moreover have "... = (bw k (((-1) * (not (bw k (and (bw k var_A) (bw k var_B))))) + ((-1) + (((-1) * (bw k (or (bw k var_A) (bw k var_B)))) + (bw k (or (bw k var_A) (bw k var_B)))))))" using add.assoc that by (simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) + (((-1) * (bw k (or (bw k var_A) (bw k var_B)))) + (bw k (or (bw k var_A) (bw k var_B))))) + ((-1) * (not (bw k (and (bw k var_A) (bw k var_B)))))))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k (((((-1) * (bw k (or (bw k var_A) (bw k var_B)))) + (bw k (or (bw k var_A) (bw k var_B)))) + (-1)) + ((-1) * (not (bw k (and (bw k var_A) (bw k var_B)))))))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((((bw k (or (bw k var_A) (bw k var_B))) + ((-1) * (bw k (or (bw k var_A) (bw k var_B))))) + (-1)) + ((-1) * (not (bw k (and (bw k var_A) (bw k var_B)))))))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((((bw k (or (bw k var_A) (bw k var_B))) - (bw k (or (bw k var_A) (bw k var_B)))) + (-1)) + ((-1) * (not (bw k (and (bw k var_A) (bw k var_B)))))))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((0 + (-1)) + ((-1) * (not (bw k (and (bw k var_A) (bw k var_B)))))))" using diff_self that by (simp only: diff_self; fail | simp add: diff_self; fail | blast; fail | metis)
    moreover have "... = (bw k (((and (bw k (not (bw k var_A))) (bw k (not (bw k (not (bw k var_A)))))) + (-1)) + ((-1) * (not (bw k (and (bw k var_A) (bw k var_B)))))))" using and_not_self that by (simp only: and_not_self; fail | simp add: and_not_self; fail | blast; fail | metis)
    moreover have "... = (bw k (((and (bw k (not (bw k var_A))) (bw k var_A)) + (-1)) + ((-1) * (not (bw k (and (bw k var_A) (bw k var_B)))))))" using not_bw_not that by (simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw k (((and (bw k (not (bw k var_A))) (bw k var_A)) + ((-1) * 1)) + ((-1) * (not (bw k (and (bw k var_A) (bw k var_B)))))))" by (simp add: bw_def)
    moreover have "... = (bw k (((and (bw k (not (bw k var_A))) (bw k (not (bw k (not (bw k var_A)))))) + ((-1) * 1)) + ((-1) * (not (bw k (and (bw k var_A) (bw k var_B)))))))" using not_bw_not that by (simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw k ((0 + ((-1) * 1)) + ((-1) * (not (bw k (and (bw k var_A) (bw k var_B)))))))" using and_not_self that by (simp only: and_not_self; fail | simp add: and_not_self; fail | blast; fail | metis)
    moreover have "... = (bw k ((0 + (-1)) + ((-1) * (not (bw k (and (bw k var_A) (bw k var_B)))))))" by (simp add: bw_def)
    moreover have "... = (bw k ((-1) + ((-1) * (not (bw k (and (bw k var_A) (bw k var_B)))))))" by (simp add: bw_def)
    moreover have "... = (bw k (((-1) * 1) + ((-1) * (not (bw k (and (bw k var_A) (bw k var_B)))))))" by (simp add: bw_def)
    moreover have "... = (bw k ((-1) * (1 + (not (bw k (and (bw k var_A) (bw k var_B)))))))" using int_distrib that by (simp only: int_distrib; fail | simp add: int_distrib; fail | blast; fail | metis)
    moreover have "... = (bw k ((-1) * ((not (bw k (and (bw k var_A) (bw k var_B)))) + 1)))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((-1) * (- (bw k (and (bw k var_A) (bw k var_B))))))" using neg_not that by (simp only: neg_not; fail | simp add: neg_not; fail | blast; fail | metis)
    moreover have "... = (bw k ((-1) * (- (and (bw k var_A) (bw k var_B)))))" using and_remove that by (simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw k ((-1) * ((-1) * (and (bw k var_A) (bw k var_B)))))" using Num.ring_1_class.mult_minus1 that by (simp only: Num.ring_1_class.mult_minus1; fail | simp add: Num.ring_1_class.mult_minus1; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) * (-1)) * (and (bw k var_A) (bw k var_B))))" using mult.assoc that by (simp only: mult.assoc; fail | simp add: mult.assoc; fail | blast; fail | metis)
    moreover have "... = (bw k (1 * (and (bw k var_A) (bw k var_B))))" by (simp add: bw_def)
    moreover have "... = (bw k ((and (bw k var_A) (bw k var_B)) * 1))" using mult.commute that by (simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw k (1 * (and (bw k var_A) (bw k var_B))))" using mult.commute that by (simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw k (and (bw k var_A) (bw k var_B)))" using mult_1 that by (simp only: mult_1; fail | simp add: mult_1; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
