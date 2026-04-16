theory merge_right_shift
    imports  arith_lemmas
begin
theorem merge_right_shift_th:
"(bw r ((bw u ((bw p a) >> (bw q b))) >> (bw s c)))=(bw r ((bw p a) >> (bw t ((bw q b) + (bw s c)))))" (is "?lhs = ?rhs")
if "(u >= p)" and "(t > s)" and "(t > q)" and "(t > 0)" and "(q > 0)" and "(p > 0)" and "(u > 0)" and "(s > 0)" and "(r > 0)"
for s r p u t q :: nat and c a b :: int
proof -
have fact_0: "(((2::int) ^ nat ((bw s c))) > (0::int))" by simp
note inferred_facts =fact_0 
    have "?lhs = (bw r ((bw u ((bw p a) >> (bw q b))) div (2 ^ nat ((bw s c)))))" by (simp add: shr_def)
    moreover have "... = (bw r ((bw u ((bw p a) div (2 ^ nat ((bw q b))))) div (2 ^ nat ((bw s c)))))" by (simp add: shr_def)
    moreover have "... = (bw r (((bw p a) div (2 ^ nat ((bw q b)))) div (2 ^ nat ((bw s c)))))" using div_gte that by (simp ; fail | simp only: div_gte; fail | simp add: div_gte; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw p a) div ((2 ^ nat ((bw q b))) * (2 ^ nat ((bw s c))))))" using that inferred_facts by (simp only: div_pow_join)
    moreover have "... = (bw r ((bw p a) div (2 ^ nat (((bw q b) + (bw s c))))))" using bw_pow_sum that by (simp ; fail | simp only: bw_pow_sum; fail | simp add: bw_pow_sum; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw p a) div (2 ^ nat ((bw t ((bw q b) + (bw s c)))))))" using add_full_prec that by (simp ; fail | simp only: add_full_prec; fail | simp add: add_full_prec; fail | blast; fail | metis)
    moreover have "... = (bw r ((bw p a) >> (bw t ((bw q b) + (bw s c)))))" by (simp add: shr_def)
ultimately show ?thesis by argo
qed

end
