theory hydra_opt_2778
    imports  arith_lemmas signed_lemmas
begin
theorem hydra_opt_2778_th:
"(bw t (bw r (or (bw r symconst_1) (bw r (signed t (bw t v0))))))=(bw t (or (bw t v0) (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(t < r)" and "(r > t)" and "(t > 0)" and "(r > 0)"
for t r :: nat and v0 symconst_1 :: int
proof -
    have "?lhs = (bw t (or (bw r symconst_1) (bw r (signed t (bw t v0)))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw t (or (bw t (bw r symconst_1)) (bw r (signed t (bw t v0)))))" using that mod_prop_or by (blast; fail | metis)
    moreover have "... = (bw t (or (bw r (signed t (bw t v0))) (bw t (bw r symconst_1))))" using or.commute that by (simp ; fail | simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (bw t (or (bw t (bw r (signed t (bw t v0)))) (bw t (bw r symconst_1))))" using that mod_prop_or by (blast; fail | metis)
    moreover have "... = (bw t (or (bw t (signed t (bw t v0))) (bw t (bw r symconst_1))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw t (or (bw t v0) (bw t (bw r symconst_1))))" using redundant_signed that by (simp ; fail | simp only: redundant_signed; fail | simp add: redundant_signed; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
