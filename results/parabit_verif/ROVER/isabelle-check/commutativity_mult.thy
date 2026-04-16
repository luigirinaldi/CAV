theory commutativity_mult
    imports rewrite_defs
begin
theorem commutativity_mult_th:
"(bw r ((bw p a) * (bw q b)))=(bw r ((bw q b) * (bw p a)))" (is "?lhs = ?rhs")
if "(r > 0)" and "(q > 0)" and "(p > 0)"
for r p q :: nat and a b :: int
using that by (simp only: mult.commute)

end
