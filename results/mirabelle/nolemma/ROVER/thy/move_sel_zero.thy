theory move_sel_zero
    imports rewrite_defs
begin
theorem move_sel_zero_th:
"(bw r ((bw p (sel (bw 1 b) (bw p 0) (bw p a))) * (bw q c)))=(bw r ((bw p a) * (bw q (sel (bw 1 b) (bw q 0) (bw q c)))))" (is "?lhs = ?rhs")
if "(p >= 1)" and "(q >= 1)" and "(r > 0)" and "(q > 0)" and "(1 > 0)" and "(p > 0)"
for r p q :: nat and b a c :: int
proof -
  show ?thesis sorry
qed

end
