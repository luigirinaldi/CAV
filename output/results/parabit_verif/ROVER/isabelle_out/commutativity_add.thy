theory commutativity_add
    imports rewrite_defs
begin
theorem commutativity_add_th:
"(bw r ((bw p a) + (bw q b)))=(bw r ((bw q b) + (bw p a)))" (is "?lhs = ?rhs")
if "(p > 0)" and "(q > 0)" and "(r > 0)"
for r p q :: nat and b a :: int
using that by (simp only: add.commute)

end
