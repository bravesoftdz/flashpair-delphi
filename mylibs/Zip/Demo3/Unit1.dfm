�
 TFORM1 0  TPF0TForm1Form1Left� Top� WidthlHeight�Caption
ZIP Demo 3
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style PositionpoScreenCenterScaledVisible	OnCreate
FormCreate	OnDestroyFormDestroyPixelsPerInch`
TextHeight TPanelPanel1Left Top WidthdHeight� AlignalTop
BevelInnerbvRaisedTabOrder  TLabelLabel1Left� Top2WidthXHeightCaptionZIP File Name:  TLabelLabel2Left� TopUWidthFHeightCaptionFile Spec 1:  TLabelLabel3Left� TopwWidthFHeightCaptionFile Spec 2:  TLabelZipFNameLeft� Top1Width8HeightCaption< none >
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFont  TRadioGroupRadioTraceOptLeft� Top� WidthbHeight<Caption	Trace DLLColumnsItems.StringsNoYes TabOrder   TRadioGroupRadioVerboseOptLeftTop� WidthfHeight<CaptionVerbose StatusColumnsItems.StringsNoYes TabOrder  TEditEdit1Left� TopOWidth�Height
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 
ParentFontTabOrder  TEditEdit2Left� ToptWidth�Height
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style 
ParentFontTabOrder  TRadioGroupRadioRecurseLeft�Top� Width� Height<CaptionRecurse DirectoriesColumnsItems.StringsNoYes TabOrder  TButtonNewButLeftTop7WidthQHeightCaption&New ZIP
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTabOrderOnClickNewButClick  TButtonOpenButLeftTopWidthPHeightCaption	&Open ZIP
Font.ColorclBlackFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTabOrderOnClickOpenButClick  TButton
VersionButLeftTopdWidthQHeightCaptionDLL &VersionTabOrderOnClickVersionButClick  TButtonListButLeft� TopWidth>HeightCaption&ListTabOrderOnClickListButClick  TButtonAddButLeft� TopWidth>HeightCaption&AddTabOrder	OnClickAddButClick  TButton	DeleteButLeft TopWidth>HeightCaption&DeleteTabOrder
OnClickDeleteButClick  TButton
ExtractButLeftpTopWidth>HeightCaption&ExtractTabOrderOnClickExtractButClick  TButtonAbortButLeft�TopWidth5HeightCaptionA&bortTabOrderOnClickAbortButClick  TButtonExitButLeft)TopWidth5HeightCaptionE&xitTabOrderOnClickExitButClick  TRadioGroupRadioDirNamesLeft4Top� WidthlHeight=CaptionSave Dir NamesColumnsItems.StringsNoYes TabOrder   TPanelPanel2Left Top� WidthdHeight� AlignalClient
BevelInnerbvRaisedTabOrder TPanelPanel3LeftTop.Width`Height� AlignalClientTabOrder  	TRichEdit	RichEdit1LeftTopWidth^Height� AlignalClient
ScrollBars
ssVerticalTabOrder    TPanelPanel4LeftTopWidth`Height,AlignalTop
BevelInner	bvLowered
BevelOuter	bvLoweredTabOrder TLabelFileBeingZippedLeft� TopWidthjHeight	AlignmenttaRightJustifyCaptionFile Being Zipped  TProgressBarProgressBar1LeftiTopWidth� HeightMin MaxdTabOrder     TOpenDialog
OpenDialogFileEditStylefsEditTitleOpen Existing ZIP fileLeftjTop�   
TZipMaster
ZipMaster1VerboseTraceAddCompLevel	
AddOptions ExtrOptions 
UnattendedSFXOverWriteMode
OvrConfirm
SFXCaptionSelf-extracting ArchiveKeepFreeOnDisk1 AddStoreSuffixesassGIFassPNGassZassZIPassZOOassARCassLZHassARJassTAZassTGZassLHA 
OnProgressZipMaster1Progress	OnMessageZipMaster1MessageLeft2Top�    