theory mul_two
    imports rewrite_defs
begin
theorem mul_two_th:
"(bw r ((bw p a) * (bw 2 2)))=(bw r ((bw p a) << (bw 1 1)))" (is "?lhs = ?rhs")
if "(p > 0)" and "(1 > 0)" and "(r > 0)" and "(2 > 0)"
for p r :: nat and a :: int
proof -
  show ?thesis sorry
qed

end
