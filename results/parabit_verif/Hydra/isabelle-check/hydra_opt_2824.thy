theory hydra_opt_2824
    imports  arith_lemmas
begin
theorem hydra_opt_2824_th:
"(bw s (bw q (bw p v0)))=(bw s (bw p v0))" (is "?lhs = ?rhs")
if "(p < q)" and "(p < s)" and "(q > s)" and "(s > 0)" and "(p > 0)"
for p q s :: nat and v0 :: int
using that by (simp only: reduce_mod_bis)

end
