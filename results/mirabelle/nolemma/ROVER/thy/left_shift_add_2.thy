theory left_shift_add_2
    imports rewrite_defs
begin
theorem left_shift_add_2_th:
"(bw r ((bw s ((bw p a) + (bw q b))) << (bw t c)))=(bw r ((bw u ((bw p a) << (bw t c))) + (bw u ((bw q b) << (bw t c)))))" (is "?lhs = ?rhs")
if "(u >= r)" and "(s > p)" and "(s > q)" and "(q > 0)" and "(r > 0)" and "(t > 0)" and "(s > 0)" and "(p > 0)" and "(u > 0)"
for p s t r u q :: nat and a b c :: int
proof -
  show ?thesis sorry
qed

end
