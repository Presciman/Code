function main(tensor,size_tens,size_core)
    cd tensorlab
    addpath(pwd)
    cd ..
    result_dir = './results';
    %one_core_size = [1 2 2];
    %size_core = {one_core_size, one_core_size, one_core_size};
    %size_core = [1 2 2];
    %initialization
    U = btd_rnd(size_tens,size_core);
    U0 = noisy(U,20);
    %Compute BTD for the tensor
    Uhat = btd_nls(tensor,U0);
    %tensor_hat = btdgen(Uhat);
    %Compute the error
    relerr = frob(btdres(tensor,Uhat))/frob(tensor);
    disp('The core size is: ');
    disp(size_core);
    disp('The error is: ');
    disp(relerr);
    %Save result to file
    if ~exist(result_dir,'dir')
        mkdir(result_dir);
    end
    out_filename = strcat(result_dir,'/core_sz_',replace(num2str(size_core),'  ','x'),'.mat');
    save(out_filename,'relerr','-V7.3');
    clear tensor U U0 Uhat
end