theory merge_right_shift
    imports rewrite_defs
begin
theorem merge_right_shift_th:
"(bw r ((bw u ((bw p a) >> (bw q b))) >> (bw s c)))=(bw r ((bw p a) >> (bw t ((bw q b) + (bw s c)))))" (is "?lhs = ?rhs")
if "(u >= p)" and "(t > s)" and "(t > q)" and "(s > 0)" and "(p > 0)" and "(r > 0)" and "(u > 0)" and "(q > 0)" and "(t > 0)"
for p u t s q r :: nat and b a c :: int
proof -
  show ?thesis sorry
qed

end
