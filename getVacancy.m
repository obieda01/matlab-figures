%% getVacancy
% 
% Return quarterly vacancy rate in the United States, 1930–2022
%
%% Syntax
%
%   v = getVacancy()
%
%% Output arguments
%
% * v – 372-by-1 column vector
%
%% Description
%
% This function returns the quarterly vacancy rate in the United States, 1930–2022. 
%

function v = getVacancy()

%% Input quarterly vacancy rate for three subperiods

% 1930–1950
vDepression = getVacancyDepression();

% 1951–2019
vPostwar = getVacancyPostwar();

% 2020–2022
vPandemic = getVacancyPandemic();

%% Splice three series into a long series

v = [vDepression; vPostwar; vPandemic];