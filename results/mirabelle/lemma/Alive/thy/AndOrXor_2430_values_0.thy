theory AndOrXor_2430_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AndOrXor_2430_values_0_th:
"(bw k (xor (bw k (or (bw k var_x) (bw k var_y))) (bw k (not (bw k 0)))))=(bw k (and (bw k (xor (bw k var_x) (bw k (not (bw k 0))))) (bw k (xor (bw k var_y) (bw k (not (bw k 0)))))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_x var_y :: int
proof -
  show ?thesis sorry
qed

end
