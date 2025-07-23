//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include "mmsystem.h"

#include "Unit1.h"
#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

char p1, p2, p3, p4, p5, p6, p7, p8, p9;
// p1,p2... pola w grze (ich zawartosc: p1'n'; lub 'x'; lub 'o';)
char kto;

// zaczyna kolko l=0 zaczy krzyzyk l=1 zaczyn losowo l=2
// b do wylosowywania miedzy innymi kolejnosc grania
// p=0 mowi, ze rozgrywka jest w toku, a p=1 ze trzeba zresetowac plansze
// k=0 to niezaczeta rogrywka k=1 to zaczeta rozgrywka
// po to blokada przed dŸwiêkiem
// cof wskazuje na pole na planszy, które mo¿e by cofniête
int l = 0, b, p = 0, k = 0, po = 0, cof = 0, pom = 0;

/* 
funkcja która posiada powtarzaj¹ce siê mechanizmy
pokazywania stanu koñca gry po klikniêciu jakiegos
pola do postawienia o lub x
*/
void __fastcall TForm1::gameOver() {
  // animacja wygranej
  if (p1 == p2 && p2 == p3 && p1 != 'n')
  {
    if (kto == 'x')
    {
      pole1->Picture->LoadFromFile("img/ls_o.bmp");
      pole2->Picture->LoadFromFile("img/pos_o.bmp");
      pole3->Picture->LoadFromFile("img/ps_o.bmp");
    }
    if (kto == 'o')
    {
      pole1->Picture->LoadFromFile("img/ls_x.bmp");
      pole2->Picture->LoadFromFile("img/pos_x.bmp");
      pole3->Picture->LoadFromFile("img/ps_x.bmp");
    }
  }
  if (p4 == p5 && p5 == p6 && p6 != 'n')
  {
    if (kto == 'x')
    {
      pole4->Picture->LoadFromFile("img/ls_o.bmp");
      pole5->Picture->LoadFromFile("img/pos_o.bmp");
      pole6->Picture->LoadFromFile("img/ps_o.bmp");
    }
    if (kto == 'o')
    {
      pole4->Picture->LoadFromFile("img/ls_x.bmp");
      pole5->Picture->LoadFromFile("img/pos_x.bmp");
      pole6->Picture->LoadFromFile("img/ps_x.bmp");
    }
  }
  if (p7 == p8 && p8 == p9 && p9 != 'n')
  {
    if (kto == 'x')
    {
      pole7->Picture->LoadFromFile("img/ls_o.bmp");
      pole8->Picture->LoadFromFile("img/pos_o.bmp");
      pole9->Picture->LoadFromFile("img/ps_o.bmp");
    }
    if (kto == 'o')
    {
      pole7->Picture->LoadFromFile("img/ls_x.bmp");
      pole8->Picture->LoadFromFile("img/pos_x.bmp");
      pole9->Picture->LoadFromFile("img/ps_x.bmp");
    }
  }
  if (p1 == p4 && p4 == p7 && p4 != 'n')
  {
    if (kto == 'x')
    {
      pole1->Picture->LoadFromFile("img/gs_o.bmp");
      pole4->Picture->LoadFromFile("img/pis_o.bmp");
      pole7->Picture->LoadFromFile("img/ds_o.bmp");
    }
    if (kto == 'o')
    {
      pole1->Picture->LoadFromFile("img/gs_x.bmp");
      pole4->Picture->LoadFromFile("img/pis_x.bmp");
      pole7->Picture->LoadFromFile("img/ds_x.bmp");
    }
  }
  if (p2 == p5 && p5 == p8 && p8 != 'n')
  {
    if (kto == 'x')
    {
      pole2->Picture->LoadFromFile("img/gs_o.bmp");
      pole5->Picture->LoadFromFile("img/pis_o.bmp");
      pole8->Picture->LoadFromFile("img/ds_o.bmp");
    }
    if (kto == 'o')
    {
      pole2->Picture->LoadFromFile("img/gs_x.bmp");
      pole5->Picture->LoadFromFile("img/pis_x.bmp");
      pole8->Picture->LoadFromFile("img/ds_x.bmp");
    }
  }
  if (p3 == p6 && p6 == p9 && p9 != 'n')
  {
    if (kto == 'x')
    {
      pole3->Picture->LoadFromFile("img/gs_o.bmp");
      pole6->Picture->LoadFromFile("img/pis_o.bmp");
      pole9->Picture->LoadFromFile("img/ds_o.bmp");
    }
    if (kto == 'o')
    {
      pole3->Picture->LoadFromFile("img/gs_x.bmp");
      pole6->Picture->LoadFromFile("img/pis_x.bmp");
      pole9->Picture->LoadFromFile("img/ds_x.bmp");
    }
  }
  if (p1 == p5 && p5 == p9 && p9 != 'n')
  {
    if (kto == 'x')
    {
      pole1->Picture->LoadFromFile("img/k-p_o.bmp");
      pole5->Picture->LoadFromFile("img/l_o.bmp");
      pole9->Picture->LoadFromFile("img/k-l_o.bmp");
    }
    if (kto == 'o')
    {
      pole1->Picture->LoadFromFile("img/k-p_x.bmp");
      pole5->Picture->LoadFromFile("img/l_x.bmp");
      pole9->Picture->LoadFromFile("img/k-l_x.bmp");
    }
  }
  if (p3 == p5 && p5 == p7 && p7 != 'n')
  {
    if (kto == 'x')
    {
      pole3->Picture->LoadFromFile("img/ukgl_o.bmp");
      pole5->Picture->LoadFromFile("img/p_o.bmp");
      pole7->Picture->LoadFromFile("img/ukdl_o.bmp");
    }
    if (kto == 'o')
    {
      pole3->Picture->LoadFromFile("img/ukgl_x.bmp");
      pole5->Picture->LoadFromFile("img/p_x.bmp");
      pole7->Picture->LoadFromFile("img/ukdl_x.bmp");
    }
  }
  if (p2 == p5 && p5 == p8 && p8 != 'n' &&
      p4 == p5 && p5 == p6 && p6 != 'n')
  {
    if (kto == 'x')
    {
      pole5->Picture->LoadFromFile("img/rs_o.bmp");
    }
    if (kto == 'o')
    {
      pole5->Picture->LoadFromFile("img/rs_x.bmp");
    }
  }
  if (p1 == p5 && p5 == p9 && p9 != 'n' &&
      p7 == p5 && p5 == p3 && p3 != 'n')
  {
    if (kto == 'x')
    {
      pole5->Picture->LoadFromFile("img/us_o.bmp");
    }
    if (kto == 'o')
    {
      pole5->Picture->LoadFromFile("img/us_x.bmp");
    }
  }
}

void __fastcall TForm1::sprawdz()
{
  if (((p1 == p2 && p2 == p3 && p1 != 'n') ||
      (p4 == p5 && p5 == p6 && p6 != 'n') ||
      (p7 == p8 && p8 == p9 && p9 != 'n') ||
      (p1 == p4 && p4 == p7 && p4 != 'n') ||
      (p2 == p5 && p5 == p8 && p8 != 'n') ||
      (p3 == p6 && p6 == p9 && p3 != 'n') ||
      (p1 == p5 && p5 == p9 && p9 != 'n') ||
      (p7 == p5 && p5 == p3 && p3 != 'n'))
      && p == 0 )
  {
    pom = 1;
    Sleep(15);
    sndPlaySound("snd/r.wav", SND_ASYNC);
    char *w;
    if (kto == 'x')
      w = "Wygrywa kó³ko!  (nacisnij przycisk ,Od Nowa' lub gra->od pocz¹tku, by zaczac ponownie grê.)";
    else
      w = "Wygrywa krzy¿yk!  (nacisnij przycisk ,Od Nowa' lub gra->od pocz¹tku, by zaczac ponownie grê)";
    Application->MessageBox(w, "Koniec Gry", MB_OK);
    p = 1;
  }

  Button3->Enabled = true;
  if (pom == 1)
  {
    Button3->Enabled = false;
    pom = 0;
  }
  k = 1;

  if (p == 1)
  {
    // kiedy gra niezresetowana, a dalej moÅ¼na klikaÄ‡
    Label3->Caption = "Stan: zresetuj planszï¿½";
    pole1->Enabled = false;
    pole2->Enabled = false;
    pole3->Enabled = false;
    pole4->Enabled = false;
    pole5->Enabled = false;
    pole6->Enabled = false;
    pole7->Enabled = false;
    pole8->Enabled = false;
    pole9->Enabled = false;
    tura->Visible = false;
  }
  // kiedy jest remis...
  if (pole1->Enabled == false &&
      pole2->Enabled == false &&
      pole3->Enabled == false &&
      pole4->Enabled == false &&
      pole5->Enabled == false &&
      pole6->Enabled == false &&
      pole7->Enabled == false &&
      pole8->Enabled == false &&
      pole9->Enabled == false &&
      p == 0)
  {
    tura->Visible = false;
    Label3->Caption = "Stan: zresetuj planszê";
    sndPlaySound("snd/suck.wav", SND_ASYNC);
    tura->Visible = false;
    Button3->Enabled = false;
    Application->MessageBox("remis!!!  (naciï¿½nij przycisk ,Od Nowa' lub gra->od pocz¹tku, by zaczac ponownie grê)", "Koniec Gry", MB_OK);
    sndPlaySound("snd/suck.wav", SND_ASYNC);
  }
}
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent *Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormCreate(TObject *Sender)
{
  p = 0;
  k = 0;
  Label3->Caption = "Stan: poprawny";
  pole1->Picture->LoadFromFile("img/n.bmp");
  pole2->Picture->LoadFromFile("img/n.bmp");
  pole3->Picture->LoadFromFile("img/n.bmp");
  pole4->Picture->LoadFromFile("img/n.bmp");
  pole5->Picture->LoadFromFile("img/n.bmp");
  pole6->Picture->LoadFromFile("img/n.bmp");
  pole7->Picture->LoadFromFile("img/n.bmp");
  pole8->Picture->LoadFromFile("img/n.bmp");
  pole9->Picture->LoadFromFile("img/n.bmp");
  p1 = 'n';
  p2 = 'n';
  p3 = 'n';
  p4 = 'n';
  p5 = 'n';
  p6 = 'n';
  p7 = 'n';
  p8 = 'n';
  p9 = 'n';
  pole1->Enabled = true;
  pole2->Enabled = true;
  pole3->Enabled = true;
  pole4->Enabled = true;
  pole5->Enabled = true;
  pole6->Enabled = true;
  pole7->Enabled = true;
  pole8->Enabled = true;
  pole9->Enabled = true;
  Button3->Enabled = false;
  
  if (po == 1)
  {
    sndPlaySound("snd/i.wav", SND_ASYNC);
  }
  po = 1;
  tura->Visible = true;

  //jezeli pierwsze kolko
  if (l == 0)
  {
    tura->Picture->LoadFromFile("img/osmall.bmp");
    kto = 'o';
  }
  
  //jezeli krzyzyk zaczyna
  if (l == 1)
  {
    tura->Picture->LoadFromFile("img/xsmall.bmp");
    kto = 'x';
  }
  //jezeli losowo kto zaczyna
  if (l == 2)
  {
    randomize();
    b = random(4) + 1;
    if(b % 2 == 1) {
      kto = 'x';
    } else {
      kto = 'o';
    }
    if (kto == 'x')
    {
      tura->Picture->LoadFromFile("img/xsmall.bmp");
    }
    else
    {
      tura->Picture->LoadFromFile("img/osmall.bmp");
    }
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::pole1Click(TObject *Sender)
{
  if (p1 == 'n')
  {
    if (kto == 'o')
    {
      // kiedy tura kï¿½ka...
      pole1->Picture->LoadFromFile("img/o.bmp");
      p1 = 'o';
      kto = 'x';
      tura->Picture->LoadFromFile("img/xsmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    else
    {
      // kiedy tura krzyï¿½yka...
      pole1->Picture->LoadFromFile("img/x.bmp");
      p1 = 'x';
      kto = 'o';
      tura->Picture->LoadFromFile("img/osmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    pole1->Enabled = false;
    sprawdz();
    cof = 1;
  }
  //---------------------------------------------------------------
  gameOver();
  //----------------------------------------------------------------------
  if (p1 == p2 && p2 == p3 && p3 != 'n' &&
      p1 == p4 && p4 == p7 && p7 != 'n')
  {
    if (kto == 'x')
    {
      pole1->Picture->LoadFromFile("img/glk_o.bmp");
    }
    if (kto == 'o')
    {
      pole1->Picture->LoadFromFile("img/glk_x.bmp");
    }
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::pole2Click(TObject *Sender)
{
  if (p2 == 'n')
  {
    if (kto == 'o')
    {
      pole2->Picture->LoadFromFile("img/o.bmp");
      p2 = 'o';
      kto = 'x';
      tura->Picture->LoadFromFile("img/xsmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    else
    {
      pole2->Picture->LoadFromFile("img/x.bmp");
      p2 = 'x';
      kto = 'o';
      tura->Picture->LoadFromFile("img/osmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    pole2->Enabled = false;
    sprawdz();
    cof = 2;
  }
  //----------------------------------------------------------------
  gameOver();
  //------------------------------------------------------
  if (p1 == p2 && p2 == p3 && p1 != 'n' &&
      p2 == p5 && p5 == p8 && p5 != 'n')
  {
    if (kto == 'x')
    {
      pole2->Picture->LoadFromFile("img/gb_o.bmp");
    }
    if (kto == 'o')
    {
      pole2->Picture->LoadFromFile("img/gb_x.bmp");
    }
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::pole3Click(TObject *Sender)
{
  if (p3 == 'n')
  {
    if (kto == 'o')
    {
      pole3->Picture->LoadFromFile("img/o.bmp");
      p3 = 'o';
      kto = 'x';
      tura->Picture->LoadFromFile("img/xsmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    else
    {
      pole3->Picture->LoadFromFile("img/x.bmp");
      p3 = 'x';
      kto = 'o';
      tura->Picture->LoadFromFile("img/osmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    pole3->Enabled = false;
    sprawdz();
    cof = 3;
  }
  //---------------------------------------------------------
  gameOver();
  //----------------------------------------------------------------
  if (p3 == p6 && p6 == p9 && p9 != 'n' &&
      p1 == p2 && p2 == p3 && p1 != 'n')
  {
    if (kto == 'x')
    {
      pole3->Picture->LoadFromFile("img/grk_o.bmp");
    }
    if (kto == 'o')
    {
      pole3->Picture->LoadFromFile("img/grk_x.bmp");
    }
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::pole4Click(TObject *Sender)
{
  if (p4 == 'n')
  {
    if (kto == 'o')
    {
      pole4->Picture->LoadFromFile("img/o.bmp");
      p4 = 'o';
      kto = 'x';
      tura->Picture->LoadFromFile("img/xsmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    else
    {
      pole4->Picture->LoadFromFile("img/x.bmp");
      p4 = 'x';
      kto = 'o';
      tura->Picture->LoadFromFile("img/osmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    pole4->Enabled = false;
    sprawdz();
    cof = 4;
  }
  //--------------------------------------------------------
  gameOver();
  //--------------------------------------------------------
  if (p4 == p5 && p5 == p6 && p4 != 'n' &&
      p1 == p4 && p4 == p7 && p1 != 'n')
  {
    if (kto == 'x')
    {
      pole4->Picture->LoadFromFile("img/lb_o.bmp");
    }
    if (kto == 'o')
    {
      pole4->Picture->LoadFromFile("img/lb_x.bmp");
    }
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::pole5Click(TObject *Sender)
{
  if (p5 == 'n')
  {
    if (kto == 'o')
    {
      pole5->Picture->LoadFromFile("img/o.bmp");
      p5 = 'o';
      kto = 'x';
      tura->Picture->LoadFromFile("img/xsmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    else
    {
      pole5->Picture->LoadFromFile("img/x.bmp");
      p5 = 'x';
      kto = 'o';
      tura->Picture->LoadFromFile("img/osmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    pole5->Enabled = false;
    sprawdz();
    cof = 5;
  }
  //------------------------------------
  gameOver();
  //-------------------------------------
}
//---------------------------------------------------------------------------

void __fastcall TForm1::pole6Click(TObject *Sender)
{
  if (p6 == 'n')
  {
    if (kto == 'o')
    {
      pole6->Picture->LoadFromFile("img/o.bmp");
      p6 = 'o';
      kto = 'x';
      tura->Picture->LoadFromFile("img/xsmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    else
    {
      pole6->Picture->LoadFromFile("img/x.bmp");
      p6 = 'x';
      kto = 'o';
      tura->Picture->LoadFromFile("img/osmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    pole6->Enabled = false;
    sprawdz();
    cof = 6;
  }
  //------------------------------------------------
  gameOver();
  //------------------------------------------------
  if (p4 == p5 && p5 == p6 && p4 != 'n' &&
      p3 == p6 && p6 == p9 && p3 != 'n')
  {
    if (kto == 'x')
    {
      pole6->Picture->LoadFromFile("img/rb_o.bmp");
    }
    if (kto == 'o')
    {
      pole6->Picture->LoadFromFile("img/rb_x.bmp");
    }
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::pole7Click(TObject *Sender)
{
  if (p7 == 'n')
  {
    if (kto == 'o')
    {
      pole7->Picture->LoadFromFile("img/o.bmp");
      p7 = 'o';
      kto = 'x';
      tura->Picture->LoadFromFile("img/xsmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    else
    {
      pole7->Picture->LoadFromFile("img/x.bmp");
      p7 = 'x';
      kto = 'o';
      tura->Picture->LoadFromFile("img/osmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    pole7->Enabled = false;
    sprawdz();
    cof = 7;
  }
  //-------------------------------------
  gameOver();
  //--------------------------------------
  if (p7 == p8 && p8 == p9 && p8 != 'n' &&
      p1 == p4 && p4 == p7 && p7 != 'n')
  {
    if (kto == 'x')
    {
      pole7->Picture->LoadFromFile("img/dlk_o.bmp");
    }
    if (kto == 'o')
    {
      pole7->Picture->LoadFromFile("img/dlk_x.bmp");
    }
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::pole8Click(TObject *Sender)
{
  if (p8 == 'n')
  {
    if (kto == 'o')
    {
      pole8->Picture->LoadFromFile("img/o.bmp");
      p8 = 'o';
      kto = 'x';
      tura->Picture->LoadFromFile("img/xsmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    else
    {
      pole8->Picture->LoadFromFile("img/x.bmp");
      p8 = 'x';
      kto = 'o';
      tura->Picture->LoadFromFile("img/osmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    pole8->Enabled = false;
    sprawdz();
    cof = 8;
  }
  //-------------------------------------
  gameOver();
  //--------------------------------------
  if (p7 == p8 && p8 == p9 && p9 != 'n' &&
      p2 == p5 && p5 == p8 && p8 != 'n')
  {
    if (kto == 'x')
    {
      pole8->Picture->LoadFromFile("img/db_o.bmp");
    }
    if (kto == 'o')
    {
      pole8->Picture->LoadFromFile("img/db_x.bmp");
    }
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::pole9Click(TObject *Sender)
{
  if (p9 == 'n')
  {
    if (kto == 'o')
    {
      pole9->Picture->LoadFromFile("img/o.bmp");
      p9 = 'o';
      kto = 'x';
      tura->Picture->LoadFromFile("img/xsmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    else
    {
      pole9->Picture->LoadFromFile("img/x.bmp");
      p9 = 'x';
      kto = 'o';
      tura->Picture->LoadFromFile("img/osmall.bmp");
      sndPlaySound("snd/appear.wav", SND_ASYNC);
    }
    pole9->Enabled = false;
    sprawdz();
    cof = 9;
  }
  //-------------------------------------
  gameOver();
  //--------------------------------------
  if (p3 == p6 && p6 == p9 && p3 != 'n' &&
      p7 == p8 && p8 == p9 && p8 != 'n')
  {
    if (kto == 'x')
    {
      pole9->Picture->LoadFromFile("img/dpk_o.bmp");
    }
    if (kto == 'o')
    {
      pole9->Picture->LoadFromFile("img/dpk_x.bmp");
    }
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
  sndPlaySound("snd/suck.wav", SND_ASYNC);
  Form2->ShowModal();
  sndPlaySound("snd/suck.wav", SND_ASYNC);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
  if (k == 0)
  {
    Action = caNone;
    Button1->Enabled = false;
    Button3->Enabled = false;
    Button2->Enabled = false;
    sndPlaySound("snd/suck.wav", SND_ASYNC);
    Sleep(530);
    Application->Terminate();
  }
  if (k == 1)
  {
    if (Application->MessageBox(
            "Czy chcesz zamknac program? (Utracisz wtedy wszystkie obecne dane gry.)", "Zakoñczenie gry",
            MB_YESNO | MB_ICONEXCLAMATION) == IDNO)
    {
      sndPlaySound("snd/suck.wav", SND_ASYNC);
      Action = caNone;
      sndPlaySound("snd/suck.wav", SND_ASYNC);
    }
    else
    {
      Action = caNone;
      Button1->Enabled = false;
      Button3->Enabled = false;
      Button2->Enabled = false;
      sndPlaySound("snd/suck.wav", SND_ASYNC);
      Sleep(530);
      Application->Terminate();
    }
    {
    }
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::odpocztku1Click(TObject *Sender)
{
  k = 0;
  p = 0;
  Label3->Caption = "Stan: poprawny";
  pole1->Picture->LoadFromFile("img/n.bmp");
  pole2->Picture->LoadFromFile("img/n.bmp");
  pole3->Picture->LoadFromFile("img/n.bmp");
  pole4->Picture->LoadFromFile("img/n.bmp");
  pole5->Picture->LoadFromFile("img/n.bmp");
  pole6->Picture->LoadFromFile("img/n.bmp");
  pole7->Picture->LoadFromFile("img/n.bmp");
  pole8->Picture->LoadFromFile("img/n.bmp");
  pole9->Picture->LoadFromFile("img/n.bmp");
  Button3->Enabled = false;
  p1 = 'n';
  p2 = 'n';
  p3 = 'n';
  p4 = 'n';
  p5 = 'n';
  p6 = 'n';
  p7 = 'n';
  p8 = 'n';
  p9 = 'n';
  pole1->Enabled = true;
  pole2->Enabled = true;
  pole3->Enabled = true;
  pole4->Enabled = true;
  pole5->Enabled = true;
  pole6->Enabled = true;
  pole7->Enabled = true;
  pole8->Enabled = true;
  pole9->Enabled = true;
  
  if (po == 1)
  {
    sndPlaySound("snd/i.wav", SND_ASYNC);
  }
  po = 1;
  tura->Visible = true;

  if (l == 0)
  {
    tura->Picture->LoadFromFile("img/osmall.bmp");
    kto = 'o';
  }

  if (l == 1)
  {
    tura->Picture->LoadFromFile("img/xsmall.bmp");
    Button3->Enabled = false;
  }

  if (l == 2)
  {
    randomize();
    b = random(10) + 1;
    if(b % 2 == 1) {
      kto = 'x';
    } else {
      kto = 'o';
    }
    if (kto == 'x')
    {
      tura->Picture->LoadFromFile("img/xsmall.bmp");
    }
    else
    {
      tura->Picture->LoadFromFile("img/osmall.bmp");
    }
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::oprogramie1Click(TObject *Sender)
{
  sndPlaySound("snd/suck.wav", SND_ASYNC);
  Form2->ShowModal();
  sndPlaySound("snd/suck.wav", SND_ASYNC);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Facebookodwiedmojeprofilowe1Click(TObject *Sender)
{
  Form1->github();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::zaczynagraczwybranylosowo1Click(TObject *Sender)
{
  zaczynakrzyyk1->Checked = false;
  zaczynakko1->Checked = false;
  zaczynagraczwybranylosowo1->Checked = true;
  sndPlaySound("snd/mouseclick.wav", SND_ASYNC);
  l = 2;
  Label2->Caption = "Zaczyna losowanie";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::zaczynakrzyyk1Click(TObject *Sender)
{
  zaczynakrzyyk1->Checked = true;
  zaczynakko1->Checked = false;
  zaczynagraczwybranylosowo1->Checked = false;
  sndPlaySound("snd/mouseclick.wav", SND_ASYNC);
  l = 1;
  Label2->Caption = "Zaczyna krzy¿yk";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::zaczynakko1Click(TObject *Sender)
{
  zaczynakrzyyk1->Checked = false;
  zaczynakko1->Checked = true;
  zaczynagraczwybranylosowo1->Checked = false;
  sndPlaySound("snd/mouseclick.wav", SND_ASYNC);
  l = 0;
  Label2->Caption = "Zaczyna kó³ko";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::gra1Click(TObject *Sender)
{
  sndPlaySound("snd/mouseclick.wav", SND_ASYNC);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::dodatkoweinformacje1Click(TObject *Sender)
{
  sndPlaySound("snd/mouseclick.wav", SND_ASYNC);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ustawienia1Click(TObject *Sender)
{
  sndPlaySound("snd/mouseclick.wav", SND_ASYNC);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::widokstanuwcz1Click(TObject *Sender)
{
  sndPlaySound("snd/mouseclick.wav", SND_ASYNC);
  Label3->Visible = true;
  widokstanuwcz1->Enabled = false;
  widokstanuwycz1->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::widokstanuwycz1Click(TObject *Sender)
{
  sndPlaySound("snd/mouseclick.wav", SND_ASYNC);
  Label3->Visible = false;
  widokstanuwycz1->Enabled = false;
  widokstanuwcz1->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::widok1Click(TObject *Sender)
{
  sndPlaySound("snd/mouseclick.wav", SND_ASYNC);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::inforozpoczciuwcz1Click(TObject *Sender)
{
  sndPlaySound("snd/mouseclick.wav", SND_ASYNC);
  Label2->Visible = true;
  inforozpoczciuwcz1->Enabled = false;
  inforozpoczciuwycz1->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::inforozpoczciuwycz1Click(TObject *Sender)
{
  sndPlaySound("snd/mouseclick.wav", SND_ASYNC);
  Label2->Visible = false;
  inforozpoczciuwcz1->Enabled = true;
  inforozpoczciuwycz1->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::przyciskOdNowawcz1Click(TObject *Sender)
{
  sndPlaySound("snd/mouseclick.wav", SND_ASYNC);
  Button1->Visible = true;
  przyciskOdNowawcz1->Enabled = false;
  przyciskOdNowawycz1->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::przyciskOdNowawycz1Click(TObject *Sender)
{
  sndPlaySound("snd/mouseclick.wav", SND_ASYNC);
  Button1->Visible = false;
  przyciskOdNowawcz1->Enabled = true;
  przyciskOdNowawycz1->Enabled = false;
}
//---------------------------------------------------------------------------

//powtarzajacy sie kod zmieniajacy ruch
void __fastcall TForm1::cofnijRuch() {
  Button3->Enabled = false;
  if (kto == 'o')
  {
    kto = 'x';
    tura->Picture->LoadFromFile("img/xsmall.bmp");
  }
  else
  {
    kto = 'o';
    tura->Picture->LoadFromFile("img/osmall.bmp");
  }
}

void __fastcall TForm1::Button3Click(TObject *Sender)
{
  sndPlaySound("snd/cof.wav", SND_ASYNC);
  if (cof == 1)
  {
    pole1->Picture->LoadFromFile("img/n.bmp");
    p1 = 'n';
    pole1->Enabled = true;
    cofnijRuch();
  }
  if (cof == 2)
  {
    pole2->Picture->LoadFromFile("img/n.bmp");
    p2 = 'n';
    pole2->Enabled = true;
    cofnijRuch();
  }
  if (cof == 3)
  {
    pole3->Picture->LoadFromFile("img/n.bmp");
    p3 = 'n';
    pole3->Enabled = true;
    cofnijRuch();
  }
  if (cof == 4)
  {
    pole4->Picture->LoadFromFile("img/n.bmp");
    p4 = 'n';
    pole4->Enabled = true;
    cofnijRuch();
  }
  if (cof == 5)
  {
    pole5->Picture->LoadFromFile("img/n.bmp");
    p5 = 'n';
    pole5->Enabled = true;
    cofnijRuch();
  }
  if (cof == 6)
  {
    pole6->Picture->LoadFromFile("img/n.bmp");
    p6 = 'n';
    pole6->Enabled = true;
    cofnijRuch();
  }
  if (cof == 7)
  {
    pole7->Picture->LoadFromFile("img/n.bmp");
    p7 = 'n';
    pole7->Enabled = true;
    cofnijRuch();
  }
  if (cof == 8)
  {
    pole8->Picture->LoadFromFile("img/n.bmp");
    p8 = 'n';
    pole8->Enabled = true;
    cofnijRuch();
  }
  if (cof == 9)
  {
    pole9->Picture->LoadFromFile("img/n.bmp");
    p9 = 'n';
    pole9->Enabled = true;
    cofnijRuch();
  }

  //jezeli byl cofniety pierwszy ruch
  if (pole1->Enabled == true &&
      pole2->Enabled == true &&
      pole3->Enabled == true &&
      pole4->Enabled == true &&
      pole5->Enabled == true &&
      pole6->Enabled == true &&
      pole7->Enabled == true &&
      pole8->Enabled == true)
  {
    k = 0;
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::przyciskcofnijwcz1Click(TObject *Sender)
{
  sndPlaySound("snd/mouseclick.wav", SND_ASYNC);
  Button3->Visible = true;
  przyciskcofnijwcz1->Enabled = false;
  przyciskcofnijwycz1->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::przyciskcofnijwycz1Click(TObject *Sender)
{
  sndPlaySound("snd/mouseclick.wav", SND_ASYNC);
  Button3->Visible = false;
  przyciskcofnijwcz1->Enabled = true;
  przyciskcofnijwycz1->Enabled = false;
}
//---------------------------------------------------------------------------
//przenosi na githuba i wyswietla podziekowania
void __fastcall TForm1::github() {
  sndPlaySound("snd/suck.wav", SND_ASYNC);
  ShellExecute(NULL, "open", "https://github.com/EnergeticArchBTW", NULL, NULL, SW_SHOWNORMAL);
  Application->MessageBox(
      "Dziêkujê za odwiedzenie mojego githuba ;)", "Podziêkowania",
      MB_OK);
  sndPlaySound("snd/suck.wav", SND_ASYNC);
}