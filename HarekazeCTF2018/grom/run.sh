#!/usr/bin/env bash

iverilog sim_grom.v grom.v
vvp a.out
gtkwave sim_grom.vcd
