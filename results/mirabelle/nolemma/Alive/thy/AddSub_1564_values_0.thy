theory AddSub_1564_values_0
    imports rewrite_defs
begin
theorem AddSub_1564_values_0_th:
"(bw k ((bw k C) - (bw k (xor (bw k var_x) (bw k (not (bw k 0)))))))=(bw k ((bw k var_x) + (bw k ((bw k C) + (bw k 1)))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_x C :: int
proof -
  show ?thesis sorry
qed

end
