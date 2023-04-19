unit FuncoesImagens;

interface
  uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ExtCtrls, Jpeg, uDM, DB, DBClient;

const
  _WidthImages = 270;


  procedure CarregaImagem(Codigo: Integer; const Foto: TPicture; Tabela:String; Resize:Boolean = False; maxWidth:Integer = 0);
  procedure GravaImagem(Codigo: Integer; Foto: TPicture; Tabela:String; MaxWidth : Integer = _WidthImages);
  function  ApagaImagem(Codigo: Integer; Tabela:String):boolean;
  function  GeraImagemTmpJpg(Picture: TPicture): String;

  procedure SmoothResize(Src, Dst: TBitmap);
  procedure ResizeImage(FileName: string; MaxWidth: Integer;Foto:TPicture);
  procedure ResizeImageB(MaxWidth: Integer;Foto:TPicture);
  function  GeraNomeArquivoTemp(Extensao_sem_ponto: String; NomeSugerido: String=''): String;
  function  RetornaTamanhoArquivo(Arquivo: String): Integer;
  procedure CarregaImagemWall(Field:TGraphicField; const Foto: TPicture);
  procedure GravaImagemWall(Foto: TPicture; var Field:TGraphicField);
  procedure CarregaImagemFundo(Foto: TPicture);
  procedure GravaImagemWallHD(Foto: TPicture);

type
  TRGBArray = array[Word] of TRGBTriple;
  pRGBArray = ^TRGBArray;



implementation

uses SqlExpr, FuncoesGlobais, FuncoesGerais;

procedure CarregaImagem(Codigo: Integer; const Foto: TPicture; Tabela:String; Resize:Boolean = False; maxWidth:Integer = 0);
var
  MyStream : TMemoryStream;
  ImgJPEG: TJPEGImage;

begin
  Screen.Cursor:= crSQLWait;
  try
    MyStream := TMemoryStream.Create;
    ImgJPEG := TJPEGImage.Create;
    try
      if (Foto is TPicture) then
        Foto.Graphic:= nil;

      if Codigo > 0 then
      begin
        DM.cdsFoto.Close;
        DM.cdsFoto.SQL.Clear;
        DM.cdsFoto.SQL.Add('select * from '+Tabela+' WHERE CODIGO = '+IntToStr(Codigo));
        DM.cdsFoto.Open;

        if (DM.cdsFoto.RecordCount > 0) and (not DM.cdsFoto.FieldByName('FOTO').IsNull) then
        begin

          if (Foto is TPicture)  then
          begin
            //TGraphicField(DM.cdsFoto.FieldByName('FOTO')).SaveToFile(tmpFile);
            TGraphicField(DM.cdsFoto.FieldByName('FOTO')).SaveToStream(MyStream);

            MyStream.Position := 0;
            ImgJPEG.LoadFromStream(MyStream);
            Foto.Assign(ImgJPEG);
            {if RetornaTamanhoArquivo(tmpFile)>1024 then //verifica se o arquivo de foto é válido ou esta em branco
            begin
              tmpGraph.LoadFromFile(tmpFile);
              if not Resize then
                Foto.Assign(tmpGraph)
              else begin
                ResizeImage(tmpFile,maxWidth,Foto);
              end;
            end; }
          end;

          //DeleteFile(tmpFile);
        end;
        DM.cdsFoto.Close;
      end;
    except
    end;
  finally
    if Assigned(MyStream) then
      MyStream.Free;

    if Assigned(ImgJPEG) then
      ImgJPEG.Free;

    Screen.Cursor:= crDefault;
  end;
end;

procedure GravaImagem(Codigo: Integer; Foto: TPicture; Tabela:String; MaxWidth : Integer = _WidthImages);
var
  ImgJPEG: TJPEGImage;
  myStream : TMemoryStream;
begin
  Screen.Cursor:= crSQLWait;
  if codigo <> 0 then
  begin
    //redimensionar a imagem
    if (Foto<>nil) and (Foto.Graphic<>nil) then
      if (MaxWidth > 0) and (Foto.Width > MaxWidth) then
      ResizeImageB(270,Foto);

    ImgJPEG:= TJPEGImage.Create;
    //tmpPic := TPicture.Create;
    //ImgJPEG.CompressionQuality:= 20;  //seta a qualidade de compressao da imagem para 20%
    try
      myStream := TMemoryStream.Create;
      DM.cdsFoto.Close;
      DM.cdsFoto.SQL.Clear;
      DM.cdsFoto.SQL.Add('select * from '+Tabela+' WHERE CODIGO = '+IntToStr(Codigo));
      DM.cdsFoto.Open;

      if DM.cdsFoto.RecordCount > 0 then
        DM.cdsFoto.Edit
      else
      begin
        DM.cdsFoto.Append;
        DM.cdsFoto.FieldByName('codigo').Value := Codigo;
      end;

      //Grava a foto do Funcionario
      if (Foto<>nil) and (Foto.Graphic<>nil) then
      begin
        try
          ImgJPEG.Assign(Foto.Graphic);
          ImgJPEG.SaveToStream(myStream);
          TGraphicField(DM.cdsFoto.FieldByName('FOTO')).LoadFromStream(myStream);
        except
          DM.cdsFoto.FieldByName('FOTO').Clear;
        end;
      end
      else
        DM.cdsFoto.FieldByName('FOTO').Clear;

      DM.cdsFoto.Post;
      DM.cdsFoto.Close;

    finally
      ImgJPEG.Free;
      if Assigned(myStream) then
        myStream.Free;
    end;
  end;
  Screen.Cursor:= crDefault;
end;

function ApagaImagem(Codigo: Integer; Tabela:String):boolean;
begin
  Screen.Cursor:= crSQLWait;
  if Codigo > 0 then
  begin
    try
      with DM.qrSQL do
      begin
        Close;
        SQL.Clear;
        SQL.Add('update '+Tabela+' set foto = null where codigo = '+IntToStr(Codigo));
        ExecSQL;
        Close;
        Result := True;
      end;
    except
      on E:Exception do begin
        Informa('Erro ao Excluir Foto.');
      end;
    end;
  end;
  Screen.Cursor:= crDefault;
end;

function GeraImagemTmpJpg(Picture: TPicture): String;
// Pega a imagem contida em Picture e gera um arquivo temporário jpg, retornando o nome do arquivo
var
  Jpeg: TJPEGImage;
begin
  Result:= GeraNomeArquivoTemp('JPG','ImgTemp');
  try
    Jpeg:= TJPEGImage.Create;
    Jpeg.Assign(Picture.Graphic);
    Jpeg.SaveToFile(Result);
  finally
    Jpeg.Free;
  end;


end;

procedure SmoothResize(Src, Dst: TBitmap);
var
  x, y: Integer;
  xP, yP: Integer;
  xP2, yP2: Integer;
  SrcLine1, SrcLine2: pRGBArray;
  t3: Integer;
  z, z2, iz2: Integer;
  DstLine: pRGBArray;
  DstGap: Integer;
  w1, w2, w3, w4: Integer;
begin
  Src.PixelFormat := pf24Bit;
  Dst.PixelFormat := pf24Bit;

  if (Src.Width = Dst.Width) and (Src.Height = Dst.Height) then
    Dst.Assign(Src)
  else
  begin
    DstLine := Dst.ScanLine[0];
    DstGap := Integer(Dst.ScanLine[1]) - Integer(DstLine);

    xP2 := MulDiv(pred(Src.Width), $10000, Dst.Width);
    yP2 := MulDiv(pred(Src.Height), $10000, Dst.Height);
    yP := 0;

    for y := 0 to pred(Dst.Height) do begin
      xP := 0;

      SrcLine1 := Src.ScanLine[yP shr 16];

      if (yP shr 16 < pred(Src.Height)) then
        SrcLine2 := Src.ScanLine[succ(yP shr 16)]
      else
        SrcLine2 := Src.ScanLine[yP shr 16];

      z2 := succ(yP and $FFFF);
      iz2 := succ((not yp) and $FFFF);
      for x := 0 to pred(Dst.Width) do begin
        t3 := xP shr 16;
        z := xP and $FFFF;
        w2 := MulDiv(z, iz2, $10000);
        w1 := iz2 - w2;
        w4 := MulDiv(z, z2, $10000);
        w3 := z2 - w4;
        DstLine[x].rgbtRed := (SrcLine1[t3].rgbtRed * w1 +
          SrcLine1[t3 + 1].rgbtRed * w2 +
          SrcLine2[t3].rgbtRed * w3 + SrcLine2[t3 + 1].rgbtRed * w4) shr 16;
        DstLine[x].rgbtGreen :=
          (SrcLine1[t3].rgbtGreen * w1 + SrcLine1[t3 + 1].rgbtGreen * w2 +

          SrcLine2[t3].rgbtGreen * w3 + SrcLine2[t3 + 1].rgbtGreen * w4) shr 16;
        DstLine[x].rgbtBlue := (SrcLine1[t3].rgbtBlue * w1 +
          SrcLine1[t3 + 1].rgbtBlue * w2 +
          SrcLine2[t3].rgbtBlue * w3 +
          SrcLine2[t3 + 1].rgbtBlue * w4) shr 16;
        Inc(xP, xP2);
      end;
      Inc(yP, yP2);
      DstLine := pRGBArray(Integer(DstLine) + DstGap);
    end;
  end;
end;

procedure ResizeImage(FileName: string; MaxWidth: Integer;Foto:TPicture);
var
  OldBitmap: TBitmap;
  NewBitmap: TBitmap;
  aWidth: Integer;
  JPEGImage: TJPEGImage;
begin
  JPEGImage := TJPEGImage.Create;
  JPEGImage.LoadFromFile(FileName);
  OldBitmap := TBitmap.Create;
  try
    OldBitmap.Assign(JPEGImage);
    aWidth := OldBitmap.Width;

    begin
      aWidth := MaxWidth;
      NewBitmap := TBitmap.Create;
      try
        NewBitmap.Width := MaxWidth;
        NewBitmap.Height := MulDiv(MaxWidth, OldBitmap.Height, OldBitmap.Width);
        SmoothResize(OldBitmap, NewBitmap);
        Foto.Assign(NewBitmap);
      finally
        NewBitmap.Free;
      end;
    end;
  finally
    OldBitmap.Free;

    if Assigned(JPEGImage) then
      JPEGImage.Free;
  end;
end;

procedure ResizeImageB(MaxWidth: Integer;Foto:TPicture);
var
  OldBitmap: TBitmap;
  NewBitmap: TBitmap;
begin
   try
     OldBitmap := TBitmap.Create;
     OldBitmap.Assign(Foto.Graphic);

     try
        NewBitmap := TBitmap.Create;
        NewBitmap.Width := MaxWidth;
        NewBitmap.Height := MulDiv(MaxWidth, OldBitmap.Height, OldBitmap.Width);
        SmoothResize(OldBitmap, NewBitmap);
        Foto.Assign(NewBitmap);
      finally
        if Assigned(NewBitmap) then
          NewBitmap.Free;
      end;


   finally
     if Assigned(OldBitmap) then
       OldBitmap.Free;
   end;

end;

function  GeraNomeArquivoTemp(Extensao_sem_ponto: String; NomeSugerido: String=''): String;
//Gera um nome para um arquivo temporario com a extensao informada. Se o nome sugerido for='', gera um nome 'temp'...
//e acrescenta a path
begin
  Result:= PathTMP+NomeSugerido+'_temp'+FormatDateTime('ddmmyyyyhhmmsszzz',now)+'.'+Extensao_sem_ponto;
end;

function RetornaTamanhoArquivo(Arquivo: String): Integer;
//Retorna o tamanho do arquivo em bytes.
begin
  with TFileStream.Create(Arquivo, fmOpenRead or fmShareExclusive) do
  try
    Result := Size;
  finally
    Free;
  end;
end;

procedure CarregaImagemWall(Field:TGraphicField; const Foto: TPicture);
var
  tmpFile: String;
  tmpGraph: TPicture;
begin
  Screen.Cursor:= crSQLWait;
  try
    tmpGraph:= TPicture.Create;
    try
      if (Foto is TPicture) then
        Foto.Graphic:= nil;

      //Cria diretorio temporário no C:\temp para converter a imagem em jpeg de 5KB
          tmpFile:= GeraNomeArquivoTemp('JPG','FotocadProduto');

          if (Foto is TPicture) then
          begin
            Field.SaveToFile(tmpFile);
            if RetornaTamanhoArquivo(tmpFile)>1024 then //verifica se o arquivo de foto é válido ou esta em branco
            begin
              tmpGraph.LoadFromFile(tmpFile);
              Foto.Assign(tmpGraph);
            end;
          end;
          DeleteFile(tmpFile);
    except
    end;
  finally
    if FileExists(tmpFile) then
      DeleteFile(tmpFile);
    tmpGraph.Free;
    Screen.Cursor:= crDefault;
  end;
end;

procedure GravaImagemWall(Foto: TPicture; var Field:TGraphicField);
//Pega a imagem atribuida em Picture e grava no formato JPG na path e nome informado em nomedoarquivo
//no tamanho 3x4
var
  ImgJPEG: TJPEGImage;
  tmpFile: String;
begin
  Screen.Cursor:= crSQLWait;
  ImgJPEG:= TJPEGImage.Create;
  ImgJPEG.CompressionQuality:= 20;  //seta a qualidade de compressao da imagem para 20%
    try
     tmpFile:= GeraNomeArquivoTemp('JPG','imgProdutos');
      //Grava a foto do Produto
      if (Foto<>nil) and (Foto.Graphic<>nil) then
      begin
        try

          ImgJPEG.Assign(Foto.Graphic);
          ImgJPEG.SaveToFile(tmpFile);

          Field.LoadFromFile(tmpFile);
          DeleteFile(tmpFile);
        except
          Field.Clear;
        end;
      end
      else
        Field.Clear;
    finally
      if FileExists(tmpFile) then
        DeleteFile(tmpFile);
      ImgJPEG.Free;

    end;

  Screen.Cursor:= crDefault;
end;

procedure GravaImagemWallHD(Foto: TPicture);
//Pega a imagem atribuida em Picture e grava no formato JPG na path e nome informado em nomedoarquivo
//no tamanho 3x4
var
  ImgJPEG: TJPEGImage;
  tmpFile: String;
begin
  Screen.Cursor:= crSQLWait;
  ImgJPEG:= TJPEGImage.Create;
  ImgJPEG.CompressionQuality:= 20;  //seta a qualidade de compressao da imagem para 20%
    try
     tmpFile:= ExtractFilePath(Application.ExeName)+'Fundo.jpg';
      //Grava a foto do Produto
      if (Foto<>nil) and (Foto.Graphic<>nil) then
      begin
        try
          ImgJPEG.Assign(Foto.Graphic);
          ImgJPEG.SaveToFile(tmpFile);
        except
        end;
      end
      else begin
       if FileExists(tmpFile) then
        DeleteFile(tmpFile);
        Foto.Graphic := nil;
      end;

    finally
      ImgJPEG.Free;
    end;
  Screen.Cursor:= crDefault;
end;


procedure CarregaImagemFundo(Foto: TPicture);
var
  Fundo : String;
begin
  Fundo := ExtractFilePath(Application.ExeName)+'Fundo.jpg';

  if FileExists(Fundo) then
    Foto.LoadFromFile(Fundo)
  else
    Foto.Graphic := nil;

end;


//--------------------------------------------------------------------------------------------------

end.
