theory hydra_opt_2801
    imports  arith_lemmas signed_lemmas
begin
theorem hydra_opt_2801_th:
"(bw t (bw r (and (bw r symconst_1) (bw r (signed t (bw t v0))))))=(bw t (and (bw t v0) (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(t < r)" and "(r > t)" and "(t > 0)" and "(r > 0)"
for r t :: nat and v0 symconst_1 :: int
proof -
    have "?lhs = (bw t (and (bw r symconst_1) (bw r (signed t (bw t v0)))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw t (and (bw t (bw r symconst_1)) (bw r (signed t (bw t v0)))))" using that mod_prop_and by (blast; fail | metis)
    moreover have "... = (bw t (and (bw r (signed t (bw t v0))) (bw t (bw r symconst_1))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw t (and (bw t (bw r (signed t (bw t v0)))) (bw t (bw r symconst_1))))" using that mod_prop_and by (blast; fail | metis)
    moreover have "... = (bw t (and (bw t (signed t (bw t v0))) (bw t (bw r symconst_1))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw t (and (bw t v0) (bw t (bw r symconst_1))))" using redundant_signed that by (simp ; fail | simp only: redundant_signed; fail | simp add: redundant_signed; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
