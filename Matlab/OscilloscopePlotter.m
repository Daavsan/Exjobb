function OscilloscopePlotter(filename, timeUnit, varargin)
% Set default values
titlename = filename;
linethickness = 2;
textscale = 1.5;
rescalefactor = 1;


    % Parse optional parameter-value pairs
    for k = 1:2:length(varargin)
        paramName = varargin{k};
        paramValue = varargin{k + 1};
        switch lower(paramName)
            case 'titlename'
                titlename = paramValue;
            case 'linethickness'
                linethickness = paramValue;
            case 'textscale'
                textscale = paramValue;
            case 'rescale2factor'
                rescalefactor = paramValue;
            otherwise
                error('Unknown parameter name: %s', paramName)
        end
    end


    % Your plotting code here, using the values of timeUnit, titlename, linethickness, textscale, and rescale2factor

wfm=load(filename+".wfm.csv");
%metadata=load(filename+".csv");


if timeUnit == "s"
    timeFactor=1;
elseif timeUnit == "ms"
    timeFactor=1e-3;
elseif timeUnit == "us"
    timeFactor=1e-6;
    timeUnit = "μs";
elseif timeUnit == "ns"
    timeFactor=1e-9;
elseif timeUnit == "ps"
    timeFactor=1e-12;
elseif timeUnit == "ks"
    timeFactor=1e3;
elseif timeUnit == "Ms"
    timeFactor=1e6;
elseif timeUnit == "Gs"
    timeFactor=1e9;
else
    timeFactor=str2num(timeUnit);
    timUnit="s";
end

lines = readlines(filename+".csv");
for i = 1:length(lines)
    if contains(lines(i), 'XStart')
        % Split the line by ':' and extract the value
        XStart = split(lines(i), ':');
        %break; % Exit the loop once the value is found
    end
    if contains(lines(i), 'XStop')
        % Split the line by ':' and extract the value
        XStop = split(lines(i), ':');
        %break; % Exit the loop once the value is found
    end
end
ttot = str2double(XStop{2})-str2double(XStart{2}); % Convert the string to a number 

% Plot the calculated values for easy visualization
%figure('Name', [filename], 'NumberTitle', 'off');

% Add a title above all plots
%sgtitle(['Power Loss Analysis - ' titleStr], 'FontSize', 12 * textscale);
t=((1:length(wfm)).*ttot)./length(wfm)./timeFactor;
% Plot Current vs Time
if length(rescalefactor) ~= 1
    for i = 1:(length(rescalefactor))
    plot(t,(wfm(:,i).*rescalefactor(i)), 'LineWidth', linethickness);
    hold on
    end
    hold off
else
    plot(t,wfm, 'LineWidth', linethickness);
end
title(titlename);
xlabel("Time [" + timeUnit + "]");
ylabel('Voltage [V]');
set(gca, 'FontSize', 10 * textscale);
set(get(gca, 'XLabel'), 'FontSize', 10 * textscale);
set(get(gca, 'YLabel'), 'FontSize', 10 * textscale);
grid on;
end