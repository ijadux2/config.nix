{ pkgs, inputs, ... }:

{ 
  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    extraConfigs = ''
      monitor=,highres,auto,1

      # Startup applications
      exec-once = waybar
      exec-once = swaync
      exec-once = swayidle -w
      exec-once = dbus-update-activation-environment --systemd DISPLAY WAYLAND_DISPLAY HYPRLAND_INSTANCE_SIGNATURE
      exec-once = systemctl --user import-environment DISPLAY WAYLAND_DISPLAY HYPRLAND_INSTANCE_SIGNATURE
      exec-once = /usr/libexec/polkit-gnome-authentication-agent-1
      exec-once = wlsunset -t 4500 -T 6500
      exec-once = swaybg -m fill -i ~/.config/hypr/wallpaper.png

       input {
        kb_layout = us
        follow_mouse = 1
        touchpad {
          natural_scroll = yes
          tap-to-click = yes
        };
      };

       general {
        gaps_in = 5
        gaps_out = 10
        border_size = 2
        col.active_border = rgba(33ccffee) rgba(00ff99ee) 45deg
        col.inactive_border = rgba(595959aa)
        layout = dwindle
      };
        '';


    settings = {
      "$mod" = "SUPER";
      bind = [
        "$mod, F, exec, firefox"
        "$mod, RETURN, exec, kitty"
        "$mod, B, exec, brave"
        "$mod, E, exec, nautilus"
        "$mod, D, exec, rofi -show drun --show icons"
        "$mod, C, exec, codium"
        "$mod, Print, exec, grimblast copy area"
      ] ++ (builtins.concatLists (
        builtins.genList (i:
          let ws = i + 1;
          in [
            "$mod, code:1${toString i}, workspace, ${toString ws}"
            "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
          ]
        ) 
      ));
    };
  };
}

