theory mult_assoc_1
    imports rewrite_defs
begin
theorem mult_assoc_1_th:
"(bw t ((bw u ((bw p a) * (bw r b))) * (bw s c)))=(bw t ((bw p a) * (bw q ((bw r b) * (bw s c)))))" (is "?lhs = ?rhs")
if "(q >= t)" and "(u >= t)" and "(r > 0)" and "(u > 0)" and "(t > 0)" and "(s > 0)" and "(q > 0)" and "(p > 0)"
for s r t u q p :: nat and a c b :: int
proof -
  show ?thesis sorry
qed

end
