function [Is] = ripserDM( D, coeff, maxdim, thresh )
    %:param D: (N X N distance matrix
    %:param coeff: Field coefficient with which to run TDA
    %:param maxdim: Maximum dimension of homology
    %:param thresh: Threshold up to which to add edges
    if nargin < 4
        thresh = max(D(:))*2;
    end
    d = squareform(D);
    d = single(d(:));
    Is = ripser(d, coeff, maxdim, thresh);
end

