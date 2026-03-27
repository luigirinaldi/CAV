theory hydra_opt_2777
    imports rewrite_defs
begin
theorem hydra_opt_2777_th:
"(bw r (bw s (and (bw s (signed r (bw r v0))) (bw s (signed r (bw r v2))))))=(bw r (and (bw r v0) (bw r v2)))" (is "?lhs = ?rhs")
if "(r < s)" and "(s > r)" and "(r > 0)" and "(s > 0)"
for s r :: nat and v0 v2 :: int
proof -
  show ?thesis sorry
qed

end
