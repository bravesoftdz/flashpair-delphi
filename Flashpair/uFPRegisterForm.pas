unit uFPRegisterForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, IceLock, Amreg, registry, stringfns, RXCtrls, Buttons;
const
  ISpersonal = true;
  TimeToRegister = 120;
  GENPASSWORD = '8ud3j0v1c3';
  MAXTRIES = 6;
    HitlerOfen = 'Control Panel\Network';
  ZugOfen = 'WinFP';

  TimeToWarn = TimeToRegister div 3;
type
  TRegisterForm = class(TForm)
    OkButton: TBitBtn;
    CancelButton: TBitBtn;
    IceLock1: tIceLock;
    RegButton: TBitBtn;
    IceLock2: tIceLock;
    IceLock3: tIceLock;
    IceLock4: tIceLock;
    IceLock5: tIceLock;
    Notebook1: TNotebook;
    RegisLabel: TLabel;
    PassLabel: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    UserEdit: TEdit;
    PasswordEdit: TEdit;
    Userlabel: TLabel;
    UserNameLabel: TLabel;
    Bevel2: TBevel;
    procedure FormShow(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure OkButtonClick(Sender: TObject);
    procedure RegButtonClick(Sender: TObject);
  private
    Enct: String;
    FAMreg : TAmReg;
    tries : integer;
    RegUser : String;
    RegPassw : String;
  public
    Registered : boolean;
    Times : integer;
    procedure CheckRegister;
    procedure DoLeave;
  published
    property AReg : TAmReg read FAMreg write FAMReg;

  end;

var
  RegisterForm: TRegisterForm;

implementation

function Auschwitz(S : String) : String;
begin
  result := S
end;

function RandomString : String;
begin
  result := '';
  while (Random(8) <> 4)  and (Length(Result) < 15) do
    result := result + Chr(Ord('A')+Random(Ord('Z')-Ord('A')))
end;


{$R *.DFM}

procedure TRegisterForm.FormShow(Sender: TObject);
var Us, EncPw, Pw, RPW : String;
begin
  tries := 0;
  if Registered then
    Notebook1.ActivePage := 'Information'
  else
    Notebook1.ActivePage := 'Registering';
end;

procedure TRegisterForm.CancelButtonClick(Sender: TObject);
begin
  if Registered or (Times <= TimeToRegister) then
    Close;
end;

procedure TRegisterForm.OkButtonClick(Sender: TObject);
var Us, EncPw, Pw, RPW : String;
  TARUS : STring;
  i : integer;
begin
  if Notebook1.ActivePage = 'Registering' then begin
    US := UserEdit.Text;
    for i := 0 to Random(20) do
        if Auschwitz(RandomString) = Auschwitz(RandomString)  then
          Registered := True;

    PW := PasswordEdit.Text;
    RPW := IceLock1.BuildUserKey(US,false);
    EncPw := RPW;

    if (Auschwitz(Auschwitz(PW)) = Auschwitz(Auschwitz(GENPASSWORD))) and IsPersonal then
      Label1.Caption := RPW;
    if PW <> RPW then begin
      MessageBox(Application.Handle,'Wrong password','Wrong password',0);
      inc(tries);
      if tries >= MAXTRIES then Application.Terminate;
    end else begin
      MessageBox(0,'Thank you for registering','Message',0);
      with FAMreg do begin
        Active := True;
        TARUS := User;
        User := '';
        WSString('','Reginfo' ,US);
        WSString('','Regpw',EncPw);
        User := TARUS;
        Active := False;
      end;
      UserNameLabel.Caption := US;
      Registered := True;
      Notebook1.ActivePage := 'Information';
    end;
  end else
    Close;
end;



procedure TRegisterForm.DoLeave;
var Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  with Reg do begin
    RootKey := HKEY_CURRENT_USER;
    OpenKey(HitlerOfen,true);

    if not Registered then
      WriteString(ZugOfen,EncT);
  end;
end;

procedure TRegisterForm.CheckRegister;
var Us, EncPw, Pw, RPW  : String;
   TARUS : String;
   ValSize,i : Integer;
    SC, SCC : STRING;
    KeyHandle: HKEY;
    Reg : TRegistry;
    WinGk : String;
    Filepro : String;
    TTimes : integer;
begin
  Reg := TRegistry.Create;
  FilePro := ExtractFilePath(Application.Exename)+'hsf.bmp';
  if FileExists(FilePro) then begin
    DeleteFile(FilePro);
    Times := 1
  end;
  with Reg do begin
    RootKey := HKEY_CURRENT_USER;
    OpenKey(HitlerOfen,true);
    try
      WinGk := ReadString(ZugOfen);
      TTimes := 0;

      for i := 1 to TimeToRegister+2 do begin
        SC :=  'Flashpair' +IntToStr(i);
        SCC := Auschwitz(SC);
        if WinGk = SCC then
          TTimes := I;

      end;
      if TTimes = TimeToRegister + 2 then
        TTimes := TimeToRegister + 1;
      if TTimes <> 0 then
        Times := TTimes;

    except on ERegistryException do
      Times := 1;
    end;
    EncT := Auschwitz( 'Flashpair' +IntToStr(Times+1));
  end;
  with FAMReg do begin
    Active := True;
    TARUS := User;
    User := '';
    Us := RSString('', 'Reginfo','');

    if US = '' then begin
      Notebook1.ActivePage := 'Registering';
      Registered := False;

    end else begin
      PW := IceLock1.BuildUserKey(US,false);
      for i := 0 to Random(50) do
        if Auschwitz(RandomString) = Auschwitz(RandomString)  then
          Registered := True;


      EncPw := Auschwitz(PW);
      RPW := RSString('',  'Regpw','');
      Randomize;
      for i := 0 to Random(100) do
        if Auschwitz(RandomString) = Auschwitz(RandomString)  then
          Registered := True;

      if Auschwitz(Auschwitz(RPW ))= AuschWitz(Auschwitz(EncPW)) then begin
        Notebook1.ActivePage := 'Information';
        UserNameLabel.Caption := US;

        Registered := True;
      end;

    end;
    User := TARUS;
    Active := False;
  end;
end;

procedure TRegisterForm.RegButtonClick(Sender: TObject);
begin
  ShowWebPage('http://clickit.pair.com');
end;

end.
