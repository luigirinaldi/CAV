theory hydra_opt_1116
    imports  bitwise_lemmas
begin
theorem hydra_opt_1116_th:
"(bw q (or (bw q symconst_1) (bw q (or (bw q symconst_2) (bw q v0)))))=(bw q (or (bw q v0) (bw q (or (bw q symconst_1) (bw q symconst_2)))))" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and v0 symconst_1 symconst_2 :: int
proof -
    have "?lhs = (or (bw q symconst_1) (bw q (or (bw q symconst_2) (bw q v0))))" using or_remove that by (simp ; fail | simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (or (bw q symconst_1) (or (bw q symconst_2) (bw q v0)))" using or_remove that by (simp ; fail | simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (or (or (bw q symconst_1) (bw q symconst_2)) (bw q v0))" using or_assoc that by (simp ; fail | simp only: or_assoc; fail | simp add: or_assoc; fail | blast; fail | metis)
    moreover have "... = (or (bw q (or (bw q symconst_1) (bw q symconst_2))) (bw q v0))" using or_remove that by (simp ; fail | simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
    moreover have "... = (or (bw q v0) (bw q (or (bw q symconst_1) (bw q symconst_2))))" using or.commute that by (simp ; fail | simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (bw q (or (bw q v0) (bw q (or (bw q symconst_1) (bw q symconst_2)))))" using or_remove that by (simp ; fail | simp only: or_remove; fail | simp add: or_remove; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
