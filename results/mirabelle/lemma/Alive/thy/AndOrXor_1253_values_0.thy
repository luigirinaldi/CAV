theory AndOrXor_1253_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AndOrXor_1253_values_0_th:
"(bw k (and (bw k (xor (bw k var_A) (bw k var_B))) (bw k var_A)))=(bw k (and (bw k var_A) (bw k (xor (bw k var_B) (bw k (not (bw k 0)))))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_A var_B :: int
proof -
  show ?thesis sorry
qed

end
