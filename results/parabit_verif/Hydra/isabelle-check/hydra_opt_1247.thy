theory hydra_opt_1247
    imports  bitwise_lemmas
begin
theorem hydra_opt_1247_th:
"(bw q (not (bw q (not (bw q newvar4)))))=(bw q newvar4)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and newvar4 :: int
using that by (simp only: not_bw_not)

end
