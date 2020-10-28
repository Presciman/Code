function main(file_path,size_core)
    cd tensorlab
    addpath(pwd)
    cd ..
    %read the file
    fileID = fopen(file_path);
    in_array = fread(fileID,'float');
    size_tens = [512 512 512];
    tensor = reshape(in_array,size_tens);
    disp('Reading tensor finished!');
    %one_core_size = [1 2 2];
    %size_core = {one_core_size, one_core_size, one_core_size};
    %size_core = [1 2 2];
    %initialization
    U = btd_rnd(size_tens,size_core);
    U0 = noisy(U,20);
    Uhat = btd_nls(tensor,U0);
    %tensor_hat = btdgen(Uhat);
    %Compute the error
    relerr = frob(btdres(tensor,Uhat))/frob(tensor);
    disp('The core size is: ');
    disp(size_core);
    disp('The error is: ');
    disp(relerr);
    
end