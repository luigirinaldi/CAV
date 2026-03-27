theory hydra_opt_1677
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_1677_th:
"(bw r (sel (bw 1 newvar3) (bw r 1) (bw r 0)))=(bw r (bw 1 newvar3))" (is "?lhs = ?rhs")
if "(1 < r)" and "(r > 0)" and "(1 > 0)"
for r :: nat and newvar3 :: int
proof -
  show ?thesis sorry
qed

end
