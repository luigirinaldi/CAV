theory sub_to_neg
    imports rewrite_defs
begin
theorem sub_to_neg_th:
"(bw r ((bw p a) - (bw q b)))=(bw r ((bw p a) + (bw r (- (bw q b)))))" (is "?lhs = ?rhs")
if "(q > 0)" and "(r > 0)" and "(p > 0)"
for q p r :: nat and a b :: int
proof -
  show ?thesis sorry
qed

end
