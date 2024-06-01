{
  lib,
  config,
  pkgs,
  ...
}: {
    programs.waybar = {
        enable = true;
        
        # style = ''
        #     #tray, #pulseaudio, #network, #battery,
        #     #custom-playerctl.backward, #custom-playerctl.play, #custom-playerctl.foward{
        #         background:  #2e86c1 ;
        #         font-weight: bold;
        #         margin: 5px 0px;
        #     }
        #     #tray, #pulseaudio, #network, #battery{
        #         color:  #27ae60;
        #         border-radius: 10px 24px 10px 24px;
        #         padding: 0 20px;
        #         margin-left: 7px;
        #     }

        #     #workspaces {
        #         background: #2e86c1 ;
        #         margin: 5px 5px;
        #         padding: 8px 5px;
        #         border-radius: 16px;
        #         color:#abb2b9;
        #     }

        #     #workspaces button {
        #         padding: 0px 5px;
        #         margin: 0px 3px;
        #         border-radius: 16px;
        #         color: transparent;
        #         background:  88, 214, 141;
        #         transition: all 0.3s ease-in-out;
        #     }

        #     #workspaces button.active {
        #         background-color:  #fbfcfc;
        #         color:  #45b39d;
        #         border-radius: 16px;
        #         min-width: 50px;
        #         background-size: 400% 400%;
        #         transition: all 0.3s ease-in-out;
        #     }

        #     #workspaces button:hover {
        #         background-color: #45b39d ;
        #         color:  #f39c12;
        #         border-radius: 16px;
        #         min-width: 50px;
        #         background-size: 400% 400%;
        #     }

        #     #clock {
        #         color:  #45b39d ;
        #         background: #45b39d;
        #         border-radius: 0px 0px 0px 40px;
        #         padding: 10px 10px 15px 25px;
        #         margin-left: 7px;
        #         font-weight: bold;
        #         font-size: 16px;
        #     }
        # '';

        # settings = [{
        #     position= "top";
        #     layer= "top";
        #     margin-top= 0;
        #     margin-bottom= 0;
        #     margin-left= 0;
        #     margin-right= 0;

        #     modules-left = [
        #         "clock"
        #         "tray"
        #     ];

        #     modules-center = [
        #         "hyprland/workspaces"
        #     ];

        #     modules-right = [
        #     ];

        #     clock= {
        #         format = " {:%a, %d %b, %I:%M %p}";
        #         tooltip= "true";
        #         tooltip-format= "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        #         format-alt= " {:%d/%m}";
        #     };

        #     tray = {
        #         icon-size= 20;
        #         spacing= 8;
        #     };

        #     "wlr/workspaces"= {
        #         active-only= false;
        #         all-outputs= false;
        #         disable-scroll= false;
        #         on-scroll-up= "hyprctl dispatch workspace e-1";
        #         on-scroll-down= "hyprctl dispatch workspace e+1";
        #         format = "{name}";
        #         on-click= "activate";
        #         format-icons= {
        #             urgent= "";
        #             active= "";
        #             default = "";
        #             sort-by-number= true;
        #         };
        #     };
        # }];
    };
}