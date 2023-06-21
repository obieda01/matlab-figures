%% figure13B.m
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
l = getParticipation2554();

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
set(gca, 'yLim', [0.65,0.85], 'yTick', [0.65:0.05:0.85], 'yTickLabel', ['65%';'70%';'75%';'80%';'85%'])
ylabel('Labor-force participation rate')

% Plot unemployment and vacancy rates
plot(timeline, l, purpleSetting{:})

% Print figure
print('-dpdf', 'figure13B.pdf')

%% Save results

file = 'figure13B.xlsx';
sheet = 'Figure 13B';
years = floor(timeline);
quarters = 1 + (timeline - years) .* 4;

% Write header
header = {'Year', 'Quarter', 'Labor-force participation rate'};
writecell(header, file, 'Sheet', sheet, 'WriteMode', 'replacefile')

% Write results
result = [years, quarters, l];
writematrix(result, file, 'Sheet', sheet, 'WriteMode', 'append')