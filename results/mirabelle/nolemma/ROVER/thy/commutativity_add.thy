theory commutativity_add
    imports rewrite_defs
begin
theorem commutativity_add_th:
"(bw r ((bw p a) + (bw q b)))=(bw r ((bw q b) + (bw p a)))" (is "?lhs = ?rhs")
if "(r > 0)" and "(q > 0)" and "(p > 0)"
for q p r :: nat and a b :: int
proof -
  show ?thesis sorry
qed

end
