theory hydra_opt_54
    imports  arith_lemmas
begin
theorem hydra_opt_54_th:
"(bw s ((bw s symconst_2) + (bw s ((bw s symconst_3) + (bw s ((bw s v0) + (bw s symconst_1)))))))=(bw s ((bw s v0) + (bw s ((bw s symconst_3) + (bw s ((bw s symconst_2) + (bw s symconst_1)))))))" (is "?lhs = ?rhs")
if "(s > 0)"
for s :: nat and symconst_2 symconst_3 symconst_1 v0 :: int
proof -
    have "?lhs = (bw s ((bw s ((bw s symconst_3) + (bw s ((bw s v0) + (bw s symconst_1))))) + (bw s symconst_2)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw s ((bw s ((bw s ((bw s v0) + (bw s symconst_1))) + (bw s symconst_3))) + (bw s symconst_2)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw s ((bw s ((bw s (v0 + (bw s symconst_1))) + (bw s symconst_3))) + (bw s symconst_2)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw s ((bw s ((v0 + (bw s symconst_1)) + (bw s symconst_3))) + (bw s symconst_2)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw s (((v0 + (bw s symconst_1)) + (bw s symconst_3)) + (bw s symconst_2)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw s ((v0 + (bw s symconst_1)) + ((bw s symconst_3) + (bw s symconst_2))))" using add.assoc that by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw s ((v0 + (bw s symconst_1)) + ((bw s symconst_2) + (bw s symconst_3))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw s ((bw s (v0 + (bw s symconst_1))) + ((bw s symconst_2) + (bw s symconst_3))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw s ((bw s ((bw s v0) + (bw s symconst_1))) + ((bw s symconst_2) + (bw s symconst_3))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw s (((bw s v0) + (bw s symconst_1)) + ((bw s symconst_2) + (bw s symconst_3))))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw s (((bw s v0) + (bw s symconst_1)) + ((bw s symconst_3) + (bw s symconst_2))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw s ((((bw s v0) + (bw s symconst_1)) + (bw s symconst_3)) + (bw s symconst_2)))" using add.assoc that by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw s ((bw s symconst_2) + (((bw s v0) + (bw s symconst_1)) + (bw s symconst_3))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw s ((bw s symconst_2) + ((bw s v0) + ((bw s symconst_1) + (bw s symconst_3)))))" using add.assoc that by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw s ((bw s symconst_2) + (((bw s symconst_1) + (bw s symconst_3)) + (bw s v0))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw s (((bw s symconst_2) + ((bw s symconst_1) + (bw s symconst_3))) + (bw s v0)))" using add.assoc that by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw s ((((bw s symconst_2) + (bw s symconst_1)) + (bw s symconst_3)) + (bw s v0)))" using add.assoc that by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
    moreover have "... = (bw s ((bw s (((bw s symconst_2) + (bw s symconst_1)) + (bw s symconst_3))) + (bw s v0)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw s ((bw s ((bw s ((bw s symconst_2) + (bw s symconst_1))) + (bw s symconst_3))) + (bw s v0)))" using add_eq_prec that by (simp ; fail | simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw s ((bw s ((bw s symconst_3) + (bw s ((bw s symconst_2) + (bw s symconst_1))))) + (bw s v0)))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw s ((bw s v0) + (bw s ((bw s symconst_3) + (bw s ((bw s symconst_2) + (bw s symconst_1)))))))" using add.commute that by (simp ; fail | simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
