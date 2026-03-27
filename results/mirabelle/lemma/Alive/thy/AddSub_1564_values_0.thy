theory AddSub_1564_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AddSub_1564_values_0_th:
"(bw k ((bw k C) - (bw k (xor (bw k var_x) (bw k (not (bw k 0)))))))=(bw k ((bw k var_x) + (bw k ((bw k C) + (bw k 1)))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and C var_x :: int
proof -
  show ?thesis sorry
qed

end
