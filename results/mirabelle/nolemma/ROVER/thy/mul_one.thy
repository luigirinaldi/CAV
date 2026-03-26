theory mul_one
    imports rewrite_defs
begin
theorem mul_one_th:
"(bw p ((bw p a) * (bw q 1)))=(bw p a)" (is "?lhs = ?rhs")
if "(p > 0)" and "(q > 0)"
for q p :: nat and a :: int
proof -
  show ?thesis sorry
qed

end
