from pathlib import Path

x_min, x_max = 85, 92
y_min, y_max = 62, 68
z_min, z_max = 60, 72

output = Path("scan_sandstone.mcfunction")

commands = [
    "scoreboard players set #found sandstone 0"
]

for x in range(x_min, x_max + 1):
    for y in range(y_min, y_max + 1):
        for z in range(z_min, z_max + 1):
            commands.append(
                f"execute if block {x} {y} {z} minecraft:sandstone "
                "run scoreboard players set #found sandstone 1"
            )

output.write_text("\n".join(commands) + "\n", encoding="utf-8")

print(f"Generated {len(commands)} commands.")