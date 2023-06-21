%% formatLongPlot.m
% 
% Format long plots
%
%% Description
%
% This script formats long plots by modifying the default properties of figures and axes. 
%
% The script also provides formatting settings for long plots. Each setting is contained in a cell array:
%
% * areaSetting – Formatting for recession areas
% * purpleSetting – Formatting for regular purple line
% * pinkSetting – Formatting for regular pink line
% * orangeSetting – Formatting for regular orange line
% * thinPinkSetting – Formatting for thin pink line
% * xSetting – Formatting of x-axis for quarterly series from 1930Q1 to 2022Q1
%
% Finally, the script provides a color palette composed of purple, pink, black, gray, orange, green. Each color is specified in hexadecimal format (hex triplet) and encoded as a string.
%
%% Examples
%
%   plot(x, y, purpleSetting{:})
%   area(x, y, areaSetting{:})
%   plot(x, y, 'Color', purple)
%

%% Set properties for figures

set(groot,'defaultFigureUnits', 'inches')
set(groot,'defaultFigurePosition', [1,1,7.7779,5.8334/2]);
set(groot,'defaultFigurePaperPosition', [0, 0, 7.7779,5.8334/2]);
set(groot,'defaultFigurePaperSize', [7.7779,5.8334/2]);

%% Set properties for axes

set(groot,'defaultAxesFontName','Helvetica')
set(groot,'defaultAxesFontSize',11)
set(groot,'defaultAxesLabelFontSizeMultiplier',1)
set(groot,'defaultAxesTitleFontSizeMultiplier',1)
set(groot,'defaultAxesTitleFontWeight','normal')
set(groot,'defaultAxesXColor','k')
set(groot,'defaultAxesYColor','k')
set(groot,'defaultAxesGridColor','k')
set(groot,'defaultAxesLineWidth',0.5)
set(groot,'defaultAxesYGrid','on')
set(groot,'defaultAxesXGrid','off')
set(groot, 'defaultAxesTickDirMode', 'manual')
set(groot,'defaultAxesTickLength',[0.005 0.0125])
set(groot, 'defaultAxesTickDir', 'out')

%% Pick color palette

purple = '#7570b3';
pink = '#e7298a';
black = '#666666';
gray = '#c0c0c0';
orange = '#d95f02';
green = '#1b9e77';

%% Set properties for areas

areaSetting.FaceColor = 'black';
areaSetting.LineStyle = 'none';
areaSetting.FaceAlpha = 0.15;
areaSetting = [fieldnames(areaSetting), struct2cell(areaSetting)]';

%% Set properties for lines

purpleSetting.Color = purple;
purpleSetting.LineWidth = 3/2;
purpleSetting = [fieldnames(purpleSetting), struct2cell(purpleSetting)]';

pinkSetting.Color = pink;
pinkSetting.LineWidth = 3/2;
pinkSetting = [fieldnames(pinkSetting), struct2cell(pinkSetting)]';

orangeSetting.Color = orange;
orangeSetting.LineWidth = 3/2;
orangeSetting = [fieldnames(orangeSetting), struct2cell(orangeSetting)]';

thinPinkSetting.Color = pink;
thinPinkSetting.LineWidth = 3/4;
thinPinkSetting = [fieldnames(thinPinkSetting), struct2cell(thinPinkSetting)]';

%% Set properties for axes

xSetting.Xlim = [1930, 2022.75];
xSetting.XTick = [1930, 1945, 1960, 1975, 1990, 2005, 2022];
xSetting = [fieldnames(xSetting), struct2cell(xSetting)]';