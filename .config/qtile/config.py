import os
import subprocess
from libqtile import bar, layout, hook, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.core.manager import Qtile
from libqtile.dgroups import simple_key_binder

from qtile_extras import widget
from qtile_extras.widget.decorations import RectDecoration

# ----------------------------
# -------- Hotkeys -----------
# ----------------------------

mod = "mod4"
terminal = "kitty"

keys = [

    # Misc hotkeys

    Key([mod], "a", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
    Key([mod], "p", lazy.spawn("maim -o -u output.jpeg"), desc="Take Screenshot"),
    Key([mod], "space", lazy.spawn("rofi -show drun"), desc="Launch rofi"),
    Key([mod], "Tab", lazy.spawn("rofi -show window"), desc="Launch rofi window switcher"),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),

    # Window hotkeys

    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),
    Key([mod], "c", lazy.window.toggle_floating(), desc="Toggle floating on the focused window"),

    # App hotkeys

    Key([mod], "e", lazy.spawn("thunar"), desc="Launch thunar"),
    Key([mod], "t", lazy.spawn("teamspeak"), desc="Launch teamspeak"),
    Key([mod], "s", lazy.spawn("steam"), desc="Launch steam"),
    Key([mod], "d", lazy.spawn("discord"), desc="Launch discord"),
    Key([mod], "b", lazy.spawn("firefox"), desc="Launch firefox"),
    Key([mod], "m", lazy.spawn("pavucontrol"), desc="Launch audio mixer"),

    # Layout hotkeys

    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    # Key([mod], "Tab", lazy.layout.next(), desc="Move window focus to other window"),

    Key([mod, "control"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "control"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "control"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "control"], "k", lazy.layout.shuffle_up(), desc="Move window up"),

    Key([mod, "shift"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "shift"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "shift"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "shift"], "k", lazy.layout.grow_up(), desc="Grow window up"),

    Key([mod], "x", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "y", lazy.layout.normalize(), desc="Reset all window sizes"),
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(), desc="Stacks windows"),
]


# ----------------------------
# ----- Groups & Layouts -----
# ----------------------------

groups = [
    Group("WWW"),
    Group("GMS"),
    Group("CHT", spawn=["discord", "teamspeak"]),
    Group("PWD", spawn="keepassxc"),
    Group("SYS"),
    Group("6"),
    Group("7"),
#    Group("8"),
#    Group("9"),
#    Group("0")
]

layouts = [
    layout.Columns(border_normal="#4c505e", border_focus="#b7bdf8", border_focus_stack=["#008f39", "#7d9e7f"], border_width=2, margin=[6, 12, 12, 12]),
    layout.Max(margin=12, border_focus="#b7bdf8", border_width=2),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)


# ---------------------------
# --------- Widgets ---------
# ---------------------------

widget_defaults = dict(
    font="SauceCodePro Nerd Font",
    fontsize=14,
    padding=12,
)
extension_defaults = widget_defaults.copy()

decoration_group= {
    "decorations": [
        RectDecoration(colour="#181825", radius=2, filled=True, group=True)
    ],
    "padding": 8,
}
decoration_group2= {
    "decorations": [
        RectDecoration(colour="#181825", radius=2, filled=True, group=True, extrawidth=10)
    ],
    "padding": 8,
}

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(
			highlight_method='line',
			highlight_color='#181825',
			this_current_screen_border='#b7bdf8',
			**decoration_group
		),
		widget.Spacer(
			length=12
		),
                widget.Systray(
			icon_size=22,
			**decoration_group2
		),
		widget.Spacer(
			length=12
		),
                widget.Prompt(),
		widget.Spacer(
			length=100
		),
                widget.TaskList(
			border='#181825',
			highlight_method='block',
			title_width_method='uniform',
			padding=6,
		),
		widget.Spacer(
			length=100
		),
                widget.Volume(
			fmt='󱄠 {}',
			foreground='#c6a0f6',
			**decoration_group
		),
		widget.Spacer(
			length=12
		),
		widget.NvidiaSensors(
			format=' {temp}°C', threshold=75, foreground_alert='ff6000',
			foreground="#8aadf4",
			**decoration_group
		),
		widget.Spacer(
			length=12
		),
                widget.CPU(
			format=' {load_percent:2.0f}%',
			foreground="#8aadf4",
			**decoration_group
		),
                widget.ThermalSensor(
			format='{temp:.0f}{unit}',
			foreground="#8aadf4",
			**decoration_group
		),
		widget.Spacer(
			length=12
		),
                widget.Memory(
			format=' {MemUsed:.0f}{mm}/{MemTotal:.0f}{mm}', measure_mem='G',
			foreground="#a6da95",
			**decoration_group
		),
		widget.Spacer(
			length=12
		),
                widget.Net(
			format='{down:2.0f}{down_suffix} ↓↑ {up:2.0f}{up_suffix}',
			foreground='#eed49f',
			interface='enp12s0',
			prefix='M',
			scroll='True',
			scroll_fixed_width='True',
			**decoration_group
		),
		widget.Spacer(
			length=12
		),
                widget.Clock(
			format=" %a, %b %d",
			foreground="#f5a97f",
			**decoration_group
		),
		widget.Spacer(
			length=12
		),
                widget.Clock(
			format=" %H:%M:%S",
			foreground="#ed8796",
			**decoration_group
		),
            ],
            36,
	   background="#24273a",
	   margin=[12, 12, 6, 12],
	   border_radius=0,
        ),
        # You can uncomment this variable if you see that on X11 floating resize/moving is laggy
        # x11_drag_polling_rate = 60,
    ),
]

dgroups_key_binder = simple_key_binder("mod4")
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
floats_kept_above = True
cursor_warp = False
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
wmname = "Qtile"
auto_minimize = True


# ---------------------------
# ---------- Hooks ----------
# ---------------------------

@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.Popen([home])
