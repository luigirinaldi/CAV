theory unsigned_rounding_v1_to_v2
    imports rewrite_defs
begin
theorem unsigned_rounding_v1_to_v2_th:
"(bw w2 ((bw w2 ((bw (w2 + 1) a) >> (bw 1 1))) + (bw w2 (bw 1 (bw (w2 + 1) a)))))=(bw w2 ((bw (w2 + 1) ((bw (w2 + 1) a) + (bw 1 1))) >> (bw 1 1)))" (is "?lhs = ?rhs")
if "(w2 > 1)" and "(((w2 + 1) - w2) >= 1)" and "(1 > 0)" and "((w2 + 1) > 0)" and "(w2 > 0)"
for w2 :: nat and a :: int
proof -
  show ?thesis sorry
qed

end
