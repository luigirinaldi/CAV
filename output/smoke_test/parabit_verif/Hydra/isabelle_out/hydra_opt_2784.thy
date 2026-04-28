theory hydra_opt_2784
    imports  bitwise_lemmas arith_lemmas
begin
theorem hydra_opt_2784_th:
"(bw s (bw q (and (bw q (bw s (-1))) (bw q v3))))=(bw s (bw q v3))" (is "?lhs = ?rhs")
if "(q > s)" and "(q > 0)" and "(s > 0)"
for s q :: nat and v3 :: int
proof -
    have "?lhs = (bw s (bw q (and (bw q (bw q (bw s (-1)))) (bw q v3))))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw s (and (bw q (bw q (bw s (-1)))) (bw q v3)))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw s (and (bw q (bw s (-1))) (bw q v3)))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw s (and (bw q v3) (bw q (bw s (-1)))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw s (and (bw s (bw q v3)) (bw q (bw s (-1)))))" using that mod_prop_and by (blast; fail | metis)
    moreover have "... = (bw s (and (bw s v3) (bw q (bw s (-1)))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw s (and (bw s v3) (bw s (-1))))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw s (and (bw s v3) (bw s (not (bw s 0)))))" using not_0_allones that by (simp ; fail | simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (and (bw s v3) (bw s (not (bw s 0))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (and (bw s (bw q v3)) (bw s (not (bw s 0))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (and (bw s (bw q v3)) (bw s (-1)))" using not_0_allones that by (simp ; fail | simp only: not_0_allones; fail | simp add: not_0_allones; fail | blast; fail | metis)
    moreover have "... = (bw s (bw q v3))" using and_allones that by (simp ; fail | simp only: and_allones; fail | simp add: and_allones; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
