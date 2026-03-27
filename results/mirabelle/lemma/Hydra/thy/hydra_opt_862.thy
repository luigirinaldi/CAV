theory hydra_opt_862
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_862_th:
"(bw t (and (bw t symconst_3) (bw t (bw s (sel (bw 1 newvar0) (bw s symconst_1) (bw s symconst_2))))))=(bw t (sel (bw 1 newvar0) (bw t (and (bw t symconst_3) (bw t (bw s (sel (bw 1 (-1)) (bw s symconst_1) (bw s symconst_2)))))) (bw t (and (bw t symconst_3) (bw t (bw s (sel (bw 1 0) (bw s symconst_1) (bw s symconst_2))))))))" (is "?lhs = ?rhs")
if "(s > t)" and "(s > 0)" and "(1 > 0)" and "(t > 0)"
for t s :: nat and newvar0 symconst_2 symconst_1 symconst_3 :: int
proof -
  show ?thesis sorry
qed

end
