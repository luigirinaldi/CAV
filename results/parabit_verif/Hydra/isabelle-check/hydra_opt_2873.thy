theory hydra_opt_2873
    imports  arith_lemmas bitwise_lemmas
begin
theorem hydra_opt_2873_th:
"(bw t (bw r (xor (bw r symconst_1) (bw r (bw t v0)))))=(bw t (xor (bw t v0) (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(t < r)" and "(r > t)" and "(t > 0)" and "(r > 0)"
for r t :: nat and symconst_1 v0 :: int
proof -
    have "?lhs = (bw t (xor (bw r symconst_1) (bw r (bw t v0))))" using xor_remove that by (simp ; fail | simp only: xor_remove; fail | simp add: xor_remove; fail | blast; fail | metis)
    moreover have "... = (bw t (xor (bw r symconst_1) (bw t v0)))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw t (xor (bw t (bw r symconst_1)) (bw t v0)))" using that mod_prop_xor by (blast; fail | metis)
    moreover have "... = (xor (bw t (bw r symconst_1)) (bw t v0))" using xor_remove that by (simp ; fail | simp only: xor_remove; fail | simp add: xor_remove; fail | blast; fail | metis)
    moreover have "... = (and (or (bw t (bw r symconst_1)) (bw t v0)) (or (bw t (not (bw t (bw r symconst_1)))) (bw t (not (bw t v0)))))" using xor_and_or that by (simp ; fail | simp only: xor_and_or; fail | simp add: xor_and_or; fail | blast; fail | metis)
    moreover have "... = (and (or (bw t v0) (bw t (bw r symconst_1))) (or (bw t (not (bw t (bw r symconst_1)))) (bw t (not (bw t v0)))))" using or.commute that by (simp ; fail | simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (and (or (bw t v0) (bw t (bw r symconst_1))) (or (bw t (not (bw t v0))) (bw t (not (bw t (bw r symconst_1))))))" using or.commute that by (simp ; fail | simp only: or.commute; fail | simp add: or.commute; fail | blast; fail | metis)
    moreover have "... = (xor (bw t v0) (bw t (bw r symconst_1)))" using xor_and_or that by (simp ; fail | simp only: xor_and_or; fail | simp add: xor_and_or; fail | blast; fail | metis)
    moreover have "... = (bw t (xor (bw t v0) (bw t (bw r symconst_1))))" using xor_remove that by (simp ; fail | simp only: xor_remove; fail | simp add: xor_remove; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
