theory AddSub_1043_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AddSub_1043_values_0_th:
"(bw k ((bw k ((bw k (xor (bw k (and (bw k var_Z) (bw k C1))) (bw k C1))) + (bw k 1))) + (bw k var_RHS)))=(bw k ((bw k var_RHS) - (bw k (or (bw k var_Z) (bw k (not (bw k C1)))))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and C1 var_RHS var_Z :: int
proof -
  show ?thesis sorry
qed

end
