theory hydra_opt_2846
    imports rewrite_defs
begin
theorem hydra_opt_2846_th:
"(bw v (bw r (xor (bw r symconst_3) (bw r (sel (bw 1 newvar1) (bw r symconst_1) (bw r symconst_2))))))=(bw v (sel (bw 1 newvar1) (bw v (bw r (xor (bw r symconst_3) (bw r symconst_1)))) (bw v (bw r (xor (bw r symconst_3) (bw r symconst_2))))))" (is "?lhs = ?rhs")
if "(r > v)" and "(v > 0)" and "(1 > 0)" and "(r > 0)"
for v r :: nat and symconst_2 newvar1 symconst_1 symconst_3 :: int
proof -
  show ?thesis sorry
qed

end
