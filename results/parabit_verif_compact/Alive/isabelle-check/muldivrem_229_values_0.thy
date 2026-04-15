theory muldivrem_229_values_0
    imports  arith_lemmas
begin
theorem muldivrem_229_values_0_th:
"(bw k ((bw k ((bw k var_X) + (bw k C1))) * (bw k var_Op1)))=(bw k ((bw k ((bw k var_X) * (bw k var_Op1))) + (bw k ((bw k C1) * (bw k var_Op1)))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_X C1 var_Op1 :: int
proof -
    have "?lhs = (bw k (((bw k var_X) + (bw k C1)) * (bw k var_Op1)))" using mul_eq_prec that by (simp only: mul_eq_prec; fail | simp add: mul_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k var_Op1) * ((bw k var_X) + (bw k C1))))" using mult.commute that by (simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k var_Op1) * ((bw k C1) + (bw k var_X))))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k (((bw k var_Op1) * (bw k C1)) + ((bw k var_Op1) * (bw k var_X))))" using int_distrib that by (simp only: int_distrib; fail | simp add: int_distrib; fail | blast; fail | metis)
    moreover have "... = (bw k (((bw k C1) * (bw k var_Op1)) + ((bw k var_Op1) * (bw k var_X))))" using mult.commute that by (simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw k (((bw k C1) * (bw k var_Op1)) + ((bw k var_X) * (bw k var_Op1))))" using mult.commute that by (simp only: mult.commute; fail | simp add: mult.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k C1) * (bw k var_Op1))) + ((bw k var_X) * (bw k var_Op1))))" using add_eq_prec that by (simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
    moreover have "... = (bw k (((bw k var_X) * (bw k var_Op1)) + (bw k ((bw k C1) * (bw k var_Op1)))))" using add.commute that by (simp only: add.commute; fail | simp add: add.commute; fail | blast; fail | metis)
    moreover have "... = (bw k ((bw k ((bw k var_X) * (bw k var_Op1))) + (bw k ((bw k C1) * (bw k var_Op1)))))" using add_eq_prec that by (simp only: add_eq_prec; fail | simp add: add_eq_prec; fail | blast; fail | metis)
ultimately show ?thesis by argo
qed

end
