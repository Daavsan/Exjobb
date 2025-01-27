% Generate the reduced CCD
reducedDesign = ccdesign(3, 'type', 'f', 'center', 3);

% Display the design
disp(reducedDesign);

% Example mapping to real-world values:
% Factor 1: Resistance [1 Ohm, 1 MOhm]
% Factor 2: Voltage [1V, 32V]
% Factor 3: Duty Cycle [0%, 100%]
resistance = 10.^((reducedDesign(:,1)+1)/2 * (6 - 0) + 0); % Logarithmic mapping
voltage = (reducedDesign(:,2)+1)/2 * (32 - 1) + 1; % Linear mapping
dutyCycle = (reducedDesign(:,3)+1)/2 * 100; % Linear mapping

% Combine into a table for clarity
resultsTable = table(resistance, voltage, dutyCycle, ...
    'VariableNames', {'Resistance_Ohm', 'Voltage_V', 'DutyCycle_Percent'});

disp(resultsTable);


% Example response data (replace with actual measurements)
%response = [0.85; 0.80; 0.88; 0.83; 0.90; 0.85; 0.80; 0.88; 0.83; 0.90; 0.85; 0.80; 0.88; 0.83; 0.90; 0.70; 0.69].*5; % Efficiency values
response = [4.95; 5.10; 4.87; 5.02; 5.20; 4.80; 5.15; 4.98; 5.05; ...
               4.90; 5.12; 4.85; 5.08; 4.92; 5.18; 4.88; 5.03];

% Add response to the design matrix
data = [reducedDesign, response];

mdl = fitlm(reducedDesign, response, 'purequadratic');

% Display model summary
disp(mdl);

[x1, x2, x3] = meshgrid(linspace(-1, 1, 20), linspace(-1, 1, 20), linspace(-1, 1, 20)); % Reduced size for simplicity
% Fixed levels for Duty Cycle
dutyCycleLevels = [-1, 0, 1]; % Low, medium, high

figure;
for i = 1:length(dutyCycleLevels)
    x3_fixed = dutyCycleLevels(i); % Fix Duty Cycle

    % Generate a 2D grid for Resistance and Voltage
    [x1, x2] = meshgrid(linspace(-1, 1, 50), linspace(-1, 1, 50));
    gridPoints = [x1(:), x2(:), repmat(x3_fixed, numel(x1), 1)];

    % Predict the response
    predictedResponse = reshape(predict(mdl, gridPoints), size(x1));

    % Plot the response surface
    subplot(1, 3, i);
    surf(x1, x2, predictedResponse);
    xlabel('Resistance (normalized)');
    ylabel('Voltage (normalized)');
    zlabel('Response');
    title(['Duty Cycle = ', num2str(x3_fixed)]);
end
