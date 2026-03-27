theory add_assoc_1
    imports rewrite_defs
begin
theorem add_assoc_1_th:
"(bw t ((bw u ((bw p a) + (bw r b))) + (bw s c)))=(bw t ((bw p a) + (bw q ((bw r b) + (bw s c)))))" (is "?lhs = ?rhs")
if "(q >= t)" and "(u >= t)" and "(t > 0)" and "(r > 0)" and "(s > 0)" and "(u > 0)" and "(q > 0)" and "(p > 0)"
for u p s r t q :: nat and c a b :: int
proof -
  show ?thesis sorry
qed

end
