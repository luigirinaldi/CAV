theory hydra_opt_1150
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_1150_th:
"(bw r (or (bw r symconst_3) (bw r (sel (bw 1 newvar1) (bw r symconst_1) (bw r symconst_2)))))=(bw r (sel (bw 1 newvar1) (bw r (or (bw r symconst_3) (bw r symconst_1))) (bw r (or (bw r symconst_3) (bw r symconst_2)))))" (is "?lhs = ?rhs")
if "(r > 0)" and "(1 > 0)"
for r :: nat and symconst_1 symconst_3 newvar1 symconst_2 :: int
proof -
  show ?thesis sorry
qed

end
