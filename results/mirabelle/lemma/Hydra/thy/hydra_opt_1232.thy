theory hydra_opt_1232
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_1232_th:
"(bw r (xor (bw r symconst_3) (bw r (sel (bw 1 newvar1) (bw r symconst_1) (bw r symconst_2)))))=(bw r (sel (bw 1 newvar1) (bw r (xor (bw r symconst_3) (bw r symconst_1))) (bw r (xor (bw r symconst_3) (bw r symconst_2)))))" (is "?lhs = ?rhs")
if "(r > 0)" and "(1 > 0)"
for r :: nat and symconst_2 symconst_3 newvar1 symconst_1 :: int
proof -
  show ?thesis sorry
qed

end
