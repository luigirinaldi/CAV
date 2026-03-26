theory left_shift_mult
    imports rewrite_defs
begin
theorem left_shift_mult_th:
"(bw r ((bw t ((bw p a) * (bw q b))) << (bw u c)))=(bw r ((bw v ((bw p a) << (bw u c))) * (bw q b)))" (is "?lhs = ?rhs")
if "(t >= r)" and "(v >= r)" and "(t > 0)" and "(p > 0)" and "(v > 0)" and "(u > 0)" and "(q > 0)" and "(r > 0)"
for t p q v u r :: nat and c b a :: int
proof -
  show ?thesis sorry
qed

end
