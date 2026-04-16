theory hydra_opt_1106
    imports  bitwise_lemmas
begin
theorem hydra_opt_1106_th:
"(bw s (or (bw s (and (bw s v0) (bw s symconst_2))) (bw s (and (bw s symconst_1) (bw s (and (bw s v0) (bw s symconst_3)))))))=(bw s (and (bw s v0) (bw s (or (bw s symconst_2) (bw s (and (bw s symconst_1) (bw s symconst_3)))))))" (is "?lhs = ?rhs")
if "(s > 0)"
for s :: nat and v0 symconst_1 symconst_3 symconst_2 :: int
proof -
    have "?lhs = (bw s (or (bw s (bw s (and (bw s v0) (bw s symconst_2)))) (bw s (and (bw s symconst_1) (bw s (and (bw s v0) (bw s symconst_3)))))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw s (or (bw s (bw s (and (bw s v0) (bw s symconst_2)))) (bw s (bw s (and (bw s symconst_1) (bw s (and (bw s v0) (bw s symconst_3))))))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (or (bw s (bw s (and (bw s v0) (bw s symconst_2)))) (bw s (bw s (and (bw s symconst_1) (bw s (and (bw s v0) (bw s symconst_3)))))))" using or_remove that by (simp ; fail | simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (or (bw s (and (bw s v0) (bw s symconst_2))) (bw s (bw s (and (bw s symconst_1) (bw s (and (bw s v0) (bw s symconst_3)))))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (or (and (bw s v0) (bw s symconst_2)) (bw s (bw s (and (bw s symconst_1) (bw s (and (bw s v0) (bw s symconst_3)))))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (or (and (bw s v0) (bw s symconst_2)) (bw s (and (bw s symconst_1) (bw s (and (bw s v0) (bw s symconst_3))))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (or (and (bw s v0) (bw s symconst_2)) (and (bw s symconst_1) (bw s (and (bw s v0) (bw s symconst_3)))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (or (and (bw s v0) (bw s symconst_2)) (and (bw s (and (bw s v0) (bw s symconst_3))) (bw s symconst_1)))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (or (and (bw s v0) (bw s symconst_2)) (and (and (bw s v0) (bw s symconst_3)) (bw s symconst_1)))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (or (and (bw s v0) (bw s symconst_2)) (and (bw s v0) (and (bw s symconst_3) (bw s symconst_1))))" using and_assoc that by (simp ; fail | simp only: and_assoc; fail | simp add: and_assoc; fail | blast; fail | metis)
    moreover have "... = (or (and (bw s v0) (bw s symconst_2)) (and (bw s v0) (and (bw s symconst_1) (bw s symconst_3))))" using and.commute that by (simp ; fail | simp only: and.commute; fail | simp add: and.commute; fail | blast; fail | metis)
    moreover have "... = (or (and (bw s v0) (bw s symconst_2)) (and (bw s v0) (bw s (and (bw s symconst_1) (bw s symconst_3)))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (and (bw s v0) (or (bw s symconst_2) (bw s (and (bw s symconst_1) (bw s symconst_3)))))" using and_distrib that by (simp ; fail | simp only: and_distrib; fail | simp add: and_distrib; fail | blast; fail | metis)
    moreover have "... = (and (bw s v0) (or (bw s symconst_2) (bw s (bw s (and (bw s symconst_1) (bw s symconst_3))))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (and (bw s v0) (bw s (or (bw s symconst_2) (bw s (bw s (and (bw s symconst_1) (bw s symconst_3)))))))" using or_remove that by (simp ; fail | simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (and (bw s v0) (bw s (or (bw s symconst_2) (bw s (and (bw s symconst_1) (bw s symconst_3))))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
    moreover have "... = (bw s (and (bw s v0) (bw s (or (bw s symconst_2) (bw s (and (bw s symconst_1) (bw s symconst_3)))))))" using and_remove that by (simp ; fail | simp only: and_remove; fail | simp add: and_remove; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
