setMode -bs
setMode -bs
setMode -bs
setMode -bs
setCable -port auto
Identify -inferir 
identifyMPM 
assignFile -p 2 -file "G:/AMEY_3744/traficlight_final/tpm.bit"
Program -p 2 
setMode -bs
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
saveProjectFile -file "G:\AMEY_3744\traficlight_final\\auto_project.ipf"
setMode -bs
setMode -bs
deleteDevice -position 1
deleteDevice -position 1
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
