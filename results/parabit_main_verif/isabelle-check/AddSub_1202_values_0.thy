theory AddSub_1202_values_0
    imports  arith_lemmas mixed_lemmas bitwise_lemmas
begin
theorem AddSub_1202_values_0_th:
"(bw k ((bw k (xor (bw k var_x) (bw k (not (bw k 0))))) + (bw k C)))=(bw k ((bw k ((bw k C) - (bw k 1))) - (bw k var_x)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_x C :: int
proof -
    have "?lhs = (bw k ((xor (bw k var_x) (bw k (not (bw k 0)))) + (bw k C)))" using add_eq_prec that by (simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (xor (bw k var_x) (bw k (not (bw k 0))))) + (bw k C)))" using xor_remove that by (simp only: xor_remove; fail | simp add: xor_remove; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k C) + (bw k (xor (bw k var_x) (bw k (not (bw k 0)))))))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k (C + (bw k (xor (bw k var_x) (bw k (not (bw k 0)))))))" using add_eq_prec that by (simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (xor (bw k var_x) (bw k (not (bw k 0))))) + C))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (xor (bw k var_x) (bw k (-1)))) + C))" using not_0_allones that by (simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((or (bw k var_x) (bw k (-1))) - (and (bw k var_x) (bw k (-1))))) + C))" using xor_as_or_and that by (simp only: xor_as_or_and; fail | simp add: xor_as_or_and; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k (-1)) - (and (bw k var_x) (bw k (-1))))) + C))" using or_allones that by (simp only: or_allones; fail | simp add: or_allones; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k (not (bw k 0))) - (and (bw k var_x) (bw k (-1))))) + C))" using not_0_allones that by (simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k (not (bw k 0))) - (bw k var_x))) + C))" using and_allones that by (simp only: and_allones; fail | simp add: and_allones; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k (not (bw k 0))) + ((-1) * (bw k var_x)))) + C))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k (-1)) + ((-1) * (bw k var_x)))) + C))" using not_0_allones that by (simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((-1) + ((-1) * (bw k var_x)))) + C))" using add_eq_prec that by (simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k (((-1) + ((-1) * (bw k var_x))) + C))" using add_eq_prec that by (simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k (C + ((-1) + ((-1) * (bw k var_x)))))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((C + (-1)) + ((-1) * (bw k var_x))))" using add.assoc that by (simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw k ((C + ((-1) * 1)) + ((-1) * (bw k var_x))))" by (simp add: bw_def)
    moreover have "... = (bw k ((C + ((-1) * (bw k 1))) + ((-1) * (bw k var_x))))" using bw_1 that by (simp only: bw_1; fail | simp add: bw_1; fail | blast; fail | metis)
    moreover have "... = (bw k ((C - (bw k 1)) + ((-1) * (bw k var_x))))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k (C - (bw k 1))) + ((-1) * (bw k var_x))))" using add_eq_prec that by (simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k C) - (bw k 1))) + ((-1) * (bw k var_x))))" using diff_left_eq_prec that by (simp only: diff_left_eq_prec; fail | simp add: diff_left_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k C) - (bw k 1))) - (bw k var_x)))" using sub_to_neg that by (simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
