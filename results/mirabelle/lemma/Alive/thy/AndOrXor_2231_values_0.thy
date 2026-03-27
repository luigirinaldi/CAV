theory AndOrXor_2231_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AndOrXor_2231_values_0_th:
"(bw k (or (bw k (xor (bw k var_A) (bw k var_B))) (bw k (xor (bw k (xor (bw k var_B) (bw k var_C))) (bw k var_A)))))=(bw k (or (bw k (xor (bw k var_A) (bw k var_B))) (bw k var_C)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_B var_A var_C :: int
proof -
  show ?thesis sorry
qed

end
