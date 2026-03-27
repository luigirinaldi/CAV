theory hydra_opt_1232
    imports rewrite_defs
begin
theorem hydra_opt_1232_th:
"(bw r (xor (bw r symconst_3) (bw r (sel (bw 1 newvar1) (bw r symconst_1) (bw r symconst_2)))))=(bw r (sel (bw 1 newvar1) (bw r (xor (bw r symconst_3) (bw r symconst_1))) (bw r (xor (bw r symconst_3) (bw r symconst_2)))))" (is "?lhs = ?rhs")
if "(1 > 0)" and "(r > 0)"
for r :: nat and symconst_3 symconst_1 newvar1 symconst_2 :: int
proof -
  show ?thesis sorry
qed

end
