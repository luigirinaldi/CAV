theory hydra_opt_2746
    imports  signed_lemmas arith_lemmas
begin
theorem hydra_opt_2746_th:
"(bw p (bw q (signed p (bw p v0))))=(bw p v0)" (is "?lhs = ?rhs")
if "(p < q)" and "(q > p)" and "(p > 0)"
for p q :: nat and v0 :: int
proof -
    have "?lhs = (bw p (signed p (bw p v0)))" using reduce_mod_bis that by (simp ; fail | simp only: reduce_mod_bis; fail | simp add: reduce_mod_bis; fail | blast; fail | metis)
    moreover have "... = (bw p v0)" using redundant_signed that by (simp ; fail | simp only: redundant_signed; fail | simp add: redundant_signed; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
