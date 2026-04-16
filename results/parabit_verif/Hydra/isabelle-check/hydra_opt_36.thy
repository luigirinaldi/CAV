theory hydra_opt_36
    imports  arith_lemmas
begin
theorem hydra_opt_36_th:
"(bw q ((bw q symconst_1) + (bw q ((bw q symconst_1) + (bw q v0)))))=(bw q ((bw q v0) + (bw q ((bw q symconst_1) + (bw q symconst_1)))))" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and symconst_1 v0 :: int
proof -
    have "?lhs = (bw q ((bw q ((bw q symconst_1) + (bw q v0))) + (bw q symconst_1)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q (symconst_1 + (bw q v0))) + (bw q symconst_1)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((symconst_1 + (bw q v0)) + (bw q symconst_1)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q (((bw q v0) + symconst_1) + (bw q symconst_1)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q v0) + (symconst_1 + (bw q symconst_1))))" using add.assoc that by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw q ((symconst_1 + (bw q symconst_1)) + (bw q v0)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q (symconst_1 + (bw q symconst_1))) + (bw q v0)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q ((bw q symconst_1) + (bw q symconst_1))) + (bw q v0)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw q ((bw q v0) + (bw q ((bw q symconst_1) + (bw q symconst_1)))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
