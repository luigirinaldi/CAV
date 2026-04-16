theory hydra_opt_2626
    imports  arith_lemmas
begin
theorem hydra_opt_2626_th:
"(bw s (bw q (bw p v0)))=(bw s (bw p v0))" (is "?lhs = ?rhs")
if "(p < q)" and "(p < s)" and "(q < s)" and "(p > 0)" and "(s > 0)"
for p q s :: nat and v0 :: int
using that by (simp only: reduce_mod)

end
