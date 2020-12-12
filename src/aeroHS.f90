!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! author           : antonio pucciarelli                                  !
! date of creation : 11/20/2020 24:04                                     !
! email            : antonio.pucc@gmail.com                               !
! written with     : vim                                                  ! 
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
program aeroHS
    
    use airfoilgenerator
    use MEANline_object
    use AIRFOIL_object
    use PANEL_object
    use print_save
    use plot
    use cp

    implicit none
    
    type(NACA_airfoil)                      :: airfoil
    type(MEANline),dimension(:),allocatable :: MEAN_array    
    type(panel),dimension(:),allocatable    :: PANEL_array
    integer(kind=4)                         :: MEANsize
    real(kind=8),dimension(:,:),allocatable :: matrix
    real(kind=8),dimension(:),allocatable   :: vector     
    real(kind=8),dimension(:),allocatable   :: solution
    real(kind=8),dimension(:),allocatable   :: Vvec
    real(kind=8),dimension(:),allocatable   :: pressure
    real(kind=8),dimension(:),allocatable   :: cp_vec 
    real(kind=8),dimension(:,:),allocatable :: cl_alpha
    integer(kind=4)                         :: PANELsize      = 0
    integer(kind=4)                         :: maxsize        = 0
    real(kind=8)                            :: alpha          = 0.0
    real(kind=8)                            :: V              = 0.0
    real(kind=8)                            :: P0             = 0.0
    real(kind=8)                            :: rho            = 0.0
    integer(kind=4)                         :: start_angle    = 0
    integer(kind=4)                         :: end_angle      = 0
    integer(kind=4)                         :: dim            = 0
    integer(kind=4)                         :: selection      = 0
    integer(kind=4)                         :: selection_type = 0
    integer(kind=4)                         :: i              = 1
    character(len=30)                       :: filename
    
    do while(i==1)
        
        print*, 'there are 3 different options:'
        print*, '   option 1 --> analize 1 airfoil'
        print*, '                   1 --> compute Cp'
        print*, '                   2 --> compute [Cp;Cl;velocity;pressure]'
        print*, '   option 2 --> analize 2 airfoils'
        print*, '                   1 --> [L;M]'
        print*, '   option 3 --> analize ground effect'
        print*, '                   1 --> [L;M]'
        print*, 'type an option'
        read*,  selection_type 

        if(selection_type == 1)then
            
            call setting_properties(P0,V,rho,alpha,start_angle,end_angle,dim,selection)

            call ask_geometry(PANELsize,PANEL_array,MEAN_array,airfoil)

            ! computing matrix process
            call compute_matrix(matrix,PANEL_array,PANELsize)

            if(selection == 1)then
            
                ! compute known vector properties from geometry and external flow 
                allocate(vector(1:PANELsize))
                call compute_vector(real(1.0,8),alpha,vector,PANEL_array,PANELsize)

                ! allocation of solution array's dimensions 
                allocate(solution(1:PANELsize+1))
                ! computing solution
                solution = solve_matrix(matrix,vector,PANELsize)

                allocate(Vvec(1:PANELsize))
                Vvec = compute_vel(solution,PANELsize,PANEL_array,real(1.0,8),alpha)

                allocate(cp_vec(1:PANELsize))
                cp_vec = compute_cp(Vvec,real(1.0,8),PANELsize)

                call ask_to_save_matrix_vector(PANELsize,matrix,vector,solution)

                !!!!!!!!!!!!!!!!!!!!!! PLOTTING RESULTS !!!!!!!!!!!!!!!!!!!!!!!!
                call plot_cp(cp_vec,PANEL_array,PANELsize)
                !!!!!!!!!!!!!!!!!!!!!! PLOTTING RESULTS !!!!!!!!!!!!!!!!!!!!!!!!

                ! deallocation process
                deallocate(Vvec)
                deallocate(cp_vec)
                deallocate(vector)
                deallocate(solution)

            else if(selection == 2)then

                ! compute known vector properties from geometry and external flow 
                allocate(vector(1:PANELsize))
                call compute_vector(V,alpha,vector,PANEL_array,PANELsize)

                ! allocation of solution array's dimensions 
                allocate(solution(1:PANELsize+1))
                ! computing solution
                solution = solve_matrix(matrix,vector,PANELsize)
            
                allocate(Vvec(1:PANELsize))
                Vvec = compute_vel(solution,PANELsize,PANEL_array,V,alpha)

                allocate(pressure(1:PANELsize))
                pressure = compute_pressure(P0,V,rho,Vvec,PANELsize)

                allocate(cp_vec(1:PANELsize))
                cp_vec = compute_cp(Vvec,V,PANELsize)

                call ask_to_save_matrix_vector(PANELsize,matrix,vector,solution)

                !!!!!!!!!!!!!!!!!!!!!! PLOTTING RESULTS !!!!!!!!!!!!!!!!!!!!!!!!
                call plot_cp(cp_vec,PANEL_array,PANELsize)
                call plot_pressure(pressure,PANEL_array,PANELsize)
                call plot_vel(Vvec,PANEL_array,PANELsize)
                !!!!!!!!!!!!!!!!!!!!!! PLOTTING RESULTS !!!!!!!!!!!!!!!!!!!!!!!!

                ! deallocation process
                deallocate(Vvec)
                deallocate(pressure)
                deallocate(cp_vec)
                deallocate(vector)
                deallocate(solution)

            else if(selection == 3)then

                allocate(cl_alpha(dim,2))
                call CLalpha(cl_alpha,start_angle,end_angle,dim,matrix,PANEL_array,PANELsize)

                ! dealloctaion process
                deallocate(cl_alpha)
            
            end if

            call ask_to_continue_cp(i)

            ! deallocation process
            deallocate(PANEL_array)
            deallocate(MEAN_array)
            deallocate(matrix)
            
            ! create a function that computes the velocity in other points in space in order to see the actual flow around the airfoil
            
            ! create a grid and then compute velocity on points --> use then python to plot the contour 

        else if(selection_type == 2)then 
                    
            ! call 2 times airfoil generator
            ! modify extension at every suborutine and function regarding # of panels
            ! use multi_cp to made this changements -- you have cp that works fine
            ! enable difference dimension between airfoils
            ! modify matrix generation
            ! compute moment and lift

        else if(selection_type == 3)then 

            ! generate soil
            ! modify extension at every subroutine and function regarding # of panels
            ! compute moment and lift 

        end if 
    end do 

end program aeroHS
