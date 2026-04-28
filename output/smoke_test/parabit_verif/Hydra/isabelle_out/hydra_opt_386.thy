theory hydra_opt_386
    imports  arith_lemmas
begin
theorem hydra_opt_386_th:
"(bw q ((bw q newvar5) * (bw q ((bw q 1) << (bw q newvar2)))))=(bw q ((bw q newvar5) << (bw q newvar2)))" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and newvar5 newvar2 :: int
proof -
    have "?lhs = (bw q ((bw q ((bw q 1) << (bw q newvar2))) * (bw q newvar5)))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q ((bw q (bw q 1)) << (bw q newvar2))) * (bw q newvar5)))" using bw_1 that by (simp ; fail | simp only: bw_1; fail | simp add: bw_1; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q ((bw q (bw q 1)) * (2 ^ nat ((bw q newvar2))))) * (bw q newvar5)))" by (simp add: shl_def)
    moreover have "... = (bw q ((bw q ((bw q 1) * (2 ^ nat ((bw q newvar2))))) * (bw q newvar5)))" using bw_1 that by (simp ; fail | simp only: bw_1; fail | simp add: bw_1; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q (1 * (2 ^ nat ((bw q newvar2))))) * (bw q newvar5)))" using bw_1 that by (simp ; fail | simp only: bw_1; fail | simp add: bw_1; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q (2 ^ nat ((bw q newvar2)))) * (bw q newvar5)))" using mult_1 that by (simp ; fail | simp only: mult_1; fail | simp add: mult_1; fail | blast; fail | metis)
    moreover have "... = (bw q ((2 ^ nat ((bw q newvar2))) * (bw q newvar5)))" using mul_eq_prec that by (simp ; fail | simp only: mul_eq_prec; fail | simp add: mul_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q newvar5) * (2 ^ nat ((bw q newvar2)))))" using mult.commute that by (simp ; fail | simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q newvar5) << (bw q newvar2)))" by (simp add: shl_def)
ultimately show ?thesis by argo
qed

end
