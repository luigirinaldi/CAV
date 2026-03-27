theory AndOrXor_1346a_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AndOrXor_1346a_values_0_th:
"(bw (k + k) (and (bw (k + k) (signed k (bw k var_x))) (bw (k + k) (signed k (bw k var_y)))))=(bw (k + k) (signed k (bw k (and (bw k var_x) (bw k var_y)))))" (is "?lhs = ?rhs")
if "(k > 0)" and "((k + k) > 0)"
for k :: nat and var_x var_y :: int
proof -
  show ?thesis sorry
qed

end
