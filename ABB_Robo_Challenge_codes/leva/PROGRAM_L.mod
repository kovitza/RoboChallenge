MODULE PROGRAM_L
    
    PERS tasks task_list{2}:=[["T_ROB_L"], ["T_ROB_R"]];
    VAR syncident sync1;
    VAR syncident sync2;
    VAR syncident sync3;
    
    
    VAR num br_duzina_zute;
    VAR num br_duzina_crvene;
    VAR num br_duzina_zelene;
    VAR num br_visina_zute;
    VAR num br_visina_crvene;
    VAR num br_visina_zelene;
    
    PERS num br_duzina;
    PERS num br_visina;
    PERS num pomeraj;
    
    PERS bool radi;
    
    PROC main()
        
        VAR num zuta;
        VAR num zelena;
        VAR num crvena;
        VAR num j;
        VAR num odluka1;
        VAR num odluka2;
        VAR num odluka3;
        VAR num odluka4;
        VAR bool pp := TRUE;
        
        radi := TRUE;
       
        
       br_duzina_zute:=0;
       br_duzina_crvene:=0;
       br_duzina_zelene:=0;
       br_visina_zute:=0;
       br_visina_crvene:=0;
       br_visina_zelene:=0;
        
        
        
      WHILE pp DO
            TPReadFK odluka1, "Koliko vrsta zelite?", "1", stEmpty, "2", stEmpty, "3"; 
            
            IF odluka1 = 1 THEN
                TPReadFK odluka2, "Izaberite boju: ", "zuta", stEmpty, "zelena", stEmpty, "crvena";
                IF odluka2 = 1 THEN
                    zuta:=15;
                ELSE IF odluka2 = 3 THEN
                    zelena := 15;
                ELSE IF odluka2 = 5 THEN
                    crvena:=15;
                ENDIF
                ENDIF
                ENDIF
                
            ELSE IF odluka1 = 3 THEN
                TPReadFK odluka2, "Izaberite prvu boju: ", "zuta", stEmpty, "zelena", stEmpty, "crvena";
                IF odluka2 = 1 THEN
                    zuta:=15;
                    
                    TPReadFK odluka3, "Izaberite drugu boju: ", stEmpty, stEmpty, "zelena", stEmpty, "crvena";
                    IF odluka3 = 3 THEN
                        zelena := 15;
                    ELSE IF odluka3 = 5 THEN
                        crvena:=15;
                    ENDIF
                    ENDIF
                ELSE IF odluka2 = 3 THEN
                    zelena := 15;
                    
                    TPReadFK odluka3, "Izaberite drugu boju: ", "zuta", stEmpty, stEmpty, stEmpty, "crvena";
                    IF odluka3 = 1 THEN
                        zuta := 15;
                    ELSE IF odluka3 = 5 THEN
                        crvena:=15;
                    ENDIF
                    ENDIF
                ELSE IF odluka2 = 5 THEN
                    crvena:=15;
                    
                    TPReadFK odluka3, "Izaberite drugu boju: ", "zuta", stEmpty, "zelena", stEmpty, stEmpty;
                    IF odluka3 = 1 THEN
                        zuta := 15;
                    ELSE IF odluka3 = 3 THEN
                        zelena:=15;
                    ENDIF
                    ENDIF
                ENDIF
                ENDIF
                ENDIF
                
            ELSE IF odluka1 = 5 THEN
                zuta := 15;
                zelena := 15;
                crvena := 15;
            ENDIF
            ENDIF
            ENDIF
            
            g_Init;
            g_GripOut;
            
            FOR i FROM 1 TO 3 DO
                setDO RobotActive,1;
                pomeraj := 0;
                IF zuta > 0 AND zuta<16 THEN
                    j:=0;
                    WHILE j<zuta AND  j<5 DO
                        br_duzina := br_duzina_zute;
                        br_visina := br_visina_zute;
                        Path_Pick_Yellow;
                        j := j+1;
                        
                        IF IsMetal = 0 THEN
                            Path_No_Metal_Yellow;
                            IF br_duzina_zute = 4 THEN
                                br_duzina_zute := 0;
                                br_visina_zute := br_visina_zute + 1;
                            ELSE
                                br_duzina_zute := br_duzina_zute+1;
                            ENDIF
                        ELSE
                            Path_Yes_Metal_Yellow;
                        ENDIF
                        
                    ENDWHILE
                    zuta:= zuta - j;
                ENDIF
                pomeraj:=pomeraj + 38;
                
                
                IF zelena>0 AND zelena<16 THEN
                   j:=0;
                    WHILE j<zelena AND  j<5 DO
                        br_duzina := br_duzina_zelene;
                        br_visina := br_visina_zelene;
                        Path_Pick_Green;
                        j := j+1;
                        
                        IF IsMetal = 0 THEN
                            Path_No_Metal_Green;
                            IF br_duzina_zelene = 4 THEN
                                br_duzina_zelene:=0;
                                br_visina_zelene:= br_visina_zelene + 1;
                            ELSE
                                br_duzina_zelene:= br_duzina_zelene+1;
                            ENDIF
                        ELSE
                            Path_Yes_Metal_Green;
                        ENDIF
                        
                    ENDWHILE
                    zelena:= zelena - j;
                ENDIF
                pomeraj:= pomeraj + 27;
            
                IF crvena>0 AND crvena<16 THEN
                    j:=0;
                    WHILE j<crvena AND  j<5 DO
                        br_duzina := br_duzina_crvene;
                        br_visina := br_visina_crvene;
                        Path_Pick_Red;
                        j := j+1;
                        
                        IF IsMetal =0 THEN
                            Path_No_Metal_Red;
                            IF br_duzina_crvene = 4 THEN
                                br_duzina_crvene:=0;
                                br_visina_crvene:= br_visina_crvene + 1;
                            ELSE
                                br_duzina_crvene:= br_duzina_crvene+1;
                            ENDIF
                        ELSE
                            Path_Yes_Metal_Red;
                        ENDIF
                    ENDWHILE
                    crvena:= crvena - j;
                ENDIF
            ENDFOR
            radi := FALSE;
            setDO RobotActive,0;
            
            TPReadFK odluka4, "Da li je paleta ispraznjena?", "DA", stEmpty, stEmpty, stEmpty, "NE";
            IF odluka4 = 1 THEN
                pp := TRUE;
            ELSE 
                pp := FALSE;
            ENDIF
        ENDWHILE
    ENDPROC
    
    
ENDMODULE
                
            
            
            
            
        