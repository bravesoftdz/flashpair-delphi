//----------------------------------------------------------------------------
// GIFImage.hpp - bcbdcc32 generated hdr (DO NOT EDIT) rev: 0
// From: GIFImage.pas
//----------------------------------------------------------------------------
#ifndef GIFImageHPP
#define GIFImageHPP
//----------------------------------------------------------------------------
#include <Menus.hpp>
#include <TimerEx.hpp>
#include <Dialogs.hpp>
#include <Forms.hpp>
#include <Controls.hpp>
#include <Classes.hpp>
#include <Graphics.hpp>
#include <SysUtils.hpp>
#include <Messages.hpp>
#include <Windows.hpp>
#include <System.hpp>
namespace Gifimage
{
//-- type declarations -------------------------------------------------------
enum TGIFVersion { gvGIF87a, gvGIF89a };

#pragma pack(push, 1)
struct TRGBColor
{
	Byte Red;
	Byte Green;
	Byte Blue;
} ;
#pragma pack(pop)

typedef TRGBColor TColorTable[256];

typedef TColorTable *PColorTable;

enum TDisposalType { dtUndefined, dtDoNothing, dtToBackground, dtToPrevious };

struct TFrameInfo
{
	Graphics::TBitmap* iiImage;
	int iiLeft;
	int iiTop;
	int iiWidth;
	int iiHeight;
	int iiDelay;
	bool iiInterlaced;
	bool iiTransparent;
	Graphics::TColor iiTransparentColor;
	TDisposalType iiDisposalMethod;
	System::AnsiString iiComment;
} ;

struct TSaveInfo
{
	int siNumFrames;
	TFrameInfo *siFrames[256];
	Word siNumLoops;
	bool siUseGlobalColorTable;
} ;

enum TGIFError { geNone, geCanceled, geInternal, geFileFormat, geTooManyColors, geIndexOutOfBounds, 
	geWindows, geFileNotFound, geResourceNotFound };

typedef void __fastcall (__closure *TProgressEvent)(System::TObject* Sender, const long BytesProcessed
	, const long BytesToProcess, int PercentageProcessed, bool &KeepOnProcessing);

class __declspec(delphiclass) TGIFFrame;
class __declspec(delphiclass) TGIFImage;
class __declspec(pascalimplementation) TGIFImage : public Controls::TGraphicControl
{
	typedef Controls::TGraphicControl inherited;
	
private:
	bool FAnimated;
	bool FAnimate;
	bool FAutoSize;
	Graphics::TBitmap* FBitmap;
	bool FCenter;
	int FCurrentFrame;
	Classes::TMemoryStream* FData;
	bool FDoubleBuffered;
	bool FEmpty;
	bool FFirstImageOnly;
	int FImageWidth;
	int FImageHeight;
	bool FInterlaced;
	bool FLoop;
	bool FMouseOnTransparent;
	int FNumFrames;
	int FNumIterations;
	bool FOpaque;
	int FSpeed;
	bool FStretch;
	bool FStretchRatio;
	bool FTile;
	bool FTransparent;
	bool FVisible;
	TGIFVersion FVersion;
	Classes::TNotifyEvent FOnChanging;
	Classes::TNotifyEvent FOnChange;
	TProgressEvent FOnProgress;
	Classes::TNotifyEvent FOnWrapAnimation;
	Graphics::TBitmap* Image;
	Graphics::TBitmap* ImageMask;
	int FBitsPerPixel;
	TRGBColor GlobalColorTable[256];
	TGIFFrame* *Frames[256];
	int CurrentIteration;
	bool Fresh;
	bool FRepainting;
	bool Have2Stretch;
	bool HaveInfoOnly;
	Classes::TMemoryStream* MemStream;
	bool KeepOnDecoding;
	Timerex::TTimerEx* Trigger;
	bool __fastcall GetThreaded(void);
	void __fastcall SetThreaded(bool aValue);
	Classes::TThreadPriority __fastcall GetThreadPriority(void);
	void __fastcall SetThreadPriority(Classes::TThreadPriority aValue);
	void __fastcall SetAnimate(bool aAnimate);
	void __fastcall SetAutoSize(bool aAutoSize);
	void __fastcall SetCenter(bool aCenter);
	void __fastcall SetFrame(int aFrame);
	void __fastcall SetLoop(bool aLoop);
	void __fastcall SetSpeed(int aSpeed);
	void __fastcall SetStretch(bool aStretch);
	void __fastcall SetStretchRatio(bool aStretchRatio);
	void __fastcall SetTile(bool aTile);
	HIDESBASE void __fastcall SetVisible(bool aVisible);
	Graphics::TBitmap* __fastcall GetBitmap(void);
	Windows::TRect __fastcall GetClipRect(void);
	void __fastcall UpdateOpacity(void);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Msg);
	HIDESBASE MESSAGE void __fastcall WMMouseMove(Messages::TWMMouse &Msg);
	void __fastcall SetOpaque(const bool Value);
	
protected:
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall DefineProperties(Classes::TFiler* Filer);
	virtual void __fastcall ReadData(Classes::TStream* Stream);
	virtual void __fastcall WriteData(Classes::TStream* Stream);
	virtual HPALETTE __fastcall GetPalette(void);
	virtual bool __fastcall ReadGIF(void);
	virtual void __fastcall Changing(void);
	virtual void __fastcall Change(void);
	virtual void __fastcall DoProgress(void);
	void __fastcall LocalClear(void);
	void __fastcall SetupBitmap(void);
	void __fastcall RemoveBitmap(int aFrame);
	void __fastcall PaintImage(HDC DC);
	virtual void __fastcall Paint(void);
	void __fastcall OnTrigger(System::TObject* Sender);
	
public:
	TGIFError LastError;
	__fastcall virtual TGIFImage(Classes::TComponent* aOwner);
	__fastcall virtual ~TGIFImage(void);
	virtual void __fastcall Repaint(void);
	__property Graphics::TBitmap* Bitmap = {read=GetBitmap, nodefault};
	__property int BitsPerPixel = {read=FBitsPerPixel, nodefault};
	__property Classes::TMemoryStream* Data = {read=FData, nodefault};
	__property bool Empty = {read=FEmpty, nodefault};
	__property int ImageWidth = {read=FImageWidth, nodefault};
	__property int ImageHeight = {read=FImageHeight, nodefault};
	__property bool IsAnimated = {read=FAnimated, nodefault};
	__property bool IsInterlaced = {read=FInterlaced, nodefault};
	__property bool IsTransparent = {read=FTransparent, nodefault};
	__property bool MouseOnTransparent = {read=FMouseOnTransparent, nodefault};
	__property int NumFrames = {read=FNumFrames, nodefault};
	__property int NumIterations = {read=FNumIterations, nodefault};
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	void __fastcall Clear(void);
	TFrameInfo __fastcall GetFrameInfo(const int FrameIndex);
	bool __fastcall LoadFromFile(const System::AnsiString GIFFileName);
	bool __fastcall LoadFromStream(Classes::TStream* Stream);
	bool __fastcall LoadInfoFromFile(const System::AnsiString GIFFileName);
	bool __fastcall LoadInfoFromStream(Classes::TStream* Stream);
	bool __fastcall LoadFromResourceName(int Instance, const System::AnsiString ResName);
	bool __fastcall LoadFromResourceID(int Instance, const int ResID);
	
__published:
	__property Align ;
	__property Color ;
	__property Cursor ;
	__property DragCursor ;
	__property DragMode ;
	__property Height ;
	__property Hint ;
	__property Left ;
	__property ParentShowHint ;
	__property PopupMenu ;
	__property ShowHint ;
	__property Top ;
	__property Width ;
	__property OnClick ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDrag ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnStartDrag ;
	__property bool Animate = {read=FAnimate, write=SetAnimate, nodefault};
	__property bool AutoSize = {read=FAutoSize, write=SetAutoSize, nodefault};
	__property bool Center = {read=FCenter, write=SetCenter, nodefault};
	__property int CurrentFrame = {read=FCurrentFrame, write=SetFrame, stored=false, nodefault};
	__property bool DoubleBuffered = {read=FDoubleBuffered, write=FDoubleBuffered, default=1};
	__property bool FirstImageOnly = {read=FFirstImageOnly, write=FFirstImageOnly, nodefault};
	__property bool Loop = {read=FLoop, write=SetLoop, nodefault};
	__property bool Opaque = {read=FOpaque, write=SetOpaque, nodefault};
	__property int Speed = {read=FSpeed, write=SetSpeed, default=100};
	__property bool Stretch = {read=FStretch, write=SetStretch, nodefault};
	__property bool StretchRatio = {read=FStretchRatio, write=SetStretchRatio, nodefault};
	__property bool Tile = {read=FTile, write=SetTile, nodefault};
	__property bool Threaded = {read=GetThreaded, write=SetThreaded, default=1};
	__property Classes::TThreadPriority ThreadPriority = {read=GetThreadPriority, write=SetThreadPriority
		, default=3};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property TGIFVersion Version = {read=FVersion, nodefault};
	__property Classes::TNotifyEvent OnChanging = {read=FOnChanging, write=FOnChanging};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property TProgressEvent OnProgress = {read=FOnProgress, write=FOnProgress};
	__property Classes::TNotifyEvent OnWrapAnimation = {read=FOnWrapAnimation, write=FOnWrapAnimation};
		
};

