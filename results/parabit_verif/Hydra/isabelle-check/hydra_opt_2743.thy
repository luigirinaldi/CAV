theory hydra_opt_2743
    imports  arith_lemmas
begin
theorem hydra_opt_2743_th:
"(bw p (bw q (bw p newvar0)))=(bw p newvar0)" (is "?lhs = ?rhs")
if "(p < q)" and "(q > p)" and "(p > 0)"
for q p :: nat and newvar0 :: int
proof -
    have "?lhs = (bw p (bw p newvar0))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw p newvar0)" using mod_eq that by (simp ; fail | simp only: mod_eq; fail | simp add: mod_eq; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
