.ALIASES
V_V1            V1(+=N52221 -=N44073 ) CN @SUMMTEST.SCHEMATIC1(sch_1):INS44025@SOURCE.VPULSE.Normal(chips)
V_V2            V2(+=N44073 -=0 ) CN @SUMMTEST.SCHEMATIC1(sch_1):INS44104@SOURCE.VSIN.Normal(chips)
V_V5            V5(+=VCC -=0 ) CN @SUMMTEST.SCHEMATIC1(sch_1):INS52036@SOURCE.VDC.Normal(chips)
V_V4            V4(+=VCC_ARROW -=0 ) CN @SUMMTEST.SCHEMATIC1(sch_1):INS52006@SOURCE.VDC.Normal(chips)
R_R1            R1(1=N52221 2=N52205 ) CN @SUMMTEST.SCHEMATIC1(sch_1):INS52132@ANALOG.R.Normal(chips)
R_R2            R2(1=0 2=N52212 ) CN @SUMMTEST.SCHEMATIC1(sch_1):INS52148@ANALOG.R.Normal(chips)
C_C1            C1(1=N52212 2=N52221 ) CN @SUMMTEST.SCHEMATIC1(sch_1):INS52173@ANALOG.C.Normal(chips)
C_C2            C2(1=N52205 2=0 ) CN @SUMMTEST.SCHEMATIC1(sch_1):INS52189@ANALOG.C.Normal(chips)
X_U6            U6(+=0 -=N71844 V+=VCC_ARROW V-=VCC OUT=N71812 ) CN
+@SUMMTEST.SCHEMATIC1(sch_1):INS71776@ANLG_DEV.AD8004AN/AD.Normal(chips)
R_R9            R9(1=N52205 2=N71844 ) CN @SUMMTEST.SCHEMATIC1(sch_1):INS71820@ANALOG.R.Normal(chips)
R_R10           R10(1=N71844 2=N71812 ) CN @SUMMTEST.SCHEMATIC1(sch_1):INS71862@ANALOG.R.Normal(chips)
R_R11           R11(1=N52212 2=N71844 ) CN @SUMMTEST.SCHEMATIC1(sch_1):INS72235@ANALOG.R.Normal(chips)
_    _(VCC=VCC)
_    _(VCC_ARROW=VCC_ARROW)
.ENDALIASES
