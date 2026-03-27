theory dist_over_add
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem dist_over_add_th:
"(bw r ((bw p a) * (bw q ((bw s b) + (bw t c)))))=(bw r ((bw u ((bw p a) * (bw s b))) + (bw v ((bw p a) * (bw t c)))))" (is "?lhs = ?rhs")
if "(q >= r)" and "(u >= r)" and "(v >= r)" and "(q > 0)" and "(u > 0)" and "(t > 0)" and "(r > 0)" and "(s > 0)" and "(p > 0)" and "(v > 0)"
for v r q s p t u :: nat and b c a :: int
proof -
  show ?thesis sorry
qed

end
