MODULE Module1
    PERS num br_duzina;
    PERS num br_visina;
    PERS num pomeraj;

    
    
       !  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    
    CONST robtarget posHome:=[[54.845252741,-184.443859011,238.96369283],[0.12531745,-0.225816146,-0.031964186,-0.965546941],[0,0,0,4],[-101.964427132,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget posKodKante:=[[0,-100,-20],[1,0,0,0],[0,0,0,0],[-101.964427132,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget posKodKante_3:=[[0,0,-20],[1,0,0,0],[0,0,0,0],[-101.964427132,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget posKodKante_2:=[[0,0,0],[1,0,0,0],[0,0,0,0],[-101.964427132,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget posTranzicija:=[[-0.118930441,-20.052950344,-210.115205223],[1,-0.000000095,-0.000000108,0.000000158],[1,-1,2,4],[-147.412404821,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget posIznadSenzora:=[[-8.495,34.489,-98.444458216],[1,0,0,0],[1,-1,2,4],[-147.412404821,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget posTranzicija_2:=[[-0.118939501,-5.052946544,-190.115208073],[1,-0.000000095,-0.000000108,0.000000158],[1,-1,2,4],[-147.412404821,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    VAR robtarget posTranzicija_3:=[[-0.118914221,-85.052946544,-170.115192873],[0.500000023,-0.500000086,0.49999982,0.500000072],[1,-1,-1,4],[-147.412404821,9E+09,9E+09,9E+09,9E+09,9E+09]];
    VAR robtarget poz_iznad_palete_2:=[[20,9.582041834,90],[0,-0.707106781,0.707106781,0],[0,0,-2,4],[-170.196454308,9E+09,9E+09,9E+09,9E+09,9E+09]];
    VAR robtarget poz_iznad_palete:=[[20.00,9.99,-12.75],[2.11141E-05,0.707095,-0.707119,-9.2686E-07],[1,0,-2,4],[-170.196,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Primopredaja:=[[-0.118901581,-125.052946544,-190.115185273],[0.707106714,-0.707106848,-0.000000188,0.000000035],[1,-1,-1,4],[-147.412404821,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Primopredaja_2:=[[-0.118912401,-125.052956019,-140.115185273],[0.707106714,-0.707106848,-0.000000188,0.000000035],[1,-1,-1,4],[-147.412404821,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    
    PROC Path_Primopredaja()
        
        MoveJ Primopredaja,v500,z50,VaccumOne\WObj:=woPreuzmi;
        MoveL Primopredaja_2,v50,fine,VaccumOne\WObj:=woPreuzmi;
        g_VacuumOn1;
        WaitSyncTask \InPos, sync1,task_list;
       
        
        WaitSyncTask sync2,task_list;
        WaitTime\InPos,0.1;
        WaitSyncTask sync3,task_list;
        
    ENDPROC
    PROC Path_Smestanje()
        poz_iznad_palete_2:=[[20+br_duzina*43,9.99+pomeraj,90+br_visina*42],[0,-0.707106781,0.707106781,0],[0,0,-2,4],[-170.196454308,9E+09,9E+09,9E+09,9E+09,9E+09]];
        !poz_iznad_palete:=[[20+br_duzina*40,10+pomeraj,45+br_visina*40],[0,-0.707106781,0.707106781,0],[1,0,-2,4],[-170.196454308,9E+09,9E+09,9E+09,9E+09,9E+09]]; 
        poz_iznad_palete:=[[20.00+br_duzina*43,9.99+pomeraj,-12.75+br_visina*42],[2.11141E-05,0.707095,-0.707119,-9.2686E-07],[1,0,-2,4],[-170.196,9E+09,9E+09,9E+09,9E+09,9E+09]];
        posTranzicija_3:=[[-0.118914221,-85.052946544,-170.115192873+br_visina*40],[0.500000023,-0.500000086,0.49999982,0.500000072],[1,-1,-1,4],[-147.412404821,9E+09,9E+09,9E+09,9E+09,9E+09]];
        

        MoveL poz_iznad_palete_2,v500,fine,VaccumOne\WObj:=woPaleta;
        MoveL poz_iznad_palete,v50,fine,VaccumOne\WObj:=woPaleta;
        WaitTime \InPos, 0.1;
        g_VacuumOff1;
        MoveL poz_iznad_palete_2,v100,fine,VaccumOne\WObj:=woPaleta;
        MoveL Primopredaja,v500,z100,VaccumOne\WObj:=woPreuzmi;
    ENDPROC
ENDMODULE