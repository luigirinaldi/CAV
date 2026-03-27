theory hydra_opt_57
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_57_th:
"(bw q ((bw q newvar0) + (bw q ((bw q v10) - (bw q newvar0)))))=(bw q v10)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and v10 newvar0 :: int
proof -
  show ?thesis sorry
qed

end
