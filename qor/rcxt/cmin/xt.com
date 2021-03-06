BLOCK: mips_16
MILKYWAY_DATABASE: ../../../pnr/mips_16
NETLIST_FILE: mips_16_cmin_t125.spef
MAPPING_FILE: /home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/tech/rcxt/FreePDK45_10m.map
TCAD_GRD_FILE:  /home/standard_cell_libraries/NangateOpenCellLibrary_PDKv1_3_v2010_12/tech/rcxt/FreePDK45_10m_Cmin.nxtgrd
OPERATING_TEMPERATURE: 125
STAR_DIRECTORY: star
SUMMARY_FILE: ./rcxt.log
BUS_BIT: []
COUPLE_TO_GROUND: NO
COUPLING_MULTIPLIER: 1
EXTRACTION: RC
HIERARCHICAL_SEPARATOR: /
METAL_FILL_POLYGON_HANDLING: FLOATING
NETLIST_FORMAT: SPEF
NETS: *
MODE: 400
REDUCTION: YES
MILKYWAY_EXPAND_HIERARCHICAL_CELLS: YES
