theory add_assoc_3
    imports rewrite_defs
begin
theorem add_assoc_3_th:
"(bw t ((bw u ((bw p a) + (bw r b))) + (bw s c)))=(bw t ((bw p a) + (bw q ((bw r b) + (bw s c)))))" (is "?lhs = ?rhs")
if "(q >= t)" and "(p < u)" and "(r < u)" and "(q > 0)" and "(p > 0)" and "(s > 0)" and "(r > 0)" and "(u > 0)" and "(t > 0)"
for r u p t s q :: nat and c b a :: int
proof -
  show ?thesis sorry
qed

end
