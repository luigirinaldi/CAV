theory add_assoc_2
    imports rewrite_defs
begin
theorem add_assoc_2_th:
"(bw t ((bw u ((bw p a) + (bw r b))) + (bw s c)))=(bw t ((bw p a) + (bw q ((bw r b) + (bw s c)))))" (is "?lhs = ?rhs")
if "(r < q)" and "(s < q)" and "(u >= t)" and "(p > 0)" and "(s > 0)" and "(u > 0)" and "(r > 0)" and "(q > 0)" and "(t > 0)"
for t u p r q s :: nat and c a b :: int
proof -
  show ?thesis sorry
qed

end
