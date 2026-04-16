theory hydra_opt_2695
    imports  signed_lemmas
begin
theorem hydra_opt_2695_th:
"(bw s (signed q (bw q (signed p (bw p v0)))))=(bw s (signed p (bw p v0)))" (is "?lhs = ?rhs")
if "(p < q)" and "(p < s)" and "(q < s)" and "(q > 0)" and "(s > 0)" and "(p > 0)"
for p s q :: nat and v0 :: int
proof -
    have "?lhs = (bw s (signed q (bw q ((bw p (2 * (bw (p - 1) (bw p v0)))) - (bw p (bw p v0))))))" by (simp add: signed_def)
    moreover have "... = (bw s ((bw p (2 * (bw (p - 1) (bw p v0)))) - (bw p (bw p v0))))" using signed_of_diff that by (simp ; fail | simp only: signed_of_diff; fail | simp add: signed_of_diff; fail | blast; fail | metis)
    moreover have "... = (bw s (signed p (bw p v0)))" by (simp add: signed_def)
ultimately show ?thesis by argo
qed

end
