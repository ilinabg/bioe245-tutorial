%% Matlab Tutorial: Visualizing and Analyzing Neural Time Series Data
% Please see the Python tutorial for a detailed explanation of the example data and the analysis steps.

% Let's see the brain plot, by visualizing the picture '../media/brain_plot.png'
imshow('../media/P1_recon_with_elecs.png');
brighten(0.5);

%% Loading in the data
% Let's start by loading in the data. 

data = loadData(1, 1);

% What does the data structure have in it?
disp(data)

% You can also explore data by double clicking on it in the Variable
% WorkSpace (with the Matlab GUI)

%% Visualizing the data
% We can visualize the data using the `plot` function.

x = (1:size(data.ecog, 2))/data.ecog_sr-0.5;
y = squeeze(mean(data.ecog, 1));
colors = [0.96 0.44 0.54; 0.74 0.60 0.19];

figure;
for el = 1:2
    plot(x, y(:, el), 'LineWidth', 2, 'Color', colors(el, :)); 
    hold on;
end

% Format the plot
xlabel('Time (s)');
ylabel('Average electrical activity');
box off;
set(gca, 'FontSize', 15);


%% Run PCA on the data

% First, we need to reshape the data
X = cat(1, data.ecog(:, :, 1), data.ecog(:, :, 2));

% What shape is X?
disp(size(X))

% Run PCA
[coeff, score, latent, ~, explained] = pca(X);

% Plot the trials in the first two principal components
figure;
for el = 1:2
    scatter(score((el-1)*size(data.ecog, 1)+1:el*size(data.ecog, 1), 1), ...
        score((el-1)*size(data.ecog, 1)+1:el*size(data.ecog, 1), 2), ...
        50, colors(el, :), 'filled'); hold on;
end
hold off;

xlabel('PC1');
ylabel('PC2');

