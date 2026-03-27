theory left_shift_mult
    imports rewrite_defs
begin
theorem left_shift_mult_th:
"(bw r ((bw t ((bw p a) * (bw q b))) << (bw u c)))=(bw r ((bw v ((bw p a) << (bw u c))) * (bw q b)))" (is "?lhs = ?rhs")
if "(t >= r)" and "(v >= r)" and "(r > 0)" and "(q > 0)" and "(p > 0)" and "(t > 0)" and "(u > 0)" and "(v > 0)"
for r v u t p q :: nat and b c a :: int
proof -
  show ?thesis sorry
qed

end
