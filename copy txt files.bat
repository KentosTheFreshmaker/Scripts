@echo off
set /P direc="Backup location: "
set /P sdirect="Source Drive: "


for /r %sdirect% %%f in (*.doc, *.docx, *.mpp, *.xlsx, *.rtf, *.pdf, *.ppt, *.pptx, *.epub, *.pub, *.ods, *.odt, *.ppsx, *.pps, *.ppg, *.jw, *.dox, *.odf, *.odt, *.ods, *.odt, *.odp, *.odg, *.odm, *.sds, *.odc, *.vdx, *.vst, *.vsd, *.xlr, *.wpw, *.mppx, *.ppv ) do @copy "%%f" "%direc%"