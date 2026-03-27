theory AddSub_1295_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AddSub_1295_values_0_th:
"(bw k ((bw k (and (bw k var_a) (bw k var_b))) + (bw k (xor (bw k var_a) (bw k var_b)))))=(bw k (or (bw k var_a) (bw k var_b)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_b var_a :: int
proof -
  show ?thesis sorry
qed

end