class __declspec(pascalimplementation) TGIFFrame : public System::TObject
{
	typedef System::TObject inherited;
	
private:
	int Left;
	int Top;
	int Width;
	int Height;
	TGIFImage* Owner;
	int ColorDepth;
	int Delay;
	TDisposalType DisposalMethod;
	bool HasColorTable;
	bool IsInterlaced;
	bool IsTransparent;
	Byte TransparentColor;
	TRGBColor BackgroundColor;
	System::AnsiString Comment;
	TColorTable *ColorTable;
	Graphics::TBitmap* FrameImage;
	Graphics::TBitmap* FrameImageMask;
	Graphics::TBitmap* PreviousImage;
	Graphics::TBitmap* PreviousImageMask;
	
protected:
	void __fastcall DecodeImage(Classes::TStream* DataStream, Classes::TStream* PixelStream, Classes::TStream* 
		MaskStream);
	bool __fastcall ReadImage(Classes::TStream* DataStream, TRGBColor * GlobalColorTable, void *GraphicControlBlock
		);
	
public:
	__fastcall TGIFFrame(TGIFImage* aOwner);
	__fastcall virtual ~TGIFFrame(void);
};

//-- var, const, procedure ---------------------------------------------------
#define MaximumGIFFrameCount (Word)(256)
extern TGIFError LastWriteError;
extern TProgressEvent OnWriteProgress;
extern bool __fastcall SaveToFile(const System::AnsiString GIFFileName, TSaveInfo &FramesArray);
extern bool __fastcall SaveToFileSingle(const System::AnsiString GIFFileName, Graphics::TBitmap* const 
	aBitmap, const bool aInterlaced, const bool aTransparent, const Graphics::TColor aTransparentColor)
	;
extern bool __fastcall SaveToStream(Classes::TStream* Stream, TSaveInfo &FramesArray);
extern bool __fastcall SaveToStreamSingle(Classes::TStream* Stream, Graphics::TBitmap* const aBitmap
	, const bool aInterlaced, const bool aTransparent, const Graphics::TColor aTransparentColor);
extern void __fastcall Register(void);

}	/* namespace Gifimage */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Gifimage;
#endif
//-- end unit ----------------------------------------------------------------
#endif	// GIFImage
