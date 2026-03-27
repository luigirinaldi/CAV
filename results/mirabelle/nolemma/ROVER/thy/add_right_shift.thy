theory add_right_shift
    imports rewrite_defs
begin
theorem add_right_shift_th:
"(bw r ((bw p a) + (bw q ((bw t b) >> (bw u c)))))=(bw r ((bw v ((bw s ((bw p a) << (bw u c))) + (bw t b))) >> (bw u c)))" (is "?lhs = ?rhs")
if "(q >= t)" and "(s >= (p + ((2 ^ u) - 1)))" and "(v > s)" and "(v > t)" and "(q > 0)" and "(r > 0)" and "(u > 0)" and "(t > 0)" and "(s > 0)" and "(v > 0)" and "(p > 0)"
for t q p v u s r :: nat and c b a :: int
proof -
  show ?thesis sorry
qed

end
