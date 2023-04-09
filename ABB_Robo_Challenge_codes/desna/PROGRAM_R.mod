MODULE PROGRAM_R
    
    PERS num IsMetal;
    VAR syncident sync1;
    PERS tasks task_list{2}:=[["T_ROB_L"], ["T_ROB_R"]];
    VAR syncident sync2;
    VAR syncident sync3;
    PERS bool radi;
    
    PROC main()
        g_Init;
        WHILE radi  DO
            Path_Primopredaja;
            IF IsMetal = 1 THEN
                g_VacuumOff1;
            ELSE
                Path_Smestanje;
            ENDIF
            
        ENDWHILE
    ENDPROC
ENDMODULE