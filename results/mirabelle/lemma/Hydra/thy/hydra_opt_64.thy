theory hydra_opt_64
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_64_th:
"(bw r ((bw r (-1)) + (bw r ((bw r v0) - (bw r symconst_2)))))=(bw r ((bw r v0) + (bw r (xor (bw r (-1)) (bw r symconst_2)))))" (is "?lhs = ?rhs")
if "(r > 0)"
for r :: nat and symconst_2 v0 :: int
proof -
  show ?thesis sorry
qed

end
