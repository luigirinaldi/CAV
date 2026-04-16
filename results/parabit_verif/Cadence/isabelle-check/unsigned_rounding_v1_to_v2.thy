theory unsigned_rounding_v1_to_v2
    imports  arith_lemmas mixed_lemmas bitwise_lemmas
begin
theorem unsigned_rounding_v1_to_v2_th:
"(bw w2 ((bw w2 ((bw (w2 + 1) a) >> (bw 1 1))) + (bw w2 (bw 1 (bw (w2 + 1) a)))))=(bw w2 ((bw (w2 + 1) ((bw (w2 + 1) a) + (bw 1 1))) >> (bw 1 1)))" (is "?lhs = ?rhs")
if "(w2 > 1)" and "(((w2 + 1) - w2) >= 1)" and "((w2 + 1) > 0)" and "(w2 > 0)" and "(1 > 0)"
for w2 :: nat and a :: int
proof -
have fact_0: "((1::int) > (0::int))" by simp
have fact_1: "((2::int) > (0::int))" by simp
note inferred_facts =fact_0 fact_1 
    have "?lhs = (bw w2 (((bw (w2 + 1) a) >> (bw 1 1)) + (bw w2 (bw 1 (bw (w2 + 1) a)))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw w2 (bw 1 (bw (w2 + 1) a))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw 1 (bw (w2 + 1) a)) + ((bw (w2 + 1) a) >> (bw 1 1))))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((and (bw w2 (bw (w2 + 1) a)) 1) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and_one that by (simp ; fail | simp only: and_one; fail | simp add: and_one; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((and 1 (bw w2 (bw (w2 + 1) a))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((and (bw 1 (-1)) (bw w2 (bw (w2 + 1) a))) + ((bw (w2 + 1) a) >> (bw 1 1))))" by (simp add: bw_def)
    moreover have "... = (bw w2 ((and (or (bw 1 a) (bw 1 (-1))) (bw w2 (bw (w2 + 1) a))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using or_allones that by (simp ; fail | simp only: or_allones; fail | simp add: or_allones; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((and (or (and (bw 1 a) 1) (bw 1 (-1))) (bw w2 (bw (w2 + 1) a))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and_one that by (simp ; fail | simp only: and_one; fail | simp add: and_one; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((and (or (and (and (bw (w2 + 1) a) 1) 1) (bw 1 (-1))) (bw w2 (bw (w2 + 1) a))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and_one that by (simp ; fail | simp only: and_one; fail | simp add: and_one; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((and (or (and (and (bw (w2 + 1) a) (bw 1 1)) 1) (bw 1 (-1))) (bw w2 (bw (w2 + 1) a))) + ((bw (w2 + 1) a) >> (bw 1 1))))" by (simp add: bw_def)
    moreover have "... = (bw w2 ((and (or (and 1 (and (bw (w2 + 1) a) (bw 1 1))) (bw 1 (-1))) (bw w2 (bw (w2 + 1) a))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((and (or (and 1 (and (bw (w2 + 1) a) (bw 1 1))) 1) (bw w2 (bw (w2 + 1) a))) + ((bw (w2 + 1) a) >> (bw 1 1))))" by (simp add: bw_def)
    moreover have "... = (bw w2 ((and (or 1 (and 1 (and (bw (w2 + 1) a) (bw 1 1)))) (bw w2 (bw (w2 + 1) a))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using or.commute that by (simp ; fail | simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((and (bw w2 (bw (w2 + 1) a)) (or 1 (and 1 (and (bw (w2 + 1) a) (bw 1 1))))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw w2 (and (bw w2 (bw (w2 + 1) a)) (or 1 (and 1 (and (bw (w2 + 1) a) (bw 1 1)))))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw w2 (and (bw (w2 + 1) a) (or 1 (and 1 (and (bw (w2 + 1) a) (bw 1 1)))))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using that mod_prop_and by (blast; fail | metis)
    moreover have "... = (bw w2 ((bw w2 (or (and (bw (w2 + 1) a) 1) (and (bw (w2 + 1) a) (and 1 (and (bw (w2 + 1) a) (bw 1 1)))))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and_distrib that by (simp ; fail | simp only: and_distrib; fail | simp add: and_distrib; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw w2 (or (bw 1 a) (and (bw (w2 + 1) a) (and 1 (and (bw (w2 + 1) a) (bw 1 1)))))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and_one that by (simp ; fail | simp only: and_one; fail | simp add: and_one; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw w2 (or (bw 1 a) (and (and (bw (w2 + 1) a) 1) (and (bw (w2 + 1) a) (bw 1 1))))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and_assoc that by (simp ; fail | simp only: and_assoc; fail | simp add: and_assoc; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw w2 (or (bw 1 a) (and (bw 1 a) (and (bw (w2 + 1) a) (bw 1 1))))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and_one that by (simp ; fail | simp only: and_one; fail | simp add: and_one; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw w2 (or (bw 1 a) (and (bw 1 a) (and (bw (w2 + 1) a) 1)))) + ((bw (w2 + 1) a) >> (bw 1 1))))" by (simp add: bw_def)
    moreover have "... = (bw w2 ((bw w2 (or (bw 1 a) (and (bw 1 a) (bw 1 a)))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and_one that by (simp ; fail | simp only: and_one; fail | simp add: and_one; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw w2 (or (bw 1 a) (and (and (bw (w2 + 1) a) 1) (bw 1 a)))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and_one that by (simp ; fail | simp only: and_one; fail | simp add: and_one; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw w2 (or (bw 1 a) (and (and (bw (w2 + 1) a) (bw 1 1)) (bw 1 a)))) + ((bw (w2 + 1) a) >> (bw 1 1))))" by (simp add: bw_def)
    moreover have "... = (bw w2 ((bw w2 (or (bw 1 a) (and (and (bw (w2 + 1) a) (bw 1 1)) (and (bw (w2 + 1) a) 1)))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and_one that by (simp ; fail | simp only: and_one; fail | simp add: and_one; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw w2 (or (bw 1 a) (and (and (bw (w2 + 1) a) (bw 1 1)) (and (bw (w2 + 1) a) (bw 1 1))))) + ((bw (w2 + 1) a) >> (bw 1 1))))" by (simp add: bw_def)
    moreover have "... = (bw w2 ((bw w2 (or (bw 1 a) (and (bw (w2 + 1) a) (bw 1 1)))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and_self that by (simp ; fail | simp only: and_self; fail | simp add: and_self; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw w2 (or (bw 1 a) (and (bw (w2 + 1) a) 1))) + ((bw (w2 + 1) a) >> (bw 1 1))))" by (simp add: bw_def)
    moreover have "... = (bw w2 ((bw w2 (or (bw 1 a) (bw 1 a))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and_one that by (simp ; fail | simp only: and_one; fail | simp add: and_one; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw w2 (or (and (bw (w2 + 1) a) 1) (bw 1 a))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and_one that by (simp ; fail | simp only: and_one; fail | simp add: and_one; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw w2 (or (and (bw (w2 + 1) a) (bw 1 1)) (bw 1 a))) + ((bw (w2 + 1) a) >> (bw 1 1))))" by (simp add: bw_def)
    moreover have "... = (bw w2 ((bw w2 (or (and (bw (w2 + 1) a) (bw 1 1)) (and (bw (w2 + 1) a) 1))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and_one that by (simp ; fail | simp only: and_one; fail | simp add: and_one; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw w2 (or (and (bw (w2 + 1) a) (bw 1 1)) (and (bw (w2 + 1) a) (bw 1 1)))) + ((bw (w2 + 1) a) >> (bw 1 1))))" by (simp add: bw_def)
    moreover have "... = (bw w2 ((bw w2 (and (bw (w2 + 1) a) (bw 1 1))) + ((bw (w2 + 1) a) >> (bw 1 1))))" using or_self that by (simp ; fail | simp only: or_self; fail | simp add: or_self; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw w2 (and (bw (w2 + 1) a) 1)) + ((bw (w2 + 1) a) >> (bw 1 1))))" by (simp add: bw_def)
    moreover have "... = (bw w2 ((bw w2 (bw 1 a)) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and_one that by (simp ; fail | simp only: and_one; fail | simp add: and_one; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw 1 a) + ((bw (w2 + 1) a) >> (bw 1 1))))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((and (bw (w2 + 1) a) 1) + ((bw (w2 + 1) a) >> (bw 1 1))))" using and_one that by (simp ; fail | simp only: and_one; fail | simp add: and_one; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((and (bw (w2 + 1) a) (bw 1 1)) + ((bw (w2 + 1) a) >> (bw 1 1))))" by (simp add: bw_def)
    moreover have "... = (bw w2 (((bw (w2 + 1) a) >> (bw 1 1)) + (and (bw (w2 + 1) a) (bw 1 1))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw w2 (0 + (((bw (w2 + 1) a) >> (bw 1 1)) + (and (bw (w2 + 1) a) (bw 1 1)))))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
    moreover have "... = (bw w2 (((bw 1 (not (bw 1 a))) div 2) + (((bw (w2 + 1) a) >> (bw 1 1)) + (and (bw (w2 + 1) a) (bw 1 1)))))" using div_by_more that by (simp ; fail | simp only: div_by_more; fail | simp add: div_by_more; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((((bw 1 (not (bw 1 a))) div 2) + ((bw (w2 + 1) a) >> (bw 1 1))) + (and (bw (w2 + 1) a) (bw 1 1))))" using add.assoc that by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((((bw 1 (not (bw 1 a))) + (2 * ((bw (w2 + 1) a) >> (bw 1 1)))) div 2) + (and (bw (w2 + 1) a) (bw 1 1))))" using that inferred_facts by (simp only: div_mult_self)
    moreover have "... = (bw w2 ((((bw 1 (not (bw 1 a))) + (((bw (w2 + 1) a) >> (bw 1 1)) * 2)) div 2) + (and (bw (w2 + 1) a) (bw 1 1))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((((bw 1 (not (bw 1 a))) + (((bw (w2 + 1) a) div (2 ^ nat ((bw 1 1)))) * 2)) div 2) + (and (bw (w2 + 1) a) (bw 1 1))))" by (simp add: shr_def)
    moreover have "... = (bw w2 ((((bw 1 (not (bw 1 a))) + (((bw (w2 + 1) a) div (2 ^ nat (1))) * 2)) div 2) + (and (bw (w2 + 1) a) (bw 1 1))))" by (simp add: bw_def)
    moreover have "... = (bw w2 ((((bw 1 (not (bw 1 a))) + (((bw (w2 + 1) a) div 2) * 2)) div 2) + (and (bw (w2 + 1) a) (bw 1 1))))" by (simp add: bw_def)
    moreover have "... = (bw w2 ((((((bw (w2 + 1) a) div 2) * 2) + (bw 1 (not (bw 1 a)))) div 2) + (and (bw (w2 + 1) a) (bw 1 1))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw w2 (((xor (bw (w2 + 1) a) 1) div 2) + (and (bw (w2 + 1) a) (bw 1 1))))" using xor_one that by (simp ; fail | simp only: xor_one; fail | simp add: xor_one; fail | blast; fail | metis)
    moreover have "... = (bw w2 (((xor (bw (w2 + 1) a) (bw 1 1)) div 2) + (and (bw (w2 + 1) a) (bw 1 1))))" by (simp add: bw_def)
    moreover have "... = (bw w2 (((xor (bw (w2 + 1) a) (bw 1 1)) + (2 * (and (bw (w2 + 1) a) (bw 1 1)))) div 2))" using that inferred_facts by (simp only: div_mult_self)
    moreover have "... = (bw w2 (((bw (w2 + 1) a) + (bw 1 1)) div 2))" using add_as_xor_and that by (simp ; fail | simp only: add_as_xor_and; fail | simp add: add_as_xor_and; fail | blast; fail | metis)
    moreover have "... = (bw w2 (((bw (w2 + 1) a) + (bw 1 1)) div (2 ^ nat (1))))" by (simp add: bw_def)
    moreover have "... = (bw w2 (((bw (w2 + 1) a) + (bw 1 1)) >> 1))" using shr_by_pos that by (simp ; fail | simp only: shr_by_pos; fail | simp add: shr_by_pos; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw (w2 + 1) ((bw (w2 + 1) a) + (bw 1 1))) >> 1))" using shift_mod that by (simp ; fail | simp only: shift_mod; fail | simp add: shift_mod; fail | blast; fail | metis)
    moreover have "... = (bw w2 ((bw (w2 + 1) ((bw (w2 + 1) a) + (bw 1 1))) >> (bw 1 1)))" by (simp add: bw_def)
ultimately show ?thesis by argo
qed

end
