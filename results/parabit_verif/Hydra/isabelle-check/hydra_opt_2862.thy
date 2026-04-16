theory hydra_opt_2862
    imports  bitwise_lemmas arith_lemmas signed_lemmas
begin
theorem hydra_opt_2862_th:
"(bw t (bw r ((bw r symconst_1) + (bw r (signed t (bw t v0))))))=(bw t ((bw t v0) + (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(t < r)" and "(r > t)" and "(r > 0)" and "(t > 0)"
for t r :: nat and symconst_1 v0 :: int
proof -
    have "?lhs = (bw t (bw r (symconst_1 + (bw r (signed t (bw t v0))))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw t (symconst_1 + (bw r (signed t (bw t v0)))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw r (signed t (bw t v0))) + symconst_1))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw t (bw r (signed t (bw t v0)))) + symconst_1))" using that bw_def mod_prop_sum by (presburger ; fail | blast)
    moreover have "... = (bw t ((bw t (not (bw t (not (bw t (bw r (signed t (bw t v0)))))))) + symconst_1))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw t ((not (bw t (not (bw t (bw r (signed t (bw t v0))))))) + symconst_1))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw t ((not (bw t (not (bw t (signed t (bw t v0)))))) + symconst_1))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw t ((not (bw t (not (bw t v0)))) + symconst_1))" using redundant_signed that by (simp ; fail | simp only: redundant_signed; fail | simp add: redundant_signed; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw t (not (bw t (not (bw t v0))))) + symconst_1))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw t v0) + symconst_1))" using not_bw_not that by (simp ; fail | simp only: not_bw_not; fail | simp add: not_bw_not; fail | blast; fail | metis)
    moreover have "... = (bw t (symconst_1 + (bw t v0)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw t symconst_1) + (bw t v0)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw t (bw r symconst_1)) + (bw t v0)))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw t ((bw t v0) + (bw t (bw r symconst_1))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
