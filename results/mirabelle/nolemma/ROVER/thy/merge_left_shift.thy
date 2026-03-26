theory merge_left_shift
    imports rewrite_defs
begin
theorem merge_left_shift_th:
"(bw r ((bw u ((bw p a) << (bw q b))) << (bw s c)))=(bw r ((bw p a) << (bw t ((bw q b) + (bw s c)))))" (is "?lhs = ?rhs")
if "(u >= r)" and "(t > s)" and "(t > q)" and "(u > 0)" and "(r > 0)" and "(t > 0)" and "(p > 0)" and "(s > 0)" and "(q > 0)"
for p q r t s u :: nat and c a b :: int
proof -
  show ?thesis sorry
qed

end
