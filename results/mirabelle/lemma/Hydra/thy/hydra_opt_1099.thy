theory hydra_opt_1099
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_1099_th:
"(bw s (or (bw s symconst_3) (bw s (sel (bw 1 newvar5) (bw s symconst_1) (bw s 0)))))=(bw s (sel (bw 1 newvar5) (bw s (or (bw s symconst_3) (bw s symconst_1))) (bw s symconst_3)))" (is "?lhs = ?rhs")
if "(s > 0)" and "(1 > 0)"
for s :: nat and symconst_3 symconst_1 newvar5 :: int
proof -
  show ?thesis sorry
qed

end
