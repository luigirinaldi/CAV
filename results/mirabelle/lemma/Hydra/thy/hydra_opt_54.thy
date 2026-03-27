theory hydra_opt_54
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_54_th:
"(bw s ((bw s symconst_2) + (bw s ((bw s symconst_3) + (bw s ((bw s v0) + (bw s symconst_1)))))))=(bw s ((bw s v0) + (bw s ((bw s symconst_3) + (bw s ((bw s symconst_2) + (bw s symconst_1)))))))" (is "?lhs = ?rhs")
if "(s > 0)"
for s :: nat and symconst_2 symconst_3 symconst_1 v0 :: int
proof -
  show ?thesis sorry
qed

end
