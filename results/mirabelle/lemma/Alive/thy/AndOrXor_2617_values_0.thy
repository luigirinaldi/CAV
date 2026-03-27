theory AndOrXor_2617_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AndOrXor_2617_values_0_th:
"(bw k (xor (bw k (and (bw k var_a) (bw k (xor (bw k var_b) (bw k (not (bw k 0))))))) (bw k (and (bw k (xor (bw k var_a) (bw k (not (bw k 0))))) (bw k var_b)))))=(bw k (xor (bw k var_a) (bw k var_b)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_a var_b :: int
proof -
  show ?thesis sorry
qed

end
