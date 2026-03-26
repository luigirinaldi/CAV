theory mult_assoc_2
    imports rewrite_defs
begin
theorem mult_assoc_2_th:
"(bw t ((bw u ((bw p a) * (bw r b))) * (bw s c)))=(bw t ((bw p a) * (bw q ((bw r b) * (bw s c)))))" (is "?lhs = ?rhs")
if "(q >= t)" and "((p + r) <= u)" and "(t > 0)" and "(q > 0)" and "(u > 0)" and "(s > 0)" and "(r > 0)" and "(p > 0)"
for p u s r t q :: nat and a b c :: int
proof -
  show ?thesis sorry
qed

end
