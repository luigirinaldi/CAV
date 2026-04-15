theory AndOrXor_2486_values_0
    imports  arith_lemmas mixed_lemmas bitwise_lemmas
begin
theorem AndOrXor_2486_values_0_th:
"(bw k (xor (bw k ((bw k var_x) + (bw k C))) (bw k (not (bw k 0)))))=(bw k ((bw k ((bw k (not (bw k 0))) - (bw k C))) - (bw k var_x)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and C var_x :: int
proof -
    have "?lhs = (bw k ((or (bw k ((bw k var_x) + (bw k C))) (bw k (not (bw k 0)))) - (and (bw k ((bw k var_x) + (bw k C))) (bw k (not (bw k 0))))))" using xor_as_or_and that by (simp only: xor_as_or_and; fail | simp add: xor_as_or_and; fail | blast; fail | metis)
    moreover have "... = (bw k ((or (bw k ((bw k var_x) + (bw k C))) (bw k (-1))) - (and (bw k ((bw k var_x) + (bw k C))) (bw k (not (bw k 0))))))" using not_0_allones that by (simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (-1)) - (and (bw k ((bw k var_x) + (bw k C))) (bw k (not (bw k 0))))))" using or_allones that by (simp only: or_allones; fail | simp add: or_allones; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (not (bw k 0))) - (and (bw k ((bw k var_x) + (bw k C))) (bw k (not (bw k 0))))))" using not_0_allones that by (simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (not (bw k 0))) - (and (bw k ((bw k var_x) + (bw k C))) (bw k (-1)))))" using not_0_allones that by (simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (not (bw k 0))) - (bw k ((bw k var_x) + (bw k C)))))" using and_allones that by (simp only: and_allones; fail | simp add: and_allones; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (not (bw k 0))) - (bw k ((bw k C) + (bw k var_x)))))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (not (bw k 0))) - (bw k (C + (bw k var_x)))))" using add_eq_prec that by (simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (not (bw k 0))) - (C + (bw k var_x))))" using diff_right_eq_prec that by (simp only: diff_right_eq_prec; fail | simp add: diff_right_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (not (bw k 0))) + ((-1) * (C + (bw k var_x)))))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (not (bw k 0))) + ((not 0) * (C + (bw k var_x)))))" by (simp add: bw_def)
    moreover have "... = (bw k ((bw k (not (bw k 0))) + ((not (bw k 0)) * (C + (bw k var_x)))))" using bw_0 that by (simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (not (bw k 0))) + (((not (bw k 0)) * C) + ((not (bw k 0)) * (bw k var_x)))))" using int_distrib that by (simp only: int_distrib; fail | simp add: int_distrib; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (not (bw k 0))) + (((not 0) * C) + ((not (bw k 0)) * (bw k var_x)))))" using bw_0 that by (simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (not (bw k 0))) + (((-1) * C) + ((not (bw k 0)) * (bw k var_x)))))" by (simp add: bw_def)
    moreover have "... = (bw k ((bw k (not (bw k 0))) + (((-1) * C) + ((not 0) * (bw k var_x)))))" using bw_0 that by (simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (not (bw k 0))) + (((-1) * C) + ((-1) * (bw k var_x)))))" by (simp add: bw_def)
    moreover have "... = (bw k (((bw k (not (bw k 0))) + ((-1) * C)) + ((-1) * (bw k var_x))))" using add.assoc that by (simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw k (((bw k (not (bw k 0))) - C) + ((-1) * (bw k var_x))))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k (not (bw k 0))) - C)) + ((-1) * (bw k var_x))))" using add_eq_prec that by (simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k (not (bw k 0))) - (bw k C))) + ((-1) * (bw k var_x))))" using diff_right_eq_prec that by (simp only: diff_right_eq_prec; fail | simp add: diff_right_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k (not (bw k 0))) - (bw k C))) - (bw k var_x)))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
