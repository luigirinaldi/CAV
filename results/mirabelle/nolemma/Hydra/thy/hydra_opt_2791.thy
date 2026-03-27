theory hydra_opt_2791
    imports rewrite_defs
begin
theorem hydra_opt_2791_th:
"(bw x (bw s (or (bw s symconst_3) (bw s (sel (bw 1 newvar0) (bw s symconst_1) (bw s symconst_2))))))=(bw x (sel (bw 1 newvar0) (bw x (bw s (or (bw s symconst_3) (bw s (sel (bw 1 (-1)) (bw s symconst_1) (bw s symconst_2)))))) (bw x (bw s (or (bw s symconst_3) (bw s (sel (bw 1 0) (bw s symconst_1) (bw s symconst_2))))))))" (is "?lhs = ?rhs")
if "(s > x)" and "(s > 0)" and "(x > 0)" and "(1 > 0)"
for x s :: nat and symconst_3 symconst_2 newvar0 symconst_1 :: int
proof -
  show ?thesis sorry
qed

end
