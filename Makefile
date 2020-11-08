all: VexRiscv/src/main/ressource/hex/aestf.hex
	cd VexRiscv && git am -3 < ../0001-Add-A-ESTF-Cyclone-IV-board.patch
	cd VexRiscv && sbt "runMain vexriscv.demo.BrieyAESTF"
