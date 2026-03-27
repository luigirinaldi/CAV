theory AndOrXor_2475_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AndOrXor_2475_values_0_th:
"(bw k (xor (bw k ((bw k C) - (bw k var_x))) (bw k (not (bw k 0)))))=(bw k ((bw k var_x) + (bw k ((bw k (not (bw k 0))) - (bw k C)))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_x C :: int
proof -
  show ?thesis sorry
qed

end
