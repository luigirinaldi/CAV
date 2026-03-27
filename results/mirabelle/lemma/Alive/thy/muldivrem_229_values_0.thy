theory muldivrem_229_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem muldivrem_229_values_0_th:
"(bw k ((bw k ((bw k var_X) + (bw k C1))) * (bw k var_Op1)))=(bw k ((bw k ((bw k var_X) * (bw k var_Op1))) + (bw k ((bw k C1) * (bw k var_Op1)))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_Op1 C1 var_X :: int
proof -
  show ?thesis sorry
qed

end
