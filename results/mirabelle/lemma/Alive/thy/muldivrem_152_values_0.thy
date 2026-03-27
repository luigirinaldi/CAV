theory muldivrem_152_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem muldivrem_152_values_0_th:
"(bw k ((bw k var_x) * (bw k (not (bw k 0)))))=(bw k ((bw k 0) - (bw k var_x)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_x :: int
proof -
  show ?thesis sorry
qed

end
