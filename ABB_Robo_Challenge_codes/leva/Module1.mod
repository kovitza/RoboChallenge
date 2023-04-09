MODULE Module1
    
    PERS num IsMetal;
    
    CONST robtarget posHome:=[[89.387946423,156.622117957,147.913470217],[0.066010726,0.842420918,-0.111214912,0.523068661],[0,0,0,4],[101.964427132,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget posYellowKockRanije:=[[0,18.749999999,-32.475952643],[0,0,-0.258819045,0.965925826],[-1,0,-2,4],[101.964431609,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget posYellowKock:=[[0.02,7.64,-13.22],[0.965927,0.258817,1.54824E-05,-1.41526E-06],[-1,-2,2,4],[102.778,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget posYellowKockPomeranje:=[[0,188.749999999,-32.475952643],[0.707106781,0,0,-0.707106781],[-1,0,-2,4],[101.964431609,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget posYellowKockPomeranjeKodKante:=[[0,183.749999999,-32.475952643],[0,0,0.707106781,0.707106781],[-1,0,-2,4],[101.964431609,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget posYellowKockUp:=[[-0.79,45.49,-77.87],[0.965923,0.258814,-0.00274869,-8.89019E-05],[-1,-2,2,4],[105.77,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SenzorDole:=[[23.88,-0.26,-60.27],[0.70711,-4.12547E-06,-1.47362E-07,0.707103],[-1,-2,3,4],[141.48,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SenzorDolazak:=[[23.884,-0.258,-60.279],[0.707106781,0,0,0.707106781],[-1,-2,3,4],[101.9644362,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget posGreenKockUp:=[[56.24,39.87,-70.18],[0.964961,0.260483,0.0305117,0.00826304],[-1,-2,2,4],[102.041,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget posGreenKock:=[[62.94,4.81,-16.31],[0.96335,0.268246,0.000869685,-0.000743491],[-1,-2,2,4],[102.163,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget posRedKockUp:=[[123.01,38.04,-65.90],[0.965925,0.258824,1.16659E-05,7.82068E-07],[-1,-2,2,4],[101.964,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget posRedKock:=[[120.22,5.44,-16.96],[0.962691,0.270603,-0.000479747,0.000162174],[-1,-2,2,4],[102.085,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SenzorTransakcije:=[[32.27,167.38,-150.279],[0.707106781,-0.707106781,0,0],[-1,-2,3,4],[101.9644362,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Predaja:=[[32.27,165.38,-230.279],[0.707106781,-0.707106781,0,0],[-1,-2,3,4],[101.9644362,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Predaja_2:=[[29.46,165.24,-255.08],[0.736071,-0.676804,0.00842612,0.00806546],[-1,-3,2,4],[105.413,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PredajaBezKante:=[[31.15,173.71,-268.59],[0.736045,-0.676832,0.00838831,0.00808762],[-1,-3,2,4],[105.663,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SenzorDolazak_2:=[[23.884,-0.258,-140.279],[0.707106781,0,0,0.707106781],[-1,-2,3,4],[101.9644362,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SenzorTransakcije_2:=[[32.27,167.38,-130.279],[0.707106781,-0.707106781,0,0],[-1,-2,3,4],[101.9644362,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget IznadKante:=[[72.27,167.38,-170.279],[0.707106781,-0.707106781,0,0],[-1,-2,3,4],[101.9644362,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget SenzorGore:=[[23.884,-0.258,-170.279],[0.707106781,0,0,0.707106781],[-1,-2,3,4],[101.9644362,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Predaja_12:=[[33.47,174.51,-254.40],[0.736066,-0.676809,0.00842033,0.00807085],[-1,-3,2,4],[105.403,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PredajaBezKante10:=[[31.05,101.22,-274.67],[0.736039,-0.676839,0.00837774,0.00808113],[-1,-3,2,4],[105.739,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PROC Path_Pick_Yellow()
        g_Gripout;
        MoveJ posYellowKockUp,v500,fine,Servo\WObj:=woYellow;
        MoveL posYellowKock,v100,fine,Servo\WObj:=woYellow;
        WaitTime\InPos,0.1;
        g_Gripin;
        MoveL posYellowKockUp, v100, fine, Servo\WObj:=woYellow;
        MoveJ SenzorDolazak,v500,fine,Servo\WObj:=woSenzor;
        MoveL SenzorDole,v100,fine,Servo\WObj:=woSenzor;
        
        IF MetalSensor = 1 THEN
            IsMetal:=1;
        ELSE
            IsMetal := 0;
        ENDIF
            
        
        WaitTime\InPos,1;
    ENDPROC
    PROC Path_Pick_Green()
        g_Gripout;
        MoveJ posGreenKockUp,v500,fine,Servo\WObj:=woYellow;
        MoveL posGreenKock,v100,fine,Servo\WObj:=woYellow;
        WaitTime\InPos,0.1;
        g_Gripin;
        MoveL posGreenKockUp,v100,fine,Servo\WObj:=woYellow;
        MoveJ SenzorDolazak,v500,z50,Servo\WObj:=woSenzor;
        MoveL SenzorDole,v100,fine,Servo\WObj:=woSenzor;
        
        IF MetalSensor = 1 THEN
            IsMetal:=1;
        ELSE
            IsMetal := 0;
        ENDIF
        WaitTime\InPos,1;
            
        
       
    ENDPROC
    PROC Path_Pick_Red()
        g_Gripout;
        MoveJ posRedKockUp,v500,fine,Servo\WObj:=woYellow;
        MoveL posRedKock,v100,fine,Servo\WObj:=woYellow;
        WaitTime\InPos,0.1;
        g_GripIn;
        MoveL posRedKockUp,v100,fine,Servo\WObj:=woYellow;
        MoveJ SenzorDolazak,v500,fine,Servo\WObj:=woSenzor;
        MoveL SenzorDole,v100,fine,Servo\WObj:=woSenzor;
        
        IF MetalSensor = 1 THEN
            IsMetal:=1;
        ELSE
            IsMetal := 0;
        ENDIF
            
        
        
        WaitTime\InPos,1;
    ENDPROC
    PROC Path_No_Metal_Green()
        MoveJ SenzorGore,v500,z100,Servo\WObj:=woSenzor;
        MoveJ Predaja_12, v500, z100, Servo\WObj:=woSenzor;
        MoveL PredajaBezKante, v50, fine, Servo\WObj:=woSenzor;
        WaitSyncTask sync1,task_list;
        WaitSyncTask sync2,task_list;
        g_GripOut;
        WaitTime \Inpos, 0.5; !!!Jel potrebno?
        
        WaitSyncTask sync3,task_list;
        MoveJ posYellowKockUp,v500,fine,Servo\WObj:=woYellow;
        
        
        MoveJ posGreenKockUp,v500,fine,Servo\WObj:=woYellow;
    ENDPROC
    PROC Path_Yes_Metal_Green()
        MoveJ SenzorGore,v500,z100,Servo\WObj:=woSenzor;
        MoveJ IznadKante,v500,fine,Servo\WObj:=woSenzor;
        g_Gripout;
        WaitTime\InPos,0.2; !!Mozda previse
        MoveJ posGreenKockUp,v500,fine,Servo\WObj:=woYellow;
       
    ENDPROC
    PROC Path_No_Metal_Red()
        MoveJ SenzorGore,v500,z100,Servo\WObj:=woSenzor;
        MoveJ Predaja_12, v500, z100, Servo\WObj:=woSenzor;
        MoveL PredajaBezKante, v50, fine, Servo\WObj:=woSenzor;
        WaitSyncTask sync1,task_list;
        WaitSyncTask sync2,task_list;
        g_GripOut; 
        WaitTime\InPos,0.5;
        MoveL PredajaBezKante10, v50, fine, Servo\WObj:=woSenzor;
        WaitSyncTask sync3,task_list;
        MoveJ posRedKockUp,v500,fine,Servo\WObj:=woYellow;
    ENDPROC
    PROC Path_Yes_Metal_Red()
        MoveJ SenzorGore,v500,z100,Servo\WObj:=woSenzor;
        MoveJ IznadKante,v500,fine,Servo\WObj:=woSenzor;
        g_Gripout;
        WaitTime\InPos,0.2;
        MoveJ posRedKockUp,v500,fine,Servo\WObj:=woYellow;
    ENDPROC
    PROC Path_No_Metal_Yellow()
        MoveJ SenzorGore,v500,z100,Servo\WObj:=woSenzor;
        MoveJ Predaja_12, v500, z100, Servo\WObj:=woSenzor;
        MoveL PredajaBezKante, v50, fine, Servo\WObj:=woSenzor;
        WaitSyncTask sync1,task_list;
        WaitSyncTask sync2,task_list;
        g_GripOut; 
        WaitTime\InPos,0.5;
        MoveL PredajaBezKante10, v50, fine, Servo\WObj:=woSenzor;
        WaitSyncTask sync3,task_list;
        MoveJ posYellowKockUp,v500,fine,Servo\WObj:=woYellow;
    ENDPROC
    PROC Path_Yes_Metal_Yellow()
        MoveJ SenzorGore,v500,z100,Servo\WObj:=woSenzor;
        MoveJ IznadKante,v500,fine,Servo\WObj:=woSenzor;
        g_Gripout;
        WaitTime\InPos,0.2;
        MoveJ posYellowKockUp,v500,fine,Servo\WObj:=woYellow;
    ENDPROC

    
ENDMODULE