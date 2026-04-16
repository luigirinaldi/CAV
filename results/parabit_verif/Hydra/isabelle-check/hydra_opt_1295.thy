theory hydra_opt_1295
    imports  bitwise_lemmas mixed_lemmas arith_lemmas
begin
theorem hydra_opt_1295_th:
"(bw q (xor (bw q (-1)) (bw q (and (bw q (-1)) (bw q newvar2)))))=(bw q ((bw q (-1)) - (bw q newvar2)))" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and newvar2 :: int
proof -
    have "?lhs = (bw q (xor (bw q (-1)) (bw q (bw q (and (bw q (-1)) (bw q newvar2))))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw q ((or (bw q (-1)) (bw q (bw q (and (bw q (-1)) (bw q newvar2))))) - (and (bw q (-1)) (bw q (bw q (and (bw q (-1)) (bw q newvar2)))))))" using xor_as_or_and that by (simp ; fail | simp only: xor_as_or_and; fail | simp add: xor_as_or_and; fail | blast; fail | metis)
    moreover have "... = (bw q ((or (bw q (-1)) (bw q (bw q (and (bw q (-1)) (bw q newvar2))))) - (bw q (and (bw q (-1)) (bw q (bw q (and (bw q (-1)) (bw q newvar2))))))))" using that mod_prop_sub_right by (blast; fail | metis)
    moreover have "... = (bw q ((or (bw q (-1)) (bw q (bw q (and (bw q (-1)) (bw q newvar2))))) - (bw q (and (bw q (bw q (and (bw q (-1)) (bw q newvar2)))) (bw q (-1))))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw q ((or (bw q (-1)) (bw q (bw q (and (bw q (-1)) (bw q newvar2))))) - (bw q (and (bw q (and (bw q (-1)) (bw q newvar2))) (bw q (-1))))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw q ((or (bw q (-1)) (bw q (bw q (and (bw q (-1)) (bw q newvar2))))) - (bw q (and (and (bw q (-1)) (bw q newvar2)) (bw q (-1))))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw q ((or (bw q (-1)) (bw q (bw q (and (bw q (-1)) (bw q newvar2))))) - (bw q (and (and (bw q newvar2) (bw q (-1))) (bw q (-1))))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw q ((or (bw q (-1)) (bw q (bw q (and (bw q (-1)) (bw q newvar2))))) - (bw q (and (bw q newvar2) (bw q (-1))))))" using and_allones that by (simp ; fail | simp only: and_allones; fail | simp add: and_allones; fail | blast; fail | metis)
    moreover have "... = (bw q ((or (bw q (-1)) (bw q (bw q (and (bw q (-1)) (bw q newvar2))))) - (bw q (bw q newvar2))))" using and_allones that by (simp ; fail | simp only: and_allones; fail | simp add: and_allones; fail | blast; fail | metis)
    moreover have "... = (bw q ((or (bw q (-1)) (bw q (bw q (and (bw q (-1)) (bw q newvar2))))) - (bw q newvar2)))" using diff_right_eq_prec that by (simp ; fail | simp only: diff_right_eq_prec; fail | simp add: diff_right_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((or (bw q (-1)) (bw q (bw q (and (bw q (-1)) (bw q newvar2))))) - newvar2))" using diff_right_eq_prec that by (simp ; fail | simp only: diff_right_eq_prec; fail | simp add: diff_right_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((or (bw q (bw q (and (bw q (-1)) (bw q newvar2)))) (bw q (-1))) - newvar2))" using or.commute that by (simp ; fail | simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (bw q ((or (bw q (and (bw q (-1)) (bw q newvar2))) (bw q (-1))) - newvar2))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw q ((or (and (bw q (-1)) (bw q newvar2)) (bw q (-1))) - newvar2))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw q ((or (and (bw q newvar2) (bw q (-1))) (bw q (-1))) - newvar2))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (bw q ((or (bw q newvar2) (bw q (-1))) - newvar2))" using and_allones that by (simp ; fail | simp only: and_allones; fail | simp add: and_allones; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q (-1)) - newvar2))" using or_allones that by (simp ; fail | simp only: or_allones; fail | simp add: or_allones; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q (-1)) - (bw q newvar2)))" using diff_right_eq_prec that by (simp ; fail | simp only: diff_right_eq_prec; fail | simp add: diff_right_eq_prec; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
