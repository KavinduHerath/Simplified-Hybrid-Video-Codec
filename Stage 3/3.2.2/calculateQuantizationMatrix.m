function quantizationMatrix = calculateQuantizationMatrix(qp)
    % Define the quantization matrices for different QP levels
    quantizationMatrices = {
        [3 2 2 3 5 8 10 12;
         2 2 3 4 5 12 12 11;
         3 3 3 5 8 11 14 11;
         3 3 4 6 10 17 16 12;
         4 4 7 11 14 22 21 15;
         5 7 11 13 16 12 23 18;
         10 13 16 17 21 24 24 21;
         14 18 19 20 22 20 20 20],
    };
    
    % Choose the quantization matrix based on the QP value
    quantizationMatrix = quantizationMatrices{1}*qp;
end