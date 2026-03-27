theory hydra_opt_1106
    imports rewrite_defs
begin
theorem hydra_opt_1106_th:
"(bw s (or (bw s (and (bw s v0) (bw s symconst_2))) (bw s (and (bw s symconst_1) (bw s (and (bw s v0) (bw s symconst_3)))))))=(bw s (and (bw s v0) (bw s (or (bw s symconst_2) (bw s (and (bw s symconst_1) (bw s symconst_3)))))))" (is "?lhs = ?rhs")
if "(s > 0)"
for s :: nat and symconst_2 v0 symconst_1 symconst_3 :: int
proof -
  show ?thesis sorry
qed

end
