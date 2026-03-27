theory hydra_opt_288
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_288_th:
"(bw q ((bw q newvar1) - (bw q 0)))=(bw q newvar1)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and newvar1 :: int
proof -
  show ?thesis sorry
qed

end
