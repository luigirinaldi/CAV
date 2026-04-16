theory one_to_two_mult
    imports  arith_lemmas
begin
theorem one_to_two_mult_th:
"(bw p ((bw 1 1) * (bw p x)))=(bw p ((bw q ((bw 2 2) * (bw p x))) - (bw p x)))" (is "?lhs = ?rhs")
if "(q > (p + 2))" and "(q > p)" and "(1 > 0)" and "(p > 0)" and "(q > 0)" and "(2 > 0)"
for p q :: nat and x :: int
proof -
have fact_0: "((2::int) > (1::int))" by simp
have fact_1: "((2::int) >= (2::int))" by simp
have fact_2: "((1::int) < (2::int))" by simp
have fact_3: "((1::int) >= (1::int))" by simp
have fact_4: "((2::int) >= (1::int))" by simp
note inferred_facts =fact_0 fact_1 fact_2 fact_3 fact_4 
    have "?lhs = (bw p (1 * (bw p x)))" by (simp add: bw_def)
    moreover have "... = (bw p ((bw p 1) * (bw p x)))" using that mod_prop_mul by (blast; fail | metis)
    moreover have "... = (bw p ((bw p x) * (bw p 1)))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw p ((bw p x) * 1))" using bw_1 that by (simp ; fail | simp only: bw_1; fail | simp add: bw_1; fail | blast; fail | metis)
    moreover have "... = (bw p ((bw p x) * (2 + (-1))))" by (simp add: bw_def)
    moreover have "... = (bw p ((bw p x) * (2 + (not 0))))" by (simp add: bw_def)
    moreover have "... = (bw p ((bw p x) * (2 + (not (bw 1 (-2))))))" by (simp add: bw_def)
    moreover have "... = (bw p ((bw p x) * (2 + (not (bw 1 (not 1))))))" by (simp add: bw_def)
    moreover have "... = (bw p ((bw p x) * (2 + (not (bw 1 (not (bw 1 1)))))))" by (simp add: bw_def)
    moreover have "... = (bw p (((bw p x) * 2) + ((bw p x) * (not (bw 1 (not (bw 1 1)))))))" using int_distrib that by (simp ; fail | simp only: int_distrib; fail | simp add: int_distrib; fail | blast; fail | metis)
    moreover have "... = (bw p ((2 * (bw p x)) + ((bw p x) * (not (bw 1 (not (bw 1 1)))))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw p (((bw p x) + (bw p x)) + ((bw p x) * (not (bw 1 (not (bw 1 1)))))))" using mult_2 that by (simp ; fail | simp only: mult_2; fail | simp add: mult_2; fail | blast; fail | metis)
    moreover have "... = (bw p ((bw q ((bw p x) + (bw p x))) + ((bw p x) * (not (bw 1 (not (bw 1 1)))))))" using add_full_prec that by (simp ; fail | simp only: add_full_prec; fail | simp add: add_full_prec; fail | blast; fail | metis)
    moreover have "... = (bw p ((bw q (2 * (bw p x))) + ((bw p x) * (not (bw 1 (not (bw 1 1)))))))" using mult_2 that by (simp ; fail | simp only: mult_2; fail | simp add: mult_2; fail | blast; fail | metis)
    moreover have "... = (bw p ((bw q ((bw 2 2) * (bw p x))) + ((bw p x) * (not (bw 1 (not (bw 1 1)))))))" by (simp add: bw_def)
    moreover have "... = (bw p ((bw q ((bw 2 2) * (bw p x))) + ((not (bw 1 (not (bw 1 1)))) * (bw p x))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw p ((bw q ((bw 2 2) * (bw p x))) + ((not (bw 1 (not 1))) * (bw p x))))" by (simp add: bw_def)
    moreover have "... = (bw p ((bw q ((bw 2 2) * (bw p x))) + ((not (bw 1 (-2))) * (bw p x))))" by (simp add: bw_def)
    moreover have "... = (bw p ((bw q ((bw 2 2) * (bw p x))) + ((not 0) * (bw p x))))" by (simp add: bw_def)
    moreover have "... = (bw p ((bw q ((bw 2 2) * (bw p x))) + ((-1) * (bw p x))))" by (simp add: bw_def)
    moreover have "... = (bw p ((bw q ((bw 2 2) * (bw p x))) - (bw p x)))" using sub_to_neg that by (simp ; fail | simp only: sub_to_neg; fail | simp add: sub_to_neg; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
