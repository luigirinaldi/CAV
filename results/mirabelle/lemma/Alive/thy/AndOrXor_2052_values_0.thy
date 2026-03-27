theory AndOrXor_2052_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AndOrXor_2052_values_0_th:
"(bw k (or (bw k (and (bw k var_x) (bw k C1))) (bw k C)))=(bw k (and (bw k (or (bw k var_x) (bw k C))) (bw k (or (bw k C) (bw k C1)))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and C1 C var_x :: int
proof -
  show ?thesis sorry
qed

end
