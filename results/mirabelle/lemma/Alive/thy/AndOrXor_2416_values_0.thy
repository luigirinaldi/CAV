theory AndOrXor_2416_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AndOrXor_2416_values_0_th:
"(bw k (xor (bw k (and (bw k (xor (bw k var_nx) (bw k (not (bw k 0))))) (bw k var_y))) (bw k (not (bw k 0)))))=(bw k (or (bw k var_nx) (bw k (xor (bw k var_y) (bw k (not (bw k 0)))))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_y var_nx :: int
proof -
  show ?thesis sorry
qed

end
