%% figure13A.m
% 
% Produce figure 13A
%
%% Description
%
% This script produces figure 1A. The figure displays the quarterly unemployment and vacancy rates in the United States, 1951–2019.
%
%% Output
%
% * The figure is saved as figure1A.pdf.
% * The underlying data are saved in figure1A.xlsx.
%

close all
clear
clc

%% Get data

% Get timeline
timeline = getTimelineParticipation();

% Get recessions dates
[startRecession, endRecession, nRecession] = getRecessionParticipation();

% Get unemployment rate
l = getParticipation();

%% Format figure and plot

formatStandardPlot

%% Produce figure

figure(1)
clf
hold on

% Paint recession areas
for iRecession = 1 : nRecession
	area([startRecession(iRecession), endRecession(iRecession)], [2,2], areaSetting{:});
end

% Populate axes
set(gca, xSettingPostwar{:})
set(gca, 'yLim', [0.57,0.69], 'yTick', [0.57:0.03:0.69], 'yTickLabel', ['57%';'60%';'63%';'66%';'69%'])
ylabel('Labor-force participation rate')

% Plot unemployment and vacancy rates
plot(timeline, l, purpleSetting{:})

% Print figure
print('-dpdf', 'figure13A.pdf')

%% Save results

file = 'figure13A.xlsx';
sheet = 'Figure 13A';
years = floor(timeline);
quarters = 1 + (timeline - years) .* 4;

% Write header
header = {'Year', 'Quarter', 'Labor-force participation rate'};
writecell(header, file, 'Sheet', sheet, 'WriteMode', 'replacefile')

% Write results
result = [years, quarters, l];
writematrix(result, file, 'Sheet', sheet, 'WriteMode', 'append')