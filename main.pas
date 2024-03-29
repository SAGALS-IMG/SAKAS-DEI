unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.CheckLst, Vcl.Buttons, Vcl.ExtCtrls, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, IniFiles, Unit_PW, System.IOUtils, Math,
  System.StrUtils, System.Types, FFTUnit;

const
  OPW=1300;
  OPH=1100;

type
  TForm_Main = class(TForm)
    GroupBox3: TGroupBox;
    Panel2: TPanel;
    SB_Help: TSpeedButton;
    SB_ViewInfo: TSpeedButton;
    BB_Proc: TBitBtn;
    CB_Ext: TComboBox;
    CB_AllCK: TCheckBox;
    RB_Proc2: TRadioButton;
    Panel3: TPanel;
    CLB_File: TCheckListBox;
    SB: TStatusBar;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    SB_FN: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    SB_BKFN: TSpeedButton;
    Label19: TLabel;
    SB_BKFN2: TSpeedButton;
    Edit_FN: TEdit;
    Edit_OH: TEdit;
    Edit_OW: TEdit;
    Edit_PW: TEdit;
    Edit_PH: TEdit;
    Edit_OFFY: TEdit;
    Edit_OFFX: TEdit;
    Edit_Pro: TEdit;
    Edit_BKN: TEdit;
    Edit_BKINT: TEdit;
    Edit_SN: TEdit;
    Edit_BKFN: TEdit;
    Edit_offsetpro: TEdit;
    Edit_BKFN2: TEdit;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Memo: TRichEdit;
    GroupBox2: TGroupBox;
    BB_Proc_Calc: TBitBtn;
    CB_Swap: TCheckBox;
    CB_Bin: TCheckBox;
    BB_MakeSino: TBitBtn;
    Label17: TLabel;
    Edit_SinoST: TEdit;
    Edit_SinoEnd: TEdit;
    CB_TT: TComboBox;
    CB_CBKL: TCheckBox;
    Edit_CBK_L: TEdit;
    Edit_CBK_R: TEdit;
    Label18: TLabel;
    GroupBox4: TGroupBox;
    BB_PreView: TBitBtn;
    BB_LoadBK: TBitBtn;
    BB_Load_Pro: TBitBtn;
    BB_Calc_dP: TBitBtn;
    CB_DispType: TComboBox;
    CB_Cor_Base: TCheckBox;
    CB_Step: TCheckBox;
    Edit_R1: TEdit;
    Edit_TPro: TEdit;
    Edit_BKNo: TEdit;
    Edit_ImgNo: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    UD_R1: TUpDown;
    UD_TPro: TUpDown;
    UD_BKNo: TUpDown;
    UD_PreV: TUpDown;
    Label9: TLabel;
    Edit_BKImgNo: TEdit;
    UD_BKImgNo: TUpDown;
    UD_ProImg: TUpDown;
    Edit_ProImg: TEdit;
    Label14: TLabel;
    Label16: TLabel;
    Edit_R2: TEdit;
    UD_R2: TUpDown;
    BB_SaveImg: TBitBtn;
    RG_Dir: TRadioGroup;
    Label20: TLabel;
    Edit_lY: TEdit;
    Edit_lX: TEdit;
    Label21: TLabel;
    BB_Stop: TBitBtn;
    BB_Save_Cond: TBitBtn;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    CB_Dammy: TCheckBox;
    CB_1stBK: TCheckBox;
    CB_SAX: TCheckBox;
    Edit_CBW: TEdit;
    Label12: TLabel;
    Label22: TLabel;
    Label37: TLabel;
    Edit_Dir: TEdit;
    SB_Dir: TSpeedButton;
    SB_TagList_Reload: TSpeedButton;
    BB_STOP_Proc: TBitBtn;
    Label23: TLabel;
    Edit_ImgNum: TEdit;
    CB_CCT: TCheckBox;
    Label24: TLabel;
    Edit_Rot_angle: TEdit;
    CB_Cor_vBK: TCheckBox;
    SB_Chart_Copy: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

    procedure SB_FNClick(Sender: TObject);
    procedure SB_BKFNClick(Sender: TObject);
    procedure SB_BKFN2Click(Sender: TObject);

    procedure Init_Cond(Sender: TObject);

    procedure BB_PreViewClick(Sender: TObject);
    procedure UD_PreVClick(Sender: TObject; Button: TUDBtnType);
    procedure BB_LoadBKClick(Sender: TObject);
    procedure UD_BKNoClick(Sender: TObject; Button: TUDBtnType);
    procedure BB_Load_ProClick(Sender: TObject);
    procedure UD_TProClick(Sender: TObject; Button: TUDBtnType);
    procedure UD_ProImgClick(Sender: TObject; Button: TUDBtnType);

    procedure Calc(Sender: TObject);
    procedure Conv_Step(Sender: TObject);
    procedure BB_Calc_dPClick(Sender: TObject);
    procedure CB_DispTypeChange(Sender: TObject);
    procedure BB_SaveImgClick(Sender: TObject);
    procedure BB_Proc_CalcClick(Sender: TObject);
    procedure BB_MakeSinoClick(Sender: TObject);
    procedure BB_StopClick(Sender: TObject);

    procedure BB_Get_ListClick(Sender: TObject);
    procedure CLB_FileClick(Sender: TObject);
    procedure CB_AllCKClick(Sender: TObject);
    procedure SB_ViewInfoClick(Sender: TObject);
    procedure BB_ProcClick(Sender: TObject);
    procedure OpenTag(Sender: TObject);
    procedure WriteProc2(Sender: TObject);
    procedure BB_Save_CondClick(Sender: TObject);
    procedure SB_HelpClick(Sender: TObject);
    procedure SB_DirClick(Sender: TObject);
    procedure SB_TagList_ReloadClick(Sender: TObject);
    procedure BB_STOP_ProcClick(Sender: TObject);
    procedure SB_Chart_CopyClick(Sender: TObject);
var
  private
    { Private 宣言 }
  public
    { Public 宣言 }
  end;

var
  Form_Main: TForm_Main;

  BKIData : array[0..2,0..21,0..OPH,0..OPW] of LongWORD;
  ProIData, TmpIData : array[0..21,0..OPH,0..OPW] of WORD;
  Data, TmpData : array[0..2,0..OPH,0..OPW] of single;
  BKData : array[0..2,0..2,0..OPH,0..OPW] of single;
  SData : array[0..OPH,0..OPW] of single;

  Pro, BKInt, BKNum, SN, OffsetPro : longint;

  Go : boolean;
  X1i, X1r : DataType ;
  X2i, X2r : DataType2 ;
  TagFN : string;

implementation

{$R *.dfm}

uses Unit_SAKAS, Unit_ABOUT;

procedure TForm_Main.FormCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Top     := Ini.ReadInteger( 'Form_Main', 'Top', 100 );
    Left    := Ini.ReadInteger( 'Form_Main', 'Left', 100 );
    Width   := Ini.ReadInteger( 'Form_Main', 'Width', 750 );
    Height  := Ini.ReadInteger( 'Form_Main', 'Height', 500 );
    if Ini.ReadBool( 'Form_Main', 'InitMax', false ) then
      WindowState := wsMaximized
    else
      WindowState := wsNormal;

    Edit_Dir.Text := Ini.ReadString( 'Param', 'Tag_Dir', '' );

    Edit_OW.Text  := Ini.ReadString( 'Param', 'OW', '1000' );
    Edit_OH.Text  := Ini.ReadString( 'Param', 'OH', '500' );
    Edit_PW.Text  := Ini.ReadString( 'Param', 'PW', '1000' );
    Edit_PH.Text  := Ini.ReadString( 'Param', 'PH', '500' );
    Edit_OFFX.Text  := Ini.ReadString( 'Param', 'OFFX', '0' );
    Edit_OFFY.Text  := Ini.ReadString( 'Param', 'OFFY', '0' );

    Edit_SN.Text  := Ini.ReadString( 'Param', 'ScanNum', '17' );
    Edit_Pro.Text  := Ini.ReadString( 'Param', 'Pro', '505' );
    Edit_BKN.Text  := Ini.ReadString( 'Param', 'BKN', '1' );
    Edit_BKINT.Text  := Ini.ReadString( 'Param', 'BKINT', '505' );
    Edit_ImgNum.Text  := Ini.ReadString( 'Proc_1', 'Image_Num', '505' );

    Edit_FN.Text  := Ini.ReadString( 'Param', 'FN', '' );
    Edit_BKFN.Text  := Ini.ReadString( 'Param', 'BKFN', '' );
    Edit_BKFN2.Text  := Ini.ReadString( 'Param', 'BKFN2', '' );

    UD_R1.Position := Ini.ReadInteger( 'Param', 'dP1', 0 );
    UD_R2.Position := Ini.ReadInteger( 'Param', 'dP2', 10 );

    Edit_SinoST.Text := Ini.ReadString( 'Param', 'Start_No', '' );
    Edit_SinoEnd.Text := Ini.ReadString( 'Param', 'End_No', '' );

    Edit_CBK_L.Text := Ini.ReadString( 'Param', 'BBK1', '80' );
    Edit_CBK_R.Text := Ini.ReadString( 'Param', 'BBK2', '800' );
    Edit_CBW.Text :=  Ini.ReadString( 'Param', 'BBK_W', '5' );

    CB_Swap.Checked := Ini.ReadBool('Param','Swap',false);
    CB_BIN.Checked := Ini.ReadBool('Param','BIN',true);
    CB_CBKL.Checked := Ini.ReadBool('Param','CBKLBIN',false);

    Edit_lX.Text := Ini.ReadString('Param','MonX','750');
    Edit_lY.Text := Ini.ReadString('Param','MonY','350');
  finally
    Ini.Free;
  end;

end;

procedure TForm_Main.FormDestroy(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Ini.WriteInteger( 'Form_Main', 'Top', Top);
    Ini.WriteInteger( 'Form_Main', 'Left', Left);
    Ini.WriteInteger( 'Form_Main', 'Width', Width );
    Ini.WriteInteger( 'Form_Main', 'Height', Height );

    Ini.WriteBool( 'Form_Main', 'InitMax', WindowState = wsMaximized );

    Ini.WriteString( 'Param', 'Tag_Dir', Edit_Dir.Text );

    Ini.WriteString( 'Param', 'OW', Edit_OW.Text );
    Ini.WriteString( 'Param', 'OH', Edit_OH.Text );
    Ini.WriteString( 'Param', 'PW', Edit_PW.Text );
    Ini.WriteString( 'Param', 'PH', Edit_PH.Text );
    Ini.WriteString( 'Param', 'OFFX', Edit_OFFX.Text );
    Ini.WriteString( 'Param', 'OFFY', Edit_OFFY.Text );

    Ini.WriteString( 'Param', 'FN', Edit_FN.Text );
    Ini.WriteString( 'Param', 'BKFN', Edit_BKFN.Text );
    Ini.WriteString( 'Param', 'BKFN2', Edit_BKFN2.Text );

    Ini.WriteString( 'Param', 'ScanNum', Edit_SN.Text );
    Ini.WriteString( 'Param', 'Pro', Edit_Pro.Text );
    Ini.WriteString( 'Param', 'BKN', Edit_BKN.Text );
    Ini.WriteString( 'Param', 'BKINT', Edit_BKINT.Text );

    Ini.WriteInteger( 'Param', 'dP1', UD_R1.Position );
    Ini.WriteInteger( 'Param', 'dP2', UD_R2.Position );

    Ini.WriteString( 'Param', 'Start_No', Edit_SinoST.Text );
    Ini.WriteString( 'Param', 'End_No', Edit_SinoEnd.Text );

    Ini.WriteString( 'Param', 'BBK1', Edit_CBK_L.Text );
    Ini.WriteString( 'Param', 'BBK2', Edit_CBK_R.Text );
    Ini.WriteString( 'Param', 'BBK_W', Edit_CBW.Text );

    Ini.WriteBool('Param','Swap',CB_Swap.Checked);
    Ini.WriteBool('Param','BIN',CB_BIN.Checked);
    Ini.WriteBool('Param','CBKLBIN',CB_CBKL.Checked);

    Ini.WriteString('Param','MonX',Edit_lX.Text);
    Ini.WriteString('Param','MonY',Edit_lY.Text);
  finally
    Ini.Free;
  end;
end;

procedure TForm_Main.SB_BKFN2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    EDit_BKFN2.Text := OpenDialog1.FileName;
end;

procedure TForm_Main.SB_BKFNClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    EDit_BKFN.Text := OpenDialog1.FileName;
end;

procedure TForm_Main.SB_Chart_CopyClick(Sender: TObject);
begin
  Chart1.CopyToClipboardBitmap;
end;

procedure TForm_Main.SB_DirClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Edit_Dir.Text := ExtractFilePath(OpenDialog1.FileName);
    SB_TagList_ReloadClick(Sender);
  end;
end;

procedure TForm_Main.SB_FNClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    EDit_FN.Text := OpenDialog1.FileName;
end;








procedure TForm_Main.SB_HelpClick(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TForm_Main.SB_TagList_ReloadClick(Sender: TObject);
var
  Path: String;
  FileList: TStringDynArray;
  FileName: String;
begin
  if Edit_Dir.Text<>'' then
  begin
    CLB_File.Items.Clear;
    Path := ExtractFilePath(Edit_Dir.Text);

    FileList := TDirectory.GetFiles(Path, CB_Ext.Items[CB_Ext.ItemIndex] , TSearchOption.soTopDirectoryOnly);
    for FileName in FileList do
    begin
      CLB_File.Items.Add(FileName);
    end;
  end;
end;

procedure TForm_Main.Init_Cond(Sender: TObject);
begin
  Form_PW.OW := StrToInt(Edit_OW.Text);
  Form_PW.OH := StrToInt(Edit_OH.Text);
  Form_PW.PW := StrToInt(Edit_PW.Text);
  Form_PW.PH := StrToInt(Edit_PH.Text);
  Form_PW.OFFX := StrToInt(Edit_OffX.Text);
  Form_PW.OFFY := StrToInt(Edit_OffY.Text);

  BKInt := StrToInt(Edit_BKInt.Text);
  BKNum := StrToInt(Edit_BKN.Text);
  SN := StrToInt(Edit_SN.Text);
  OffsetPro := StrToInt(Edit_Offsetpro.Text);

  //  Pro := StrToInt(Edit_Pro.Text);

  Pro := StrToInt(Edit_ImgNum.Text) div SN-BKNum*2+1;

  UD_PreV.Max := (Pro+(Pro div BKInt+1)*BKNum)*SN-1;
  UD_TPro.Max := Pro-1;
  UD_BKNo.Max := Pro div BKInt+1;

  UD_BKImgNo.Max := SN-1;
  UD_ProImg.Max := SN-1;
  UD_R2.Max := SN-1;
  UD_R1.Max := SN-1;
end;

procedure TForm_Main.BB_PreViewClick(Sender: TObject);
begin
  Init_Cond(Sender);

  Form_PW.UD_TPro.Position := UD_PreV.Position;
  Form_PW.Load_WORDData(Edit_FN.Text,Sender);

  Form_PW.Show;
  Form_PW.Draw_Data(Sender);
end;

procedure TForm_Main.UD_PreVClick(Sender: TObject; Button: TUDBtnType);
begin
  BB_PreViewClick(Sender);
end;

procedure TForm_Main.BB_LoadBKClick(Sender: TObject);
var
  i,j,k,kk,m, lX, lY:longint;
  TmpStr : string;
begin
  Init_Cond(Sender);
  Form_PW.Show;

  if CB_Dammy.Checked then
  begin
    for k:=0 to SN-1 do
    begin
      for j:=0 to Form_PW.PH-1 do
        for i:=0 to Form_PW.PW-1 do
        begin
          BKIData[0,k,j,i] := 1;
          BKIData[1,k,j,i] := 1;
        end;
    end;
    exit;
  end
  else
  begin
    for k:=0 to SN-1 do
    begin
      for j:=0 to Form_PW.PH-1 do
        for i:=0 to Form_PW.PW-1 do
        begin
          BKIData[0,k,j,i] := 0;
          BKIData[1,k,j,i] := 0;
          BKIData[2,k,j,i] := 0;
        end;
    end;
  end;


  if Edit_BKFN.Text<>'' then
  begin
    for k:=0 to SN-1 do
    begin
      Form_PW.UD_TPro.Position :=k;
      Form_PW.Load_WORDData(Edit_BKFN.Text, Sender);
      for j:=0 to Form_PW.PH-1 do
        for i:=0 to Form_PW.PW-1 do
        begin
          BKIData[0,k,j,i] := Form_PW.IData[j,i];
          BKIData[1,k,j,i] := Form_PW.IData[j,i];
        end;
    end;
    if Edit_BKFN2.Text<>'' then
    for k:=0 to SN-1 do
    begin
      Form_PW.UD_TPro.Position :=k;
      Form_PW.Load_WORDData(Edit_BKFN2.Text, Sender);
      for j:=0 to Form_PW.PH-1 do
        for i:=0 to Form_PW.PW-1 do
          BKIData[1,k,j,i] := Form_PW.IData[j,i];
    end;
    for k:=0 to SN-1 do
      for j:=0 to Form_PW.PH-1 do
        for i:=0 to Form_PW.PW-1 do
          BKIData[2,k,j,i] := BKIData[1,k,j,i];
  end
  else
  begin
    TmpStr := 'BK load @';
    for kk:=0 to (Pro div BKInt) do
    begin
      for m:=0 to StrToInt(Edit_BKN.Text)-1 do
      begin
        for k:=0 to SN-1 do
        begin
          UD_PreV.Position :=kk*(BKInt+1+BKNum)*SN+k+OffsetPro+m*SN ;//*SN;{+37*kk}//sCMOS利用時
          Form_PW.UD_TPro.Position := UD_PreV.Position;
          TmpStr := TmpStr+' '+Form_PW.UD_TPro.Position.ToString;
          Memo.Lines.Text := TmpStr;

          Form_PW.Load_WORDData(Edit_FN.Text, Sender);
//          PW.Gauss_Smooth_Img(PW.PData);
          for j:=0 to Form_PW.PH-1 do
            for i:=0 to Form_PW.PW-1 do
              BKIData[kk,k,j,i] := BKIData[kk,k,j,i]+Form_PW.IData[j,i];
        end;
      end;
      m:=StrToInt(Edit_BKN.Text);
      for k:=0 to SN-1 do
        for j:=0 to Form_PW.PH-1 do
          for i:=0 to Form_PW.PW-1 do
            BKIData[kk,k,j,i] := BKIData[kk,k,j,i] div m;
    end;

    for k:=0 to SN-1 do
      for j:=0 to Form_PW.PH-1 do
        for i:=0 to Form_PW.PW-1 do
        begin
          BKIData[(Pro div BKInt)+1,k,j,i] := BKIData[(Pro div BKInt),k,j,i];
          BKIData[(Pro div BKInt)+2,k,j,i] := BKIData[(Pro div BKInt),k,j,i];
        end;

    if CB_1stBK.Checked then
    begin
      for k:=0 to SN-1 do
        for j:=0 to Form_PW.PH-1 do
          for i:=0 to Form_PW.PW-1 do
          begin
            BKIData[1,k,j,i] := BKIData[0,k,j,i];
            BKIData[2,k,j,i] := BKIData[0,k,j,i];
          end;
    end;

  end;

  UD_PreV.Position := 0;
  Form_PW.UD_TPro.Position := UD_PreV.Position;
  Form_PW.Draw_Data(Sender);

  lX := STrToInt(Edit_lX.Text);
  lY := STrToInt(Edit_lY.Text);
  i := UD_BKNo.Position;
  Series1.Clear;
  for k:=0 to SN-1 do
  begin
    Series1.AddXY(k,BKIData[i,k,lY,lX]);
  end;
end;

procedure TForm_Main.UD_BKNoClick(Sender: TObject; Button: TUDBtnType);
var
  li,lj,lk,kk:longint;
begin
  kk := UD_BKNo.Position;
  lk  := UD_BKImgNo.Position;
  for lj:=0 to Form_PW.PH-1 do
    for li:=0 to Form_PW.PW-1 do
      Form_PW.PData[lj,li] := BKIData[kk,lk,lj,li];
  Form_PW.Show;
  Form_PW.Draw_Data(Sender);
end;

procedure TForm_Main.BB_Load_ProClick(Sender: TObject);
var
  i,j,k,kk,kkk:longint;
  TmpStr : string;
begin
  Init_Cond(Sender);
  Form_PW.Show;

  kk := UD_TPro.Position;
  if not(CB_CCT.Checked) then
  begin
    kkk :=(kk div BKInt+1)*BKNum;
    kk := kk+kkk;
  end;
  Memo.Lines.Add('Orig pro data loaded @'+UD_TPro.Position.ToString);
  TmpStr :='';

  for k:=0 to SN-1 do
  begin
    if CB_CCT.Checked then
      UD_PreV.Position :=BKNum*SN+kk+k*Pro+OffsetPro
    else
      UD_PreV.Position :=kk*SN+k+OffsetPro;//*SN

    Form_PW.UD_TPro.Position := UD_PreV.Position;

    Init_Cond(Sender);

    Form_PW.Load_WORDData(Edit_FN.Text, Sender);

    TmpStr := TmpStr+' '+Form_PW.UD_TPro.Position.ToString;
    Memo.Lines.Text := TmpStr;

    for j:=0 to Form_PW.PH-1 do
      for i:=0 to Form_PW.PW-1 do
        ProIData[k,j,i] := Form_PW.IData[j,i];
  end;
end;

procedure TForm_Main.UD_TProClick(Sender: TObject; Button: TUDBtnType);
var
  i,j,k:longint;
begin
  BB_Load_ProClick(Sender);
  k  := UD_ProImg.Position;
  for j:=0 to Form_PW.PH-1 do
    for i:=0 to Form_PW.PW-1 do
      Form_PW.PData[j,i] := ProIData[k,j,i];
  Form_PW.Show;
  Form_PW.Draw_Data(Sender);
end;

procedure TForm_Main.UD_ProImgClick(Sender: TObject; Button: TUDBtnType);
var
  i,j,k:longint;
begin
  k  := UD_ProImg.Position;
  for j:=0 to Form_PW.PH-1 do
    for i:=0 to Form_PW.PW-1 do
      Form_PW.PData[j,i] := ProIData[k,j,i];
  Form_PW.Show;
  Form_PW.Draw_Data(Sender);
end;



procedure TForm_Main.Calc(Sender: TObject);
var
  i,j,k,R1,R2,LA,HA,Cen:longint;
  TmpDbl, TmpDbl2, RC,lMax,lMin,lHMinMax, LAP, HAP, W, l : double;

  lData : array[1..2,0..50] of double;
  A : array[0..10+1,0..10+2] of double;
  S : array[0..10*2+1] of double;
  T : array[0..10+1] of double;
  a0, a1, a2:double;

procedure Fitting(SNum: Integer);
var
  i,j,k,M:longint;
  p,d,px:double;
begin
  M := 2; //次数

  for i:=0 to 2*M do
    S[i] := 0;
  for i:=0 to M do
    T[i] := 0;
  for i:=0 to SNum-1 do
  begin
    //LnをとることによりGauss関数へのフィッティングになる。
    for j:=0 to 2*M do
      S[j] := S[j]+Power(lData[1,i],j);
    for j:=0 to M do
      T[j] := T[j]+Power(lData[1,i],j)*Ln(lData[2,i]);
      //T[j] := T[j]+Power(lData[1,i],j)*(lData[2,i]);
  end;

  for i:=0 to M do
  begin
    for j:=0 to M do
      A[i,j] := S[i+j];
    A[i,M+1] := T[i];
  end;

  for k:=0 to M do
  begin
    p := A[k,k];
    for j:=k to M+1 do
      A[k,j] := A[k,j]/p;
    for i:=0 to M do
      if i<>k then
      begin
        d := A[i,k];
        for j:=k to M+1 do
          A[i,j] := A[i,j]-d*A[k,j];
      end;
  end;

  if A[2,M+1]<>0 then
  begin
    {a1 := -A[1,M+1]/(2*A[2,M+1]+1e-5);
    a2 := A[2,M+1];
    a3 := A[0,M+1]-0.25*Sqr(A[1,M+1])/A[2,M+1];}
    a2 := A[2,M+1];
    a1 := A[1,M+1];
    a0 := A[0,M+1];
  end
  else
  begin
    a0 := 1e-5;
    a1 := 1e-5;
    a2 := 1e-5;
  end;
end;

begin
  R1 := UD_R1.Position;
  R2 := UD_R2.Position;
  RC := (R2-R1)/2;
  //Abs
  for j:=0 to Form_PW.PH-1 do
    for i:=0 to Form_PW.PW-1 do
    begin
      TmpDbl := 0;
      for k:=R1 to R2 do
        TmpDbl := TmpDbl + TmpIData[k,j,i];
      TmpData[0,j,i] := TmpDbl;
    end;

  //Phase
  for j:=0 to Form_PW.PH-1 do
    for i:=0 to Form_PW.PW-1 do
    begin
      TmpDbl := 0;
      TmpDbl2 := 0;
      for k:=R1 to R2 do
      begin
        TmpDbl := TmpDbl + TmpIData[k,j,i];
        TmpDbl2 := TmpDbl2 + (k-RC)*TmpIData[k,j,i];
      end;
      if TmpDbl<>0 then
        TmpData[1,j,i] := -TmpDbl2/TmpDbl;
    end;

  //SAX

//分散、尖度
//  for j:=0 to Form_PW.PH-1 do
//    for i:=0 to Form_PW.PW-1 do
//    begin
//      TmpDbl := 0;
//      for k:=R1 to R2 do
//        TmpDbl := TmpDbl + TmpIData[k,j,i];
//      TmpDbl := TmpDbl/(R2-R1+1);
//
//      TmpDbl2 := 0;
//      for k:=R1 to R2 do
//        TmpDbl2 := TmpDbl2 + (TmpIData[k,j,i]-TmpDbl)*(TmpIData[k,j,i]-TmpDbl);
//
//      TmpData[2,j,i] := Sqrt(TmpDbl2)/TmpDbl;
//    end;

  for j:=0 to Form_PW.PH-1 do
    for i:=0 to Form_PW.PW-1 do
    begin
//      Cen := Round(TmpData[1,j,i]+RC);
      TmpDbl := 0;
      for k:=0 to SN-1 do
        TmpDbl := TmpDbl + Abs(BKIData[0,k,j,i]-TmpIData[k,j,i]);
//      for k:=0{R1} to Cen-3 do
//        TmpDbl := TmpDbl + TmpIData[k,j,i];
//      for k:=Cen+3 to SN-1{R2} do
//        TmpDbl := TmpDbl + TmpIData[k,j,i];
//      TmpDbl := TmpDbl/(TmpData[0,j,i]+1);

      TmpData[2,j,i] := TmpDbl/SN;
    end;
end;

procedure TForm_Main.Conv_Step(Sender: TObject);
var
  i,j,k,lPW,lPH:longint;
  TmpDbl : double;
  BASE2, OFFW, Error: longint;
  BPFST, BPFEnd : array[1..3] of longint;
  C : array[1..3] of double;
begin
  lPW := Form_PW.PW;
  lPH := Form_PW.PH;

  for j:=0 to Form_PW.PH-1 do
    for i:=0 to Form_PW.PW-1 do
      Form_PW.PData[j,i] := Data[1,j,i];
  Form_PW.Gauss_Smooth_Img(Form_PW.PData);
  for j:=0 to Form_PW.PH-1 do
    for i:=0 to Form_PW.PW-1 do
      Data[1,j,i] := Form_PW.PData[j,i];

  for j:=0 to lPH-1 do
  begin
    TmpDbl := 0;
    for i:=0 to lPW-1 do
      TmpDbl := TmpDbl + Data[1,j,i];
    TmpDbl := TmpDbl/lPW;
    for i:=0 to lPW-1 do
      Data[1,j,i] := Data[1,j,i] - TmpDbl;
  end;

  for j:=0 to lPH-1 do
  begin
    TmpDbl := 0;
    for i:=10 to lPW-1 do
    begin
      TmpDbl := TmpDbl +Data[1,j,i];
      SData[j,i] := TmpDbl;
    end;
    TmpDbl := 0;
    for i:=lPW-10 downto 0 do
    begin
      TmpDbl := TmpDbl +Data[1,j,i];
      Data[1,j,i] := TmpDbl;
    end;

    for i:=0 to lPW-1 do
      Data[1,j,i] := (SData[j,i]-Data[1,j,i])/2;
  end;

  for j:=0 to lPH-1 do
  begin
    TmpDbl := 0;
    for i:=lPW div 2 -lPW div 5 to lPW div 2 +lPW div 5 do
      TmpDbl := TmpDbl +Data[1,j,i];
    TmpDbl := TmpDbl/(2*lPW div 5);
    for i:=0 to lPW-1 do
      Data[1,j,i] := Data[1,j,i]-TmpDbl;
  end;

  for j:=1 to lPH-2 do
  begin
    for i:=0 to lPW-1 do
    begin
      TmpDbl := 0;
      for k:=-1 to 1 do
        TmpDbl := (2-Abs(k))*Data[1,j,i];
      Data[2,j,i] := TmpDbl/4;
    end;
  end;
  Data[1] := Data[2];
end;


procedure TForm_Main.BB_Calc_dPClick(Sender: TObject);
var
  i,j,k,kk,ri,lX,lY : longint;
  rf, TMpDbl :double;
  a,b:double;
begin
//  Init_Cond(Sender);

  for kk:=0 to (Pro div BKInt)+1 do
  begin
    for k:=0 to SN-1 do
      for j:=0 to Form_PW.PH-1 do
        for i:=0 to Form_PW.PW-1 do
          TmpIData[k,j,i] := BKIData[kk,k,j,i];
    Calc(Sender);

    for k:=0 to 2 do
      for j:=0 to Form_PW.PH-1 do
        for i:=0 to Form_PW.PW-1 do
          BKData[kk,k,j,i] := TmpData[k,j,i];
  end;

  for k:=0 to SN-1 do
    for j:=0 to Form_PW.PH-1 do
      for i:=0 to Form_PW.PW-1 do
        TmpIData[k,j,i] := ProIData[k,j,i];
  Calc(Sender);

  for k:=0 to 2 do
    for j:=0 to Form_PW.PH-1 do
      for i:=0 to Form_PW.PW-1 do
        Data[k,j,i] := TmpData[k,j,i];

  lX := STrToInt(Edit_lX.Text);
  lY := STrToInt(Edit_lY.Text);
  Series1.Clear;
  for k:=0 to SN-1 do
  begin
//    Series1.AddXY(k,TmpIData[k,PW.PH div 2,PW.PW div 2]);
//    Memo.Lines.Add(k.ToString+' , '+TmpIData[k,PW.PH div 2,PW.PW div 2].ToString);
    Series1.AddXY(k,TmpIData[k,lY,lX]);
//    Memo.Lines.Add(k.ToString+' , '+TmpIData[k,lY,lX].ToString);
  end;

  ri := UD_TPro.Position div (BKInt+BKNum);
  rf := (UD_TPro.Position-ri*(BKInt+BKNum))/(BKInt+BKNum);

  //ABS -ln
  for j:=0 to Form_PW.PH-1 do
    for i:=0 to Form_PW.PW-1 do
    begin
      TmpDbl := (1-rf)*Data[0,j,i]/BKData[ri,0,j,i]+rf*Data[0,j,i]/BKData[ri+1,0,j,i];
      if (TmpDbl>0) {and (TmpDbl<5)} then
        Data[0,j,i] := -ln(TmpDbl)
      else
        Data[0,j,i] := 0;
    end;

  //Phase subtraction
  for j:=0 to Form_PW.PH-1 do
    for i:=0 to Form_PW.PW-1 do
      Data[1,j,i] := ((1-rf)*(Data[1,j,i]-BKData[ri,1,j,i])+rf*(Data[1,j,i]-BKData[ri+1,1,j,i]));

  //SAX subtraction
//  for j:=0 to Form_PW.PH-1 do
//    for i:=0 to Form_PW.PW-1 do
//      Data[2,j,i] := ((1-rf)*(Data[2,j,i]/BKData[ri,2,j,i])+rf*(Data[2,j,i]/BKData[ri+1,2,j,i]));

  if CB_Cor_Base.Checked then
  begin
    if RG_Dir.ItemIndex=0 then
    begin
      a:=0;
      b:=0;
      for j:=0 to Form_PW.PH-1 do
      begin
        for i:=10 to 50 do
          a:=a+Data[1,j,i];
        for i:=Form_PW.PW-10 downto Form_PW.PW-50 do
          b:=b+Data[1,j,i];
      end;
      a:=a/40;
      b:=b/40;
      for j:=0 to Form_PW.PH-1 do
        for i:=0 to Form_PW.PW-3 do
          Data[1,j,i] := Data[1,j,i] +(b-a)*(Form_PW.PW/2-i)/Form_PW.PW/Form_PW.PH-(b+a)/80/Form_PW.PH;
    end
    else
    begin
      a:=0;
      b:=0;
      for j:=0 to Form_PW.PW-1 do
      begin
        for i:=10 to 50 do
          a:=a+Data[1,i,j];
        for i:=Form_PW.PH-10 downto Form_PW.PH-50 do
          b:=b+Data[1,i,j];
      end;
      a:=a/40;
      b:=b/40;
     for j:=0 to Form_PW.PW-1 do
        for i:=0 to Form_PW.PH-3 do
          Data[1,j,i] := Data[1,i,j] +(b-a)*(Form_PW.PH/2-i)/Form_PW.PH/Form_PW.PW-(b+a)/80/Form_PW.PW;
    end;
  end;

  if CB_step.Checked then
  begin
    //IF1.Gauss_Smooth_Img(Data[1]);
    Conv_Step(Sender);
  end;

  kk := CB_DispType.ItemIndex;
  for j:=0 to Form_PW.PH-1 do
    for i:=0 to Form_PW.PW-1 do
      Form_PW.PData[j,i] := Data[kk,j,i];

  Form_PW.Draw_Data(Sender);
end;

procedure TForm_Main.CB_DispTypeChange(Sender: TObject);
var
  i,j,k : longint;
begin
  k := CB_DispType.ItemIndex;
  for j:=0 to Form_PW.PH-1 do
    for i:=0 to Form_PW.PW-1 do
      Form_PW.PData[j,i] := Data[k,j,i];
  Form_PW.Draw_Data(Sender);
end;

procedure TForm_Main.BB_SaveImgClick(Sender: TObject);
var
  i,j:longint;
begin
  if SaveDialog1.Execute then
  begin
    for j:=0 to Form_PW.PH-1 do
      for i:=0 to Form_PW.PW-1 do
        Form_PW.PData[j,i] := ProIData[8,j,i];
    Form_PW.Save_Data(SaveDialog1.FileName+'.abs',Sender);

    for j:=0 to Form_PW.PH-1 do
      for i:=0 to Form_PW.PW-1 do
        Form_PW.PData[j,i] := Data[1,j,i];
    Form_PW.Save_Data(SaveDialog1.FileName+'.ph',Sender);

    for j:=0 to Form_PW.PH-1 do
      for i:=0 to Form_PW.PW-1 do
        Form_PW.PData[j,i] := Data[2,j,i];
    Form_PW.Save_Data(SaveDialog1.FileName+'.sax',Sender);
  end;
end;




procedure TForm_Main.BB_Proc_CalcClick(Sender: TObject);
var
  k, kk, kkk,j,i,ii,jj,lPW,lPH : longint;
  BFN, BDir, lFN : string;
  FS : TFileStream;
  lData : array[0..3000] of double;
  SFN : array[0..2] of string;
  TmpDbl : double;
begin
  Go := true;
  Init_Cond(Sender);
  BFN := ChangeFileExt(Edit_FN.Text,'');

  if not(TDirectory.Exists(ExtractFilePath( BFN)+ExtractFileName(BFN)+'_cal')) then
    MkDir(ExtractFilePath(BFN)+ExtractFileName(BFN)+'_cal');
  if not(TDirectory.Exists(ExtractFilePath(BFN)+ExtractFileName(BFN)+'_cal\pro')) then
    MkDir(ExtractFilePath(BFN)+ExtractFileName(BFN)+'_cal\pro');
  BDir := ExtractFilePath(BFN)+ExtractFileName(BFN)+'_cal\pro\';
  lFN :=ExtractFileName(BFN);

  SFN[0] := '_ABS_';
  SFN[1] := '_PH_';
  SFN[2] := '_SAX_';

  if CB_SAX.Checked then
    kk:=2
  else
    kk:=1;

  BB_LoadBKClick(Sender);

  for k:=0 to pro-1 do
  begin
    UD_TPro.Position :=k;

    begin
      BB_Load_ProClick(Sender);
      BB_Calc_dPClick(Sender);

      Application.ProcessMessages;
      SB.SimpleText := k.ToString;

      if CB_Bin.Checked then
      begin
        lPW := Form_PW.PW div 2;
        lPH := Form_PW.PH div 2;
        for kkk:=0 to kk do
        begin
          for j:=0 to lPH-1 do
            for i:=0 to lPW-1 do
            begin
              TmpDbl :=0;
              for jj:=0 to 1 do
                for ii:=0 to 1 do
                  TmpDbl := TmpDbl+Data[kkk,j*2+jj,i*2+ii];
              TmpData[kkk,j,i] := TmpDbl/4;
            end;
          Data[kkk] := TmpData[kkk];
        end;
      end
      else
      begin
        lPW := Form_PW.PW;
        lPH := Form_PW.PH;
      end;

      if CB_Swap.Checked then
      begin
        for jj:=0 to kk do
        begin
          FS := TFileStream.Create(BDir+lFN+SFN[jj]+IntToStr(k),fmCreate);
          for j:=0 to lPW-1 do
          begin
            for i:=0 to lPH-1 do
              lData[i] := Data[jj,i,j];
            FS.WriteBuffer(lData,lPH*8);
          end;
          FS.Free;
        end;
      end
      else
      begin
        for jj:=0 to kk do
        begin
          FS := TFileStream.Create(BDir+lFN+SFN[jj]+IntToStr(k),fmCreate);
          for j:=0 to lPH-1 do
          begin
            for i:=0 to lPW-1 do
              lData[i] := Data[jj,j,i];
            FS.WriteBuffer(lData,lPW*8);
          end;
          FS.Free;
        end;
      end;

      if not(Go) then
        exit;
    end;
  end;
end;

procedure TForm_Main.BB_MakeSinoClick(Sender: TObject);
var
  i,j,k, TT, lPW, CBK_L, CBK_R, CBK_W:longint;
  TmpDbl1,TmpDbl2, lTmp1, lTmp2:double;
  FS : TFileStream;
  lData : array[0..3000] of double;
  FN, BFN, BDir1, BDir2, lFN : string;
  SFN : array[0..2] of string;
begin
  Init_Cond(Sender);
  Go :=true;

  Form_PW.Show;
  if CB_Swap.Checked then
    lPW := Form_PW.OH
  else
    lPW := Form_PW.OW;
  if CB_Bin.Checked then
  begin
    lPW := lPW div 2;
  end;

  SFN[0] := '_ABS_';
  SFN[1] := '_PH_';
  SFN[2] := '_SAX_';

  BFN := ChangeFileExt(Edit_FN.Text,'');
  if not(TDirectory.Exists(ExtractFilePath(BFN)+ExtractFileName(BFN)+'_cal\sino')) then
    MkDir(ExtractFilePath(BFN)+ExtractFileName(BFN)+'_cal\sino');
  BDir1 := ExtractFilePath(BFN)+ExtractFileName(BFN)+'_cal\pro\';
  BDir2 := ExtractFilePath(BFN)+ExtractFileName(BFN)+'_cal\sino\';
  lFN :=ExtractFileName(BFN);

  CBK_L := StrToInt(Edit_CBK_L.Text);
  CBK_R := StrToInt(Edit_CBK_R.Text);
  CBK_W := StrToInt(Edit_CBW.Text);

  TT := CB_TT.ItemIndex;
  WriteProc2(Sender);

  for k:= StrToInt(Edit_SinoST.Text) to StrToInt(Edit_SinoEnd.Text) do
  begin
    for j:=0 to Pro-1 do
    begin
      FN := BDir1+lFN+SFN[TT]+IntToStr(j);
      FS := TFileStream.Create(BDir1+lFN+SFN[TT]+IntToStr(j),fmOpenRead);

      FS.Position := k*lPW*8;
      FS.ReadBuffer(lData,lPW*8);
      for i:=0 to lPW-1 do
        SData[j,i] := lData[i];
      FS.Free;
    end;

    if CB_CBKL.Checked then
    begin
      TmpDbl1 := 0;
      TmpDbl2 := 0;

      for j:=0 to Pro-1 do
      begin
        for i:=CBK_L-CBK_W to CBK_L+CBK_W do
          TmpDbl1 := TmpDbl1 + SData[j,i];
        for i:=CBK_R-CBK_W to CBK_R+CBK_W do
          TmpDbl2 := TmpDbl2 + SData[j,i];
      end;

      for j:=0 to Pro-1 do
      begin
        lTmp1 := 0;
        lTmp2 := 0;
        for i:=CBK_L-CBK_W to CBK_L+CBK_W do
          lTmp1 := lTmp1 + SData[j,i];
        for i:=CBK_R-CBK_W to CBK_R+CBK_W do
          lTmp2 := lTmp2 + SData[j,i];

        lTmp1 := lTmp1/(2*CBK_W+1);
        lTmp2 := lTmp2/(2*CBK_W+1);

        for i:=0 to lPW-1 do
          //SData[j,i] := SData[j,i] - (lTmp1+lTmp2){/(TmpDbl1+TmpDbl2)*Pro}/(2*CBK_W)/2;
          SData[j,i] := SData[j,i] + (lTmp1-lTmp2)*i/lPW{-(lTmp1+lTmp2)/2};
      end;
    end;

    if CB_Cor_vBK.Checked then
    begin
      TmpDbl1 := 0;
      TmpDbl2 := 0;

      for j:=0 to 4 do
        for i:=0  to lPW-1 do
          TmpDbl1 := TmpDbl1 + SData[j,i];
      for j:=pro-5 to pro-1 do
        for i:=0  to lPW-1 do
          TmpDbl2 := TmpDbl2 + SData[j,i];

      for j:=0 to Pro-1 do
      begin
        for i:=0 to lPW-1 do
          SData[j,i] := SData[j,i] + (TmpDbl1-TmpDbl2)*j/pro/5/lPW;
      end;
    end;


    for j:= 0 to Pro-1 do
      for i:=0 to lPW-1 do
        Form_PW.PData[j,i] := SData[j,i];
    Form_PW.PH := pro;
    Form_PW.PW := lPW;
    Form_PW.Draw_Data(Sender);
    SB.SimpleText := 'Slice : '+IntToStr(k);
    Application.ProcessMessages;

    FS := TFileStream.Create(BDir2+lFN+SFN[TT]+'s_'+IntToStr(k),fmCreate);
    for j:=0 to Pro-1 do
    begin
      for i:=0 to lPW-1 do
        lData[i] := SData[j,i];
      FS.WriteBuffer(lData,lPW*8);
    end;
    FS.Free;

    if not(Go) then
      exit;
  end;
end;

procedure TForm_Main.BB_StopClick(Sender: TObject);
begin
  Go := false;
end;







procedure TForm_Main.BB_STOP_ProcClick(Sender: TObject);
var
  li:longint;
begin
  for li:=0 to CLB_File.Items.Count-1 do
    CLB_File.Checked[li] := false;
  Go := false;
end;

procedure TForm_Main.BB_Get_ListClick(Sender: TObject);
var
  Path: String;
  FileList: TStringDynArray;
  FileName: String;
begin
  if OpenDialog1.Execute then
  begin
    CLB_File.Items.Clear;
    Path := ExtractFilePath(OpenDialog1.FileName);

    FileList := TDirectory.GetFiles(Path, CB_Ext.Items[CB_Ext.ItemIndex] , TSearchOption.soTopDirectoryOnly);
    for FileName in FileList do
    begin
      CLB_File.Items.Add(FileName);
    end;
  end;
end;

procedure TForm_Main.CLB_FileClick(Sender: TObject);
begin
  TagFN :=  CLB_File.Items[CLB_File.ItemIndex];
  OpenTag(Sender);
  if Form_SAKAS.Showing then
    SB_ViewInfoClick(Sender);
end;

procedure TForm_Main.CB_AllCKClick(Sender: TObject);
var
  li:longint;
begin
  for li:=0 to CLB_File.Items.Count-1 do
    CLB_File.Checked[li] := CB_AllCK.Checked;
end;

procedure TForm_Main.SB_ViewInfoClick(Sender: TObject);
begin
  if CLB_File.ItemIndex>=0 then
  begin
    Form_SAKAS.Tag_FN := CLB_File.Items[CLB_File.ItemIndex];
    if Form_SAKAS.Tag_FN<>'' then
      Form_SAKAS.Load_Karte(Form_SAKAS.Tag_FN,Sender);
  end;
  Form_SAKAS.Show;
end;

procedure TForm_Main.BB_ProcClick(Sender: TObject);
var
  li:longint;
begin
  for li:=0 to CLB_File.Items.Count-1 do
  begin
    CLB_File.ItemIndex := li;
    CLB_FileClick(Sender);
    if CLB_File.Checked[li] then
    begin
      TagFN :=  CLB_File.Items[CLB_File.ItemIndex];
      OpenTag(Sender);
      BB_Proc_CalcClick(Sender);
      BB_MakeSinoClick(Sender);
      CLB_File.Checked[li] := false;
    end;
  end;
end;

procedure TForm_Main.OpenTag(Sender: TObject);
var
  Ini: TIniFile;
begin
  if UpperCase(ExtractFileExt(TagFN)) = '.TAG' then
  begin
    Edit_FN.Text := ChangeFileExt(TagFN,'');

    Ini := TIniFile.Create(TagFN);
    try
      Edit_BKFN.Text := Ini.ReadString( 'Proc_1', 'BK1_File_Name', '');
      Edit_BKFN2.Text := Ini.ReadString( 'Proc_1', 'BK2_File_Name', '');

      Edit_Pro.Text := IntToStr(Ini.ReadInteger( 'Method', 'Pro_Num', 100));
      Edit_SN.Text := Ini.ReadString('Method', 'FS_Num','0');

      CB_CCT.Checked := not(Ini.ReadBool('Method', 'Step_Mode',true));

      Edit_BKInt.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'BK_Interval', 1050));
      Edit_BKN.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'BK_Image_Num', 100));
      Edit_offsetpro.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'Off_Image_Num', 0));
      Edit_ImgNum.Text  := Ini.ReadString( 'Proc_1', 'Image_Num', '505' );
      Edit_SN.Text := Ini.ReadString('Method', 'FS_Num','0');


      Edit_OW.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'Width', 2048));
      Edit_OH.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'Height', 2048));
      Edit_PW.Text := Edit_OW.Text;
      Edit_PH.Text := Edit_OH.Text;
      Edit_OFFX.Text := '0';
      Edit_OFFY.Text := '0';

      if Ini.SectionExists('Proc_2') then
      begin
        RB_Proc2.Checked := true;

        if Ini.ValueExists( 'Proc_2', 'XY_Swap') then
          CB_Swap.Checked := Ini.ReadBool( 'Proc_2', 'XY_Swap', true);
        if Ini.ValueExists( 'Proc_2', 'BINNING') then
          CB_Bin.Checked     := Ini.ReadBool( 'Proc_2', 'BINNING',true);

        if Ini.ValueExists( 'Proc_2', 'Sino_ST') then
          Edit_SinoST.Text := IntToStr(Ini.ReadInteger( 'Proc_2', 'Sino_ST', 50));
        if Ini.ValueExists( 'Proc_2', 'Sino_End') then
          Edit_SinoEnd.Text := IntToStr(Ini.ReadInteger( 'Proc_2', 'Sino_End', 950));

        if Ini.ValueExists(  'Proc_2', 'SAX') then
          CB_SAX.Checked := Ini.ReadBool( 'Proc_2', 'SAX',  false);
        if Ini.ValueExists(  'Proc_2', 'Cor_Base') then
          CB_Cor_Base.Checked := Ini.ReadBool( 'Proc_2', 'Cor_Base',  false);
        if Ini.ValueExists(  'Proc_2', 'Conv_Step') then
          CB_Step.Checked := Ini.ReadBool( 'Proc_2', 'Conv_Step',  false);

        if Ini.ValueExists(  'Proc_2', 'ST') then
          UD_R1.Position := Ini.ReadInteger( 'Proc_2', 'ST', 0);
        if Ini.ValueExists(  'Proc_2', 'End') then
          UD_R2.Position := Ini.ReadInteger( 'Proc_2', 'End', 0);
        if Ini.ValueExists(  'Proc_2', 'Cor_Base_Dir') then
          RG_Dir.ItemIndex := Ini.ReadInteger( 'Proc_2', 'Cor_Base_Dir', 0);

        if Ini.ValueExists('Proc_2', 'Cor_BK') then
          CB_CBKL.Checked := Ini.ReadBool( 'Proc_2', 'Cor_BK', false);
        if Ini.ValueExists( 'Proc_2', 'Cor_BK_L') then
          Edit_CBK_L.Text := Ini.ReadString( 'Proc_2', 'Cor_BK_L', '10');
        if Ini.ValueExists( 'Proc_2', 'Cor_BK_R') then
          Edit_CBK_R.Text := Ini.ReadString( 'Proc_2', 'Cor_BK_R', '1270');
        if Ini.ValueExists( 'Proc_2', 'Cor_BK_W') then
          Edit_CBW.Text := Ini.ReadString( 'Proc_2', 'Cor_BK_W', '5');

      end
      else
      begin
        RB_Proc2.Checked := false;
      end;

    finally
      Ini.Free;
    end;
  end;
end;

procedure TForm_Main.WriteProc2(Sender: TObject);
var
  BFN, BDir2,lFN : string;
  Ini: TIniFile;
begin
  if Edit_FN.Text<>'' then
  begin
    Ini := TIniFile.Create(Edit_FN.Text+'.tag');
    try
      if not(Ini.ValueExists('Proc_1','File_Name')) then
        Ini.WriteString('Proc_1','File_Name',Edit_FN.Text);
      if not(Ini.ValueExists('Proc_1','BK1_File_Name')) then
        Ini.WriteString( 'Proc_1', 'BK1_File_Name', Edit_BKFN.Text );
      if not(Ini.ValueExists('Proc_1','BK2_File_Name')) then
        Ini.WriteString( 'Proc_1', 'BK2_File_Name', Edit_BKFN2.Text );

      if not(Ini.ValueExists('Method', 'Pro_Num')) then
        Ini.WriteString( 'Method', 'Pro_Num', Edit_Pro.Text);
      if not(Ini.ValueExists( 'Method', 'Pro_angle')) then
        if Edit_Rot_Angle.Text='360' then
          Ini.WriteInteger( 'Method', 'Pro_angle', 360)
        else
          Ini.WriteInteger( 'Method', 'Pro_angle', 180);

      if not(Ini.ValueExists( 'Proc_1', 'BK_Interval')) then
        Ini.WriteString( 'Proc_1', 'BK_Interval', Edit_BKInt.Text);
      if not(Ini.ValueExists('Proc_1', 'BK_Image_Num')) then
        Ini.WriteString( 'Proc_1', 'BK_Image_Num', Edit_BKN.Text );
      if not(Ini.ValueExists( 'Proc_1', 'Off_Image_Num')) then
        Ini.WriteString( 'Proc_1', 'Off_Image_Num', Edit_offsetpro.Text);

      if not(Ini.ValueExists('Proc_1', 'Width')) then
        Ini.WriteString( 'Proc_1', 'Width', Edit_PW.Text);
      if not(Ini.ValueExists('Proc_1', 'Height')) then
        Ini.WriteString( 'Proc_1', 'Height', Edit_PH.Text);

      if not(Ini.ValueExists('Proc_1', 'Offset_X')) then
        Ini.WriteString( 'Proc_1', 'Offset_X', Edit_OFFX.Text);
      if not(Ini.ValueExists('Proc_1', 'Offset_Y')) then
        Ini.WriteString( 'Proc_1', 'Offset_Y', Edit_OFFY.Text);

      //Proc_2
      Ini.WriteString( 'Proc_2', 'Method', 'Make sinogram');

      BFN := Edit_FN.Text;
      BDir2 := ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal\sino\';
      lFN :=TPath.GetFileNameWithoutExtension(BFN);
      Ini.WriteString( 'Proc_2', 'File_Name', BDir2+lFN+'_PH_s_*');

      Ini.WriteInteger('Proc_2','Image_Num',StrToInt(Edit_SinoEnd.Text)-StrToInt(Edit_SinoST.Text)+1);

      if CB_Swap.Checked then
      begin
        if CB_Bin.Checked then
          Ini.WriteInteger( 'Proc_2', 'Width', StrToInt(Edit_PH.Text) div 2)
        else
          Ini.WriteInteger( 'Proc_2', 'Width', StrToInt(Edit_PH.Text))
        end
      else
      begin
        if CB_Bin.Checked then
          Ini.WriteInteger( 'Proc_2', 'Width', StrToInt(Edit_PW.Text) div 2)
        else
          Ini.WriteInteger( 'Proc_2', 'Width', StrToInt(Edit_PW.Text))
      end;

      Ini.WriteInteger( 'Proc_2', 'Height', StrToInt(Edit_ImgNum.Text) div StrToInt(Edit_SN.Text)-BKNum*2);
      Ini.WriteInteger( 'Proc_2', 'Offset_X', StrToInt(Edit_OffX.Text));
      Ini.WriteInteger( 'Proc_2', 'Offset_Y', StrToInt(Edit_OffY.Text));

      Ini.WriteInteger( 'Proc_2', 'Format', 4);

      Ini.WriteBool( 'Proc_2', 'XY_Swap',  CB_Swap.Checked);
      Ini.WriteBool( 'Proc_2', 'BINNING',  CB_Bin.Checked);

      Ini.WriteInteger( 'Proc_2', 'ST', StrToInt(Edit_SinoST.Text));
      Ini.WriteInteger( 'Proc_2', 'End', StrToInt(Edit_SinoEnd.Text));

      Ini.WriteBool( 'Proc_2', 'SAX',  CB_SAX.Checked);
      Ini.WriteInteger( 'Proc_2', 'Calc_Ph_ST', UD_R1.Position);
      Ini.WriteInteger( 'Proc_2', 'Calc_Ph_End', UD_R2.Position);
      Ini.WriteBool( 'Proc_2', 'Cor_Base', CB_Cor_Base.Checked);
      Ini.WriteInteger( 'Proc_2', 'Cor_Base_Dir', RG_Dir.ItemIndex);
      Ini.WriteBool( 'Proc_2', 'Conv_Step', CB_Step.Checked);

      Ini.WriteBool( 'Proc_2', 'Cor_BK',  CB_CBKL.Checked);
      Ini.WriteString( 'Proc_2', 'Cor_BK_L', Edit_CBK_L.Text);
      Ini.WriteString( 'Proc_2', 'Cor_BK_R', Edit_CBK_R.Text);
      Ini.WriteString( 'Proc_2', 'Cor_BK_W', Edit_CBW.Text);

    finally
      Ini.Free;
    end;
  end;
end;


procedure TForm_Main.BB_Save_CondClick(Sender: TObject);
begin
  WriteProc2(Sender);
end;



end.
