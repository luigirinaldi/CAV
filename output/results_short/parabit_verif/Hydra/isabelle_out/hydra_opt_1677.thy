theory hydra_opt_1677
    imports  arith_lemmas
begin
theorem hydra_opt_1677_th:
"(bw r (sel (bw 1 newvar3) (bw r 1) (bw r 0)))=(bw r (bw 1 newvar3))" (is "?lhs = ?rhs")
if "(1 < r)" and "(r > 0)" and "(1 > 0)"
for r :: nat and newvar3 :: int
proof -
have fact_0: "((1::int) >= (1::int))" by simp
note inferred_facts =fact_0 
    have "?lhs = (bw r (sel (bw 1 newvar3) 1 (bw r 0)))" using bw_1 that by (simp ; fail | simp only: bw_1; fail | simp add: bw_1; fail | blast; fail | metis)
    moreover have "... = (bw r ((1 * (bw 1 (bw 1 newvar3))) + ((bw r 0) * (bw 1 (not (bw 1 (bw 1 newvar3)))))))" by (simp add: sel_def)
    moreover have "... = (bw r (((bw r 0) * (bw 1 (not (bw 1 (bw 1 newvar3))))) + (1 * (bw 1 (bw 1 newvar3)))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw r ((0 * (bw 1 (not (bw 1 (bw 1 newvar3))))) + (1 * (bw 1 (bw 1 newvar3)))))" using bw_0 that by (simp ; fail | simp only: bw_0; fail | simp add: bw_0; fail | blast; fail | metis)
    moreover have "... = (bw r (0 + (1 * (bw 1 (bw 1 newvar3)))))" using mult_0 that by (simp ; fail | simp only: mult_0; fail | simp add: mult_0; fail | blast; fail | metis)
    moreover have "... = (bw r (0 + (bw 1 (bw 1 newvar3))))" using mult_1 that by (simp ; fail | simp only: mult_1; fail | simp add: mult_1; fail | blast; fail | metis)
    moreover have "... = (bw r (0 + (bw 1 newvar3)))" using mod_eq that by (simp ; fail | simp only: mod_eq; fail | simp add: mod_eq; fail | blast; fail | metis)
    moreover have "... = (bw r (bw 1 newvar3))" using add_0 that by (simp ; fail | simp only: add_0; fail | simp add: add_0; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
