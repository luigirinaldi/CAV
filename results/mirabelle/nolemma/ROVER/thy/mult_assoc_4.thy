theory mult_assoc_4
    imports rewrite_defs
begin
theorem mult_assoc_4_th:
"(bw t ((bw u ((bw p a) * (bw r b))) * (bw s c)))=(bw t ((bw p a) * (bw q ((bw r b) * (bw s c)))))" (is "?lhs = ?rhs")
if "((r + s) <= q)" and "((p + r) <= u)" and "(u > 0)" and "(t > 0)" and "(p > 0)" and "(r > 0)" and "(s > 0)" and "(q > 0)"
for p u s q r t :: nat and c a b :: int
proof -
  show ?thesis sorry
qed

end
