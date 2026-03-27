theory hydra_opt_2748
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2748_th:
"(bw u (bw r (sel (bw 1 newvar1) (bw r symconst_1) (bw r symconst_2))))=(bw u (sel (bw 1 newvar1) (bw u (bw r symconst_1)) (bw u (bw r symconst_2))))" (is "?lhs = ?rhs")
if "(r > u)" and "(r > 0)" and "(1 > 0)" and "(u > 0)"
for u r :: nat and symconst_2 newvar1 symconst_1 :: int
proof -
  show ?thesis sorry
qed

end
