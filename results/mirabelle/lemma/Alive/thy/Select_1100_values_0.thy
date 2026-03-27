theory Select_1100_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem Select_1100_values_0_th:
"(bw k var_X)=(bw k var_X)" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_X :: int
proof -
  show ?thesis sorry
qed

end
