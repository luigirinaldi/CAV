theory hydra_opt_2852
    imports  arith_lemmas
begin
theorem hydra_opt_2852_th:
"(bw q (bw r ((bw r symconst_1) - (bw r (bw q v0)))))=(bw q ((bw q (bw r symconst_1)) - (bw q v0)))" (is "?lhs = ?rhs")
if "(q < r)" and "(r > q)" and "(q > 0)" and "(r > 0)"
for r q :: nat and symconst_1 v0 :: int
proof -
    have "?lhs = (bw q ((bw r symconst_1) - (bw r (bw q v0))))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw r symconst_1) - (bw q v0)))" using reduce_mod that by (simp ; fail | simp only: reduce_mod; fail | simp add: reduce_mod; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q (bw r symconst_1)) - (bw q v0)))" using diff_left_eq_prec that by (simp ; fail | simp only: diff_left_eq_prec; fail | simp add: diff_left_eq_prec; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
