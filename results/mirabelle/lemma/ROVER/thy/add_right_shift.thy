theory add_right_shift
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem add_right_shift_th:
"(bw r ((bw p a) + (bw q ((bw t b) >> (bw u c)))))=(bw r ((bw v ((bw s ((bw p a) << (bw u c))) + (bw t b))) >> (bw u c)))" (is "?lhs = ?rhs")
if "(q >= t)" and "(s >= (p + ((2 ^ u) - 1)))" and "(v > s)" and "(v > t)" and "(p > 0)" and "(u > 0)" and "(s > 0)" and "(r > 0)" and "(t > 0)" and "(q > 0)" and "(v > 0)"
for v q p s t u r :: nat and c b a :: int
proof -
  show ?thesis sorry
qed

end
