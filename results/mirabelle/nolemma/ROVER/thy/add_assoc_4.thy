theory add_assoc_4
    imports rewrite_defs
begin
theorem add_assoc_4_th:
"(bw t ((bw u ((bw p a) + (bw r b))) + (bw s c)))=(bw t ((bw p a) + (bw q ((bw r b) + (bw s c)))))" (is "?lhs = ?rhs")
if "(r < q)" and "(s < q)" and "(p < u)" and "(r < u)" and "(u > 0)" and "(s > 0)" and "(p > 0)" and "(t > 0)" and "(q > 0)" and "(r > 0)"
for u s r p t q :: nat and c b a :: int
proof -
  show ?thesis sorry
qed

end
