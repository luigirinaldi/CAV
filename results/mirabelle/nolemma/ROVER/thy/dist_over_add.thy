theory dist_over_add
    imports rewrite_defs
begin
theorem dist_over_add_th:
"(bw r ((bw p a) * (bw q ((bw s b) + (bw t c)))))=(bw r ((bw u ((bw p a) * (bw s b))) + (bw v ((bw p a) * (bw t c)))))" (is "?lhs = ?rhs")
if "(q >= r)" and "(u >= r)" and "(v >= r)" and "(s > 0)" and "(r > 0)" and "(p > 0)" and "(v > 0)" and "(t > 0)" and "(u > 0)" and "(q > 0)"
for r q u s p v t :: nat and c a b :: int
proof -
  show ?thesis sorry
qed

end
