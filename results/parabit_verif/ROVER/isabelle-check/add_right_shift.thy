theory add_right_shift
    imports  bitwise_lemmas arith_lemmas mixed_lemmas
begin
theorem add_right_shift_th:
"(bw r ((bw p a) + (bw q ((bw t b) >> (bw u c)))))=(bw r ((bw v ((bw s ((bw p a) << (bw u c))) + (bw t b))) >> (bw u c)))" (is "?lhs = ?rhs")
if "(q >= t)" and "(s >= (p + ((2 ^ u) - 1)))" and "(v > s)" and "(v > t)" and "(s > 0)" and "(t > 0)" and "(r > 0)" and "(q > 0)" and "(p > 0)" and "(u > 0)" and "(v > 0)"
for v r t u q p s :: nat and c b a :: int
proof -
have fact_0: "(((2::int) ^ nat ((bw u c))) > (0::int))" by simp
note inferred_facts =fact_0 
    have "?lhs = (bw r ((xor (bw p a) (bw q ((bw t b) >> (bw u c)))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" using add_as_xor_and that by (simp ; fail | simp only: add_as_xor_and; fail | simp add: add_as_xor_and; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r (xor (bw p a) (bw q ((bw t b) >> (bw u c))))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" using that bw_def mod_prop_sum by (presburger ; fail | blast)
    moreover have "... = (bw r ((bw r (xor (bw p a) (bw q ((bw t b) div (2 ^ nat ((bw u c))))))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" by (simp add: shr_def)
    moreover have "... = (bw r ((bw r (xor (bw p a) (bw q (bw q ((bw t b) div (2 ^ nat ((bw u c)))))))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" using div_gte that by (simp ; fail | simp only: div_gte; fail | simp add: div_gte; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r (xor (bw p a) (bw q (bw q ((bw t b) >> (bw u c)))))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" by (simp add: shr_def)
    moreover have "... = (bw r ((bw r ((or (bw p a) (bw q (bw q ((bw t b) >> (bw u c))))) - (and (bw p a) (bw q (bw q ((bw t b) >> (bw u c))))))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" using xor_as_or_and that by (simp ; fail | simp only: xor_as_or_and; fail | simp add: xor_as_or_and; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r ((or (bw p a) (bw q (bw q ((bw t b) div (2 ^ nat ((bw u c))))))) - (and (bw p a) (bw q (bw q ((bw t b) >> (bw u c))))))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" by (simp add: shr_def)
    moreover have "... = (bw r ((bw r ((or (bw p a) (bw q ((bw t b) div (2 ^ nat ((bw u c)))))) - (and (bw p a) (bw q (bw q ((bw t b) >> (bw u c))))))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" using div_gte that by (simp ; fail | simp only: div_gte; fail | simp add: div_gte; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r ((or (bw p a) (bw q ((bw t b) >> (bw u c)))) - (and (bw p a) (bw q (bw q ((bw t b) >> (bw u c))))))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" by (simp add: shr_def)
    moreover have "... = (bw r ((bw r ((or (bw q ((bw t b) >> (bw u c))) (bw p a)) - (and (bw p a) (bw q (bw q ((bw t b) >> (bw u c))))))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" using or.commute that by (simp ; fail | simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r ((or (bw q (not (bw q (not (bw q ((bw t b) >> (bw u c))))))) (bw p a)) - (and (bw p a) (bw q (bw q ((bw t b) >> (bw u c))))))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r ((or (bw q (not (bw q (not (bw q ((bw t b) >> (bw u c))))))) (bw p a)) - (and (bw p a) (bw q (bw q ((bw t b) div (2 ^ nat ((bw u c))))))))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" by (simp add: shr_def)
    moreover have "... = (bw r ((bw r ((or (bw q (not (bw q (not (bw q ((bw t b) >> (bw u c))))))) (bw p a)) - (and (bw p a) (bw q ((bw t b) div (2 ^ nat ((bw u c)))))))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" using div_gte that by (simp ; fail | simp only: div_gte; fail | simp add: div_gte; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r ((or (bw q (not (bw q (not (bw q ((bw t b) >> (bw u c))))))) (bw p a)) - (and (bw p a) (bw q ((bw t b) >> (bw u c)))))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" by (simp add: shr_def)
    moreover have "... = (bw r ((bw r ((or (bw q (not (bw q (not (bw q ((bw t b) >> (bw u c))))))) (bw p a)) - (and (bw q ((bw t b) >> (bw u c))) (bw p a)))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r ((or (bw q (not (bw q (not (bw q ((bw t b) >> (bw u c))))))) (bw p a)) - (and (bw q (not (bw q (not (bw q ((bw t b) >> (bw u c))))))) (bw p a)))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r (xor (bw q (not (bw q (not (bw q ((bw t b) >> (bw u c))))))) (bw p a))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" using xor_as_or_and that by (simp ; fail | simp only: xor_as_or_and; fail | simp add: xor_as_or_and; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r (xor (bw q ((bw t b) >> (bw u c))) (bw p a))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r (xor (bw q ((bw t b) div (2 ^ nat ((bw u c))))) (bw p a))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" by (simp add: shr_def)
    moreover have "... = (bw r ((bw r (xor (bw q (bw q ((bw t b) div (2 ^ nat ((bw u c)))))) (bw p a))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" using div_gte that by (simp ; fail | simp only: div_gte; fail | simp add: div_gte; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw r (xor (bw q (bw q ((bw t b) >> (bw u c)))) (bw p a))) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" by (simp add: shr_def)
    moreover have "... = (bw r ((xor (bw q (bw q ((bw t b) >> (bw u c)))) (bw p a)) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" using that bw_def mod_prop_sum by (presburger ; fail | blast)
    moreover have "... = (bw r ((xor (bw q (bw q ((bw t b) div (2 ^ nat ((bw u c)))))) (bw p a)) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" by (simp add: shr_def)
    moreover have "... = (bw r ((xor (bw q ((bw t b) div (2 ^ nat ((bw u c))))) (bw p a)) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" using div_gte that by (simp ; fail | simp only: div_gte; fail | simp add: div_gte; fail | blast; fail | metis)
    moreover have "... = (bw r ((xor (bw q ((bw t b) >> (bw u c))) (bw p a)) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" by (simp add: shr_def)
    moreover have "... = (bw r ((xor (bw q (not (bw q (not (bw q ((bw t b) >> (bw u c))))))) (bw p a)) + (2 * (and (bw p a) (bw q ((bw t b) >> (bw u c)))))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw r ((xor (bw q (not (bw q (not (bw q ((bw t b) >> (bw u c))))))) (bw p a)) + (2 * (and (bw q ((bw t b) >> (bw u c))) (bw p a)))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((xor (bw q (not (bw q (not (bw q ((bw t b) >> (bw u c))))))) (bw p a)) + (2 * (and (bw q (not (bw q (not (bw q ((bw t b) >> (bw u c))))))) (bw p a)))))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw q (not (bw q (not (bw q ((bw t b) >> (bw u c))))))) + (bw p a)))" using add_as_xor_and that by (simp ; fail | simp only: add_as_xor_and; fail | simp add: add_as_xor_and; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw q ((bw t b) >> (bw u c))) + (bw p a)))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw q ((bw t b) div (2 ^ nat ((bw u c))))) + (bw p a)))" by (simp add: shr_def)
    moreover have "... = (bw r (((bw t b) div (2 ^ nat ((bw u c)))) + (bw p a)))" using div_gte that by (simp ; fail | simp only: div_gte; fail | simp add: div_gte; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw t b) + ((2 ^ nat ((bw u c))) * (bw p a))) div (2 ^ nat ((bw u c)))))" using that inferred_facts by (simp only: div_mult_self)
    moreover have "... = (bw r (((bw t b) + ((bw p a) * (2 ^ nat ((bw u c))))) div (2 ^ nat ((bw u c)))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw t b) + (bw s ((bw p a) * (2 ^ nat ((bw u c)))))) div (2 ^ nat ((bw u c)))))" using mul_pow2 that by (simp ; fail | simp only: mul_pow2; fail | simp add: mul_pow2; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw t b) + (bw s ((bw p a) << (bw u c)))) div (2 ^ nat ((bw u c)))))" by (simp add: shl_def)
    moreover have "... = (bw r (((bw t b) + (bw v (bw s ((bw p a) << (bw u c))))) div (2 ^ nat ((bw u c)))))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw v (bw s ((bw p a) << (bw u c)))) + (bw t b)) div (2 ^ nat ((bw u c)))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw r (((xor (bw v (bw s ((bw p a) << (bw u c)))) (bw t b)) + (2 * (and (bw v (bw s ((bw p a) << (bw u c)))) (bw t b)))) div (2 ^ nat ((bw u c)))))" using add_as_xor_and that by (simp ; fail | simp only: add_as_xor_and; fail | simp add: add_as_xor_and; fail | blast; fail | metis)
    moreover have "... = (bw r (((xor (bw s ((bw p a) << (bw u c))) (bw t b)) + (2 * (and (bw v (bw s ((bw p a) << (bw u c)))) (bw t b)))) div (2 ^ nat ((bw u c)))))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw r (((xor (bw s ((bw p a) << (bw u c))) (bw t b)) + (2 * (and (bw s ((bw p a) << (bw u c))) (bw t b)))) div (2 ^ nat ((bw u c)))))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw r (((bw s ((bw p a) << (bw u c))) + (bw t b)) div (2 ^ nat ((bw u c)))))" using add_as_xor_and that by (simp ; fail | simp only: add_as_xor_and; fail | simp add: add_as_xor_and; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw v ((bw s ((bw p a) << (bw u c))) + (bw t b))) div (2 ^ nat ((bw u c)))))" using add_full_prec that by (simp ; fail | simp only: add_full_prec; fail | simp add: add_full_prec; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw v ((bw s ((bw p a) << (bw u c))) + (bw t b))) >> (bw u c)))" by (simp add: shr_def)
ultimately show ?thesis by argo
qed

end
