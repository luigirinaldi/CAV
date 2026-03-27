theory hydra_opt_2456
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2456_th:
"(bw u (bw r (sel (bw 1 v0) (bw r symconst_1) (bw r symconst_2))))=(bw u (sel (bw 1 v0) (bw u (bw r symconst_1)) (bw u (bw r symconst_2))))" (is "?lhs = ?rhs")
if "(r < u)" and "(1 > 0)" and "(r > 0)" and "(u > 0)"
for u r :: nat and symconst_2 v0 symconst_1 :: int
proof -
  show ?thesis sorry
qed

end
