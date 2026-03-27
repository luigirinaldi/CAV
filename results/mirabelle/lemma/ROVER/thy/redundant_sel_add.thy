theory redundant_sel_add
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem redundant_sel_add_th:
"(bw w (sel (bw 1 s) (bw w a) (bw w a)))=(bw w a)" (is "?lhs = ?rhs")
if "(1 > 0)" and "(w > 0)"
for w :: nat and a s :: int
proof -
  show ?thesis sorry
qed

end
