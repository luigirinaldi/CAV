theory add_zero
    imports rewrite_defs
begin
theorem add_zero_th:
"(bw p ((bw p a) + (bw q 0)))=(bw p a)" (is "?lhs = ?rhs")
if "(p > 0)" and "(q > 0)"
for p q :: nat and a :: int
proof -
  show ?thesis sorry
qed

end
