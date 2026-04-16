theory hydra_opt_2777
    imports  arith_lemmas signed_lemmas
begin
theorem hydra_opt_2777_th:
"(bw r (bw s (and (bw s (signed r (bw r v0))) (bw s (signed r (bw r v2))))))=(bw r (and (bw r v0) (bw r v2)))" (is "?lhs = ?rhs")
if "(r < s)" and "(s > r)" and "(r > 0)" and "(s > 0)"
for s r :: nat and v0 v2 :: int
proof -
    have "?lhs = (bw r (and (bw s (signed r (bw r v0))) (bw s (signed r (bw r v2)))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw r (and (bw r (bw s (signed r (bw r v0)))) (bw s (signed r (bw r v2)))))" using that mod_prop_and by (blast; fail | metis)
    moreover have "... = (bw r (and (bw s (signed r (bw r v2))) (bw r (bw s (signed r (bw r v0))))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw r (and (bw r (bw s (signed r (bw r v2)))) (bw r (bw s (signed r (bw r v0))))))" using that mod_prop_and by (blast; fail | metis)
    moreover have "... = (bw r (and (bw r (signed r (bw r v2))) (bw r (bw s (signed r (bw r v0))))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw r (and (bw r v2) (bw r (bw s (signed r (bw r v0))))))" using redundant_signed that by (simp ; fail | simp only: redundant_signed; fail | simp add: redundant_signed; fail | blast; fail | metis)
    moreover have "... = (bw r (and (bw r v2) (bw r (signed r (bw r v0)))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw r (and (bw r v2) (bw r v0)))" using redundant_signed that by (simp ; fail | simp only: redundant_signed; fail | simp add: redundant_signed; fail | blast; fail | metis)
    moreover have "... = (bw r (and (bw r v0) (bw r v2)))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
