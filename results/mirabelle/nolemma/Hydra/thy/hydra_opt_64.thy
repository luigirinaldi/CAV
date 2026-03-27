theory hydra_opt_64
    imports rewrite_defs
begin
theorem hydra_opt_64_th:
"(bw r ((bw r (-1)) + (bw r ((bw r v0) - (bw r symconst_2)))))=(bw r ((bw r v0) + (bw r (xor (bw r (-1)) (bw r symconst_2)))))" (is "?lhs = ?rhs")
if "(r > 0)"
for r :: nat and v0 symconst_2 :: int
proof -
  show ?thesis sorry
qed

end
