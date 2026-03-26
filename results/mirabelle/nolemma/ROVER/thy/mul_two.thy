theory mul_two
    imports rewrite_defs
begin
theorem mul_two_th:
"(bw r ((bw p a) * (bw 2 2)))=(bw r ((bw p a) << (bw 1 1)))" (is "?lhs = ?rhs")
if "(r > 0)" and "(2 > 0)" and "(p > 0)" and "(1 > 0)"
for r p :: nat and a :: int
proof -
  show ?thesis sorry
qed

end
