execute if block ~ ~ ~ #ray2:generated/group_end_portal_frame[eye=true] run data modify storage ray2:calc root.partial_mfi_data set value {'px': [{'s': 0.0, 'partial': [{'y': [0.0, 0.8125]}]}, {'s': 0.25, 'partial': [{'y': [0.8125, 1.0], 'z': [0.25, 0.75]}]}], 'py': [{'s': 0.0}, {'s': 0.8125, 'partial': [{'x': [0.25, 0.75], 'z': [0.25, 0.75]}]}], 'pz': [{'s': 0.0, 'partial': [{'y': [0.0, 0.8125]}]}, {'s': 0.25, 'partial': [{'x': [0.25, 0.75], 'y': [0.8125, 1.0]}]}], 'nx': [{'s': 1.0, 'partial': [{'y': [0.0, 0.8125]}]}, {'s': 0.75, 'partial': [{'y': [0.8125, 1.0], 'z': [0.25, 0.75]}]}], 'ny': [{'s': 1.0, 'partial': [{'x': [0.25, 0.75], 'z': [0.25, 0.75]}]}, {'s': 0.8125}], 'nz': [{'s': 1.0, 'partial': [{'y': [0.0, 0.8125]}]}, {'s': 0.75, 'partial': [{'x': [0.25, 0.75], 'y': [0.8125, 1.0]}]}]}
execute if block ~ ~ ~ #ray2:generated/group_end_portal_frame[eye=false] run data modify storage ray2:calc root.partial_mfi_data set value {'px': [{'s': 0.0, 'partial': [{'y': [0.0, 0.8125]}]}], 'py': [{'s': 0.0}], 'pz': [{'s': 0.0, 'partial': [{'y': [0.0, 0.8125]}]}], 'nx': [{'s': 1.0, 'partial': [{'y': [0.0, 0.8125]}]}], 'ny': [{'s': 0.8125}], 'nz': [{'s': 1.0, 'partial': [{'y': [0.0, 0.8125]}]}]}
