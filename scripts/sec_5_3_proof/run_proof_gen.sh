#!/bin/bash

echo "
========================
Egg generated proof
========================
"

../../parabit/target/release/parabit motivating_example.bwlang 2>/dev/null

echo "
========================
Isabelle proof
========================
"

../../parabit/target/release/parabit motivating_example.bwlang get-proof 2>/dev/null