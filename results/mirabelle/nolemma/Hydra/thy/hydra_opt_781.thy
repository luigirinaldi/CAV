theory hydra_opt_781
    imports rewrite_defs
begin
theorem hydra_opt_781_th:
"(bw r (and (bw r symconst_2) (bw r (sel (bw 1 v0) (bw r 0) (bw r symconst_2)))))=(bw r (sel (bw 1 v0) (bw r 0) (bw r symconst_2)))" (is "?lhs = ?rhs")
if "(1 > 0)" and "(r > 0)"
for r :: nat and v0 symconst_2 :: int
proof -
  show ?thesis sorry
qed

end
