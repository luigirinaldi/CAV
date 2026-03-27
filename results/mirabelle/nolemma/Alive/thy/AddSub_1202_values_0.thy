theory AddSub_1202_values_0
    imports rewrite_defs
begin
theorem AddSub_1202_values_0_th:
"(bw k ((bw k (xor (bw k var_x) (bw k (not (bw k 0))))) + (bw k C)))=(bw k ((bw k ((bw k C) - (bw k 1))) - (bw k var_x)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_x C :: int
proof -
  show ?thesis sorry
qed

end
