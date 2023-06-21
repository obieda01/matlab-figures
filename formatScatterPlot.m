%% formatStandardPlot.m
% 
% Format scatter plots
%
%% Description
%
% This script formats scatter plots by modifying the default properties of figures and axes. 
%
% The script also provides formatting settings for scattter plots. Each setting is contained in a cell array:
%
% * pinkSetting – Formatting for thin pink line
% * graySetting – Formatting for gray dots linked with solid line
% * orangeSetting – Formatting for orange dots
% * purpleSetting – Formatting for purple dots
% * lightOrangeSetting – Formatting for light orange dots
% * lightPurpleSetting – Formatting for light purple dots
%
% Finally, the script provides a color palette composed of purple, pink, black, gray, orange, green, light orange, and light purple. Each color is specified in hexadecimal format (hex triplet) and encoded as a string.
%
%% Examples
%
%   plot(u, v, graySetting{:})
%

%% Set properties for figures

set(groot, 'defaultFigureUnits', 'inches')
set(groot, 'defaultFigurePosition', [1,1,7.7779,5.8334]);
set(groot, 'defaultFigurePaperPosition', [0, 0, 7.7779,5.8334]);
set(groot, 'defaultFigurePaperSize', [7.7779,5.8334]);

%% Set properties for axes

set(groot, 'defaultAxesFontName', 'Helvetica')
set(groot, 'defaultAxesFontSize', 22)
set(groot, 'defaultAxesLabelFontSizeMultiplier', 1)
set(groot, 'defaultAxesTitleFontSizeMultiplier', 1)
set(groot, 'defaultAxesTitleFontWeight', 'normal')
set(groot, 'defaultAxesXColor', 'k')
set(groot, 'defaultAxesYColor', 'k')
set(groot, 'defaultAxesGridColor', 'k')
set(groot, 'defaultAxesLineWidth', 1)
set(groot, 'defaultAxesYGrid', 'on')
set(groot, 'defaultAxesXGrid', 'on')
set(groot, 'defaultAxesTickDirMode', 'manual')
set(groot, 'defaultAxesTickLength', [0 0])
set(groot, 'defaultAxesTickDir', 'out')

%% Pick color palette

purple = '#7570b3';
pink = '#e7298a';
black = '#666666';
gray = '#c0c0c0';
orange = '#d95f02';
green = '#1b9e77';
lightOrange = '#fc8d62';
lightPurple = '#8da0cb';

%% Set properties for lines

pinkSetting.Color = pink;
pinkSetting.LineWidth = 2;
pinkSetting = [fieldnames(pinkSetting), struct2cell(pinkSetting)]';

%% Set properties for scatter plots

graySetting.Color = gray;
graySetting.LineWidth = 1;
graySetting.MarkerSize = 9;
graySetting.MarkerFaceColor = gray;
graySetting.LineStyle = '-';
graySetting.Marker = 'o';
graySetting = [fieldnames(graySetting), struct2cell(graySetting)]';

orangeSetting.Color = orange;
orangeSetting.LineWidth = 1;
orangeSetting.MarkerSize = 9;
orangeSetting.MarkerFaceColor = orange;
orangeSetting.LineStyle = '-';
orangeSetting.Marker = 'o';
orangeSetting = [fieldnames(orangeSetting), struct2cell(orangeSetting)]';

purpleSetting.Color = purple;
purpleSetting.LineWidth = 1;
purpleSetting.MarkerSize = 9;
purpleSetting.MarkerFaceColor = purple;
purpleSetting.LineStyle = '-';
purpleSetting.Marker = 'o';
purpleSetting = [fieldnames(purpleSetting), struct2cell(purpleSetting)]';

lightOrangeSetting.Color = lightOrange;
lightOrangeSetting.LineWidth = 1;
lightOrangeSetting.MarkerSize = 9;
lightOrangeSetting.MarkerFaceColor = lightOrange;
lightOrangeSetting.LineStyle = '-';
lightOrangeSetting.Marker = 'o';
lightOrangeSetting = [fieldnames(lightOrangeSetting), struct2cell(lightOrangeSetting)]';


lightPurpleSetting.Color = lightPurple;
lightPurpleSetting.LineWidth = 1;
lightPurpleSetting.MarkerSize = 9;
lightPurpleSetting.MarkerFaceColor = lightPurple;
lightPurpleSetting.LineStyle = '-';
lightPurpleSetting.Marker = 'o';
lightPurpleSetting = [fieldnames(lightPurpleSetting), struct2cell(lightPurpleSetting)]';