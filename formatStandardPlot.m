%% formatStandardPlot.m
% 
% Format standard plots
%
%% Description
%
% This script formats standard plots by modifying the default properties of figures and axes. 
%
% The script also provides formatting settings for standard plots. Each setting is contained in a cell array:
%
% * purpleSetting – Formatting for regular purple line
% * pinkSetting – Formatting for regular pink line
% * orangeSetting – Formatting for regular orange line
% * thinPinkSetting – Formatting for thin pink line
% * dashPurpleSetting – Formatting for dashed purple line
% * xSettingPostwar – Formatting of x-axis for 1951–2019 quarterly series
% * xSettingPandemic – Formatting of x-axis for 2020–2022 monthly series
% * xSettingDepression – Formatting of x-axis for 1930–1950 quarterly series
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
set(groot, 'defaultAxesXGrid', 'off')
set(groot, 'defaultAxesTickDirMode', 'manual')
set(groot, 'defaultAxesTickLength',[0.01 0.025])
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
purpleSetting.LineWidth = 3;
purpleSetting = [fieldnames(purpleSetting), struct2cell(purpleSetting)]';

pinkSetting.Color = pink;
pinkSetting.LineWidth = 3;
pinkSetting = [fieldnames(pinkSetting), struct2cell(pinkSetting)]';

orangeSetting.Color = orange;
orangeSetting.LineWidth = 3;
orangeSetting = [fieldnames(orangeSetting), struct2cell(orangeSetting)]';

thinPinkSetting.Color = pink;
thinPinkSetting.LineWidth = 3/2;
thinPinkSetting = [fieldnames(thinPinkSetting), struct2cell(thinPinkSetting)]';

dashPurpleSetting.Color = purple;
dashPurpleSetting.LineWidth = 3;
dashPurpleSetting.LineStyle = ':';
dashPurpleSetting = [fieldnames(dashPurpleSetting), struct2cell(dashPurpleSetting)]';

%% Set properties for axes

xSettingPostwar.Xlim = [1951, 2019.75];
xSettingPostwar.XTick = [1951, 1970, 1985, 2000, 2019];
xSettingPostwar = [fieldnames(xSettingPostwar), struct2cell(xSettingPostwar)]';

xSettingPandemic.Xlim = [2020, 2022.75];
xSettingPandemic.XTick = [2020, 2021, 2022];
xSettingPandemic = [fieldnames(xSettingPandemic), struct2cell(xSettingPandemic)]';

xSettingDepression.Xlim = [1930, 1950.75];
xSettingDepression.XTick = [1930, 1935, 1940, 1945, 1950];
xSettingDepression = [fieldnames(xSettingDepression), struct2cell(xSettingDepression)]';

xSettingParticipation.Xlim = [1948, 2022.75];
xSettingParticipation.XTick = [1948, 1970, 1985, 2000, 2022];
xSettingParticipation = [fieldnames(xSettingParticipation), struct2cell(xSettingParticipation)]';

xSettingU45.Xlim = [1994, 2022.75];
xSettingU45.XTick = [1994, 2000, 2010, 2022];
xSettingU45 = [fieldnames(xSettingU45), struct2cell(xSettingU45)]';	