theory hydra_opt_2744
    imports  arith_lemmas
begin
theorem hydra_opt_2744_th:
"(bw s (bw q (bw p newvar1)))=(bw s (bw p newvar1))" (is "?lhs = ?rhs")
if "(p < q)" and "(p < s)" and "(q > s)" and "(p > 0)" and "(s > 0)"
for q p s :: nat and newvar1 :: int
using that by (simp only: reduce_mod_bis)

end
