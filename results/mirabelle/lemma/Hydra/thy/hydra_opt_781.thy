theory hydra_opt_781
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_781_th:
"(bw r (and (bw r symconst_2) (bw r (sel (bw 1 v0) (bw r 0) (bw r symconst_2)))))=(bw r (sel (bw 1 v0) (bw r 0) (bw r symconst_2)))" (is "?lhs = ?rhs")
if "(r > 0)" and "(1 > 0)"
for r :: nat and symconst_2 v0 :: int
proof -
  show ?thesis sorry
qed

end
