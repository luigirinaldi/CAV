theory redundant_sel_add
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem redundant_sel_add_th:
"(bw w (sel (bw 1 s) (bw w a) (bw w a)))=(bw w a)" (is "?lhs = ?rhs")
if "(w > 0)" and "(1 > 0)"
for w :: nat and s a :: int
proof -
  show ?thesis sorry
qed

end
