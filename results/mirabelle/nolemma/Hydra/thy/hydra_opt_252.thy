theory hydra_opt_252
    imports rewrite_defs
begin
theorem hydra_opt_252_th:
"(bw r ((bw r 0) - (bw r ((bw r newvar1) + (bw r symconst_2)))))=(bw r ((bw r ((bw r 0) - (bw r symconst_2))) - (bw r newvar1)))" (is "?lhs = ?rhs")
if "(r > 0)"
for r :: nat and symconst_2 newvar1 :: int
proof -
  show ?thesis sorry
qed

end
