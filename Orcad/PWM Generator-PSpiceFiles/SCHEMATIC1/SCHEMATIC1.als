.ALIASES
R_R1            R1(1=N36490 2=N36818 ) CN @PWM GENERATOR.SCHEMATIC1(sch_1):INS36524@ANALOG.R.Normal(chips)
R_R2            R2(1=N36794 2=N36818 ) CN @PWM GENERATOR.SCHEMATIC1(sch_1):INS36540@ANALOG.R.Normal(chips)
V_V4            V4(+=VCC_ARROW -=0 ) CN @PWM GENERATOR.SCHEMATIC1(sch_1):INS36603@SOURCE.VDC.Normal(chips)
V_V5            V5(+=VCC -=0 ) CN @PWM GENERATOR.SCHEMATIC1(sch_1):INS36633@SOURCE.VDC.Normal(chips)
C_C1            C1(1=N36794 2=N36505 ) CN @PWM GENERATOR.SCHEMATIC1(sch_1):INS36733@ANALOG.C.Normal(chips)
R_R3            R3(1=N36505 2=N36490 ) CN @PWM GENERATOR.SCHEMATIC1(sch_1):INS37404@ANALOG.R.Normal(chips)
X_U4            U4(+=N75044 -=N36505 V+=VCC_ARROW V-=VCC OUT=N38449 ) CN @PWM
+GENERATOR.SCHEMATIC1(sch_1):INS38241@MAXIM.MAX4223/MXM.Normal(chips)
V_V6            V6(+=N38350 -=N38365 ) CN @PWM GENERATOR.SCHEMATIC1(sch_1):INS38312@SOURCE.VSIN.Normal(chips)
X_U5            U5(+=N60513 -=N36794 V+=VCC_ARROW V-=0 OUT=N36505 ) CN @PWM
+GENERATOR.SCHEMATIC1(sch_1):INS40374@ANLG_DEV.AD8009an/AD.Normal(chips)
X_U6            U6(+=N36490 -=N60513 V+=VCC_ARROW V-=0 OUT=N36818 ) CN @PWM
+GENERATOR.SCHEMATIC1(sch_1):INS40508@ANLG_DEV.AD8009an/AD.Normal(chips)
R_R6            R6(1=N60513 2=VCC_ARROW ) CN @PWM GENERATOR.SCHEMATIC1(sch_1):INS60457@ANALOG.R.Normal(chips)
R_R7            R7(1=N60513 2=0 ) CN @PWM GENERATOR.SCHEMATIC1(sch_1):INS60480@ANALOG.R.Normal(chips)
R_R8            R8(1=N38350 2=N75044 ) CN @PWM GENERATOR.SCHEMATIC1(sch_1):INS75024@ANALOG.R.Normal(chips)
R_R9            R9(1=0 2=N38449 ) CN @PWM GENERATOR.SCHEMATIC1(sch_1):INS95836@ANALOG.R.Normal(chips)
V_V7            V7(+=N38365 -=0 ) CN @PWM GENERATOR.SCHEMATIC1(sch_1):INS96740@SOURCE.VSIN.Normal(chips)
_    _(VCC=VCC)
_    _(VCC_ARROW=VCC_ARROW)
.ENDALIASES