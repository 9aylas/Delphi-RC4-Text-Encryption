unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DCPcrypt2, DCPmd5, DCPrc4, DCPsha1;

type
  TForm1 = class(TForm)
    Button1: TButton;
    DCP_rc41: TDCP_rc4;
    Memo1: TMemo;
    Memo2: TMemo;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


 procedure TForm1.Button1Click(Sender: TObject);
 var
    i: integer;
    Cipher: TDCP_rc4;
    cle: string;
  begin
    cle:= edit1.text;
    if cle<>'' then
    begin
      Cipher:= TDCP_rc4.Create(self);
      Cipher.InitStr(cle,TDCP_sha1);
      for i:= 0 to Memo2.Lines.Count-1 do    
      begin
        Memo1.Lines[i]:= Cipher.EncryptString(memo2.lines[i]);
      Cipher.Burn;
      Cipher.Free;
      end;
    end
    else
   showmessage('wtf dude ?');
  end;


end.
