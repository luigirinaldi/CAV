theory hydra_opt_2770
    imports rewrite_defs
begin
theorem hydra_opt_2770_th:
"(bw r (bw s (xor (bw s (signed r (bw r v0))) (bw s (signed r (bw r v2))))))=(bw r (xor (bw r v0) (bw r v2)))" (is "?lhs = ?rhs")
if "(r < s)" and "(s > r)" and "(s > 0)" and "(r > 0)"
for s r :: nat and v2 v0 :: int
proof -
  show ?thesis sorry
qed

end
