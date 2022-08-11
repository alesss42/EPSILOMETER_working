function [plot_properties] = epsiSetup_set_plot_properties()            
plot_properties.FontName='Sans';
            plot_properties.FontSize=16;
            plot_properties.LineWidth=2;
            plot_properties.Colors.a1 = [129 27 112]./255;
            plot_properties.Colors.a2 = [235 64 61]./255;
            plot_properties.Colors.a3 = [245 199 118]./255;
            plot_properties.Colors.s1 = [60 134 76]./255;
            plot_properties.Colors.s2 = [173 215 136]./255;
            plot_properties.Colors.t1 = [29 78 140]./255;
            plot_properties.Colors.t2 = [78 173 173]./255;
            plot_properties.Colors.P = [0 0 0];
            plot_properties.Colors.dPdt = [0.4 0.4 0.4];
%             plot_properties.Colors.P = [0.2353    0.2157    0.5098];
%             plot_properties.Colors.dPdt = [0.4851    0.4644    0.7140];
            plot_properties.Colors.T = [185 38 26]./255;
%             plot_properties.Colors.S = [0 0 0];
            plot_properties.Colors.S = [0 0 0.543];
            plot_properties.Colors.alt = 'm';
            plot_properties.Colors.gyro1 = [129 27 112]./255;
            plot_properties.Colors.gyro2 = [235 64 61]./255;
            plot_properties.Colors.gyro3 = [245 199 118]./255;
            plot_properties.Colors.compass1 = [0 0 0.543];
            plot_properties.Colors.compass2 = [185 38 26]./255;
            plot_properties.Colors.compass3 = 'k';