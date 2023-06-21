%% getTimelineParticipation
% 
% Return quarterly timeline for 1951–2019
%
%% Syntax
%
%   timeline = getTimelineParticipation()
%
%% Output argument
%
% * timeline – 276-by-1 column vector
%
%% Description
%
% This function returns the quarterly timeline for 1951–2019, expressed in year.quarter format:
%
% * 1951.0 is 1951Q1
% * 1951.25 is 1951Q2
% * 1951.5 is 1951Q3
% * 1951.75 is 1951Q4
%

function timeline = getTimelineParticipation()

% Produce timeline
timeline = [1948:0.25:2022.75]';