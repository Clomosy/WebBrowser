Var 
  MyForm:TCLForm;
  xWeb:TclWebBrowser;
  topBar,UrlEdt:TCLProEdit;
  HSB:TclHorzScrollBox; 
  VSB : TclVertScrollBox;
  GoBtn,ytbBtn,IgBtn,DocsBtn,GoBackPageBtn,GoForwardPageBtn,BlackBtn,GrayBtn,BlueBtn,PurpleBtn : TClProButton;
  HSBImg : TClProImage;
  SearchPnl : TclProPanel;
  ColorLyt : TclLayout;
  
  procedure VirtualKeyboardHidden 
  begin
  clComponent.SetupComponent(ytbBtn,'{"Align" : "MostTop","Height":'+IntToStr((SearchPnl.Height/2)/6)+',"Width":'+IntToStr(SearchPnl.Width)+',"RoundWidth":10,"RoundHeight":10,"BackGroundColor":"#c2041a","TextColor":"FFFFFF","TextSize":20,"TextBold":"yes","TextVerticalAlign":"center","TextHorizontalAlign":"center","MarginTop":5}');
  
  clComponent.SetupComponent(IgBtn,'{"Align" : "MostTop","Height":'+IntToStr((SearchPnl.Height/2)/6)+',"Width":'+IntToStr(SearchPnl.Width)+',"RoundWidth":10,"RoundHeight":10,"BackGroundColor":"#6a0275","TextColor":"ff870f","TextSize":20,"TextBold":"yes","TextVerticalAlign":"center","TextHorizontalAlign":"center","MarginTop":5}');
  
  clComponent.SetupComponent(DocsBtn,'{"Align" : "MostTop","Height":'+IntToStr((SearchPnl.Height/2)/6)+',"Width":'+IntToStr(SearchPnl.Width)+',"RoundWidth":10,"RoundHeight":10,"BackGroundColor":"#369c64","TextColor":"FFFFFF","TextSize":20,"TextBold":"yes","TextVerticalAlign":"center","TextHorizontalAlign":"center","MarginTop":5}');
  end;
  
  procedure VirtualKeyboardShow
  begin
  clComponent.SetupComponent(ytbBtn,'{"Align" : "MostTop","Height":'+IntToStr(((SearchPnl.Height/2)/6)-30)+',"Width":'+IntToStr(SearchPnl.Width)+',"RoundWidth":10,"RoundHeight":10,"BackGroundColor":"#c2041a","TextColor":"FFFFFF","TextSize":20,"TextBold":"yes","TextVerticalAlign":"center","TextHorizontalAlign":"center","MarginTop":5}');
  
  clComponent.SetupComponent(IgBtn,'{"Align" : "MostTop","Height":'+IntToStr(((SearchPnl.Height/2)/6)-30)+',"Width":'+IntToStr(SearchPnl.Width)+',"RoundWidth":10,"RoundHeight":10,"BackGroundColor":"#6a0275","TextColor":"ff870f","TextSize":20,"TextBold":"yes","TextVerticalAlign":"center","TextHorizontalAlign":"center","MarginTop":5}');
  
  clComponent.SetupComponent(DocsBtn,'{"Align" : "MostTop","Height":'+IntToStr(((SearchPnl.Height/2)/6)-30)+',"Width":'+IntToStr(SearchPnl.Width)+',"RoundWidth":10,"RoundHeight":10,"BackGroundColor":"#369c64","TextColor":"FFFFFF","TextSize":20,"TextBold":"yes","TextVerticalAlign":"center","TextHorizontalAlign":"center","MarginTop":5}');
  end;
    
  procedure YouTube
  begin
  xWeb.Navigate('https://www.youtube.com/@clomosy');
  topBar.Text := 'https://www.youtube.com/@clomosy' ;
  end;
  
  procedure Instagram
  begin
  xWeb.Navigate('https://www.instagram.com/clomosy.turkiye/');
  topBar.Text := 'https://www.instagram.com/clomosy.turkiye/' ;
  end;
  
  procedure Docs
  begin
  xWeb.Navigate('docs.clomosy.com');
  topBar.Text := 'docs.clomosy.com' ;
  end;
  
  procedure GoBack
  begin
  xWeb.goBack;
  topBar.Text :='Önceki Sayfa';
  end;
  
  procedure GoForward
  begin
  xWeb.goForward;
  topBar.Text :='Sonraki Sayfa';
  end;
  
  procedure GoPage
  begin
  xWeb.Navigate(UrlEdt.Text);
  topBar.Text := UrlEdt.Text ;
  end;
  
  procedure BlackBg
  begin
  MyForm.SetFormColor('#000000','',clGNone);
  end;
  
  procedure GrayBg
  begin
  MyForm.SetFormColor('#969595','',clGNone);
  end;
  
  procedure BlueBg
  begin
  MyForm.SetFormColor('#103d4a','',clGNone);
  end;
  
  procedure PurpleBg
  begin
  MyForm.SetFormColor('#4d0882','',clGNone);
  end;
  
Begin
  MyForm := TCLForm.Create(Self);
  ShowMessage('Mavi sol yön işaretini sola kaydırarak istediğiniz web sitesine gidebilirsiniz');
  
  HSB := MyForm.AddNewHorzScrollBox(MyForm,'HSB');
  HSB.Align := alClient;
  
  topBar := MyForm.AddNewProEdit(HSB,'topBar','clomosy.com');
  clComponent.SetupComponent(topBar,'{"Align" : "Top","Width" :20, "Height":45,"RoundHeight":10,"RoundWidth":10,"BorderColor":"#000000",
  "BorderWidth":2}');
  topBar.ReadOnly := True;
  
  xWeb:= MyForm.AddNewWebBrowser(HSB,'xWeb');  
  xWeb.Align := alLeft;
  xWeb.Width := TForm(MyForm).ClientWidth-40;
  xWeb.Navigate('clomosy.com');
  
  HSBImg := MyForm.AddNewProImage(HSB,'HSBImg');
  clComponent.SetupComponent(HSBImg,'{"Align" : "None","Width":40,"Height":"670","ImgUrl":"https://clomosy.com/demos/back2arrow.png", "ImgFit":"yes"}');
  HSBImg.Position.X:= TForm(MyForm).ClientWidth-38;
  HSBImg.Position.Y:=40;
  
  SearchPnl := MyForm.AddNewProPanel(HSB,'SearchPnl');
  clComponent.SetupComponent(SearchPnl,'{"Align" : "None","Width":250,"Height":'+IntToStr(TForm(MyForm).ClientHeight)+'}');
  SearchPnl.Position.X:=TForm(MyForm).ClientWidth+5;
  
  VSB := MyForm.AddNewVertScrollBox(SearchPnl,'VSB');
  VSB.Align := alClient;

  GoBackPageBtn := MyForm.AddNewProButton(topBar,'GoBackPageBtn','');
  clComponent.SetupComponent(GoBackPageBtn,'{"Align" : "Left","Height":40,"Width":40,"ImgUrl":"https://clomosy.com/demos/XoXback.png","ImgFit":"yes"}');
  MyForm.AddNewEvent(GoBackPageBtn,tbeOnClick,'GoBack');
  
  GoForwardPageBtn := MyForm.AddNewProButton(topBar,'GoForwardPageBtn','');
  clComponent.SetupComponent(GoForwardPageBtn,'{"Align" : "Right","Height":40,"Width":40,"ImgUrl":"https://clomosy.com/demos/RightCircle.png","ImgFit":"yes"}');
  MyForm.AddNewEvent(GoForwardPageBtn,tbeOnClick,'GoForward');
  
  UrlEdt := MyForm.AddNewProEdit(VSB,'UrlEdt','clomosy.com');
  clComponent.SetupComponent(UrlEdt,'{"Align" : "MostTop","Height":'+IntToStr((SearchPnl.Height/2)/6)+',"Width":'+IntToStr(SearchPnl.Width)+',"RoundWidth":10,"RoundHeight":10,"TextColor":"369c64","MarginTop":5}');
  
  GoBtn := MyForm.AddNewProButton(VSB,'GoBtn','Sayfaya Git');
  clComponent.SetupComponent(GoBtn,'{"Align" : "MostTop","Height":'+IntToStr((SearchPnl.Height/2)/6)+',"Width":'+IntToStr(SearchPnl.Width)+',"RoundWidth":10,"RoundHeight":10,"BackGroundColor":"#369c64","TextColor":"FFFFFF","TextSize":20,"TextBold":"yes","MarginTop":5}');
  MyForm.AddNewEvent(GoBtn,tbeOnClick,'GoPage');
  
  ytbBtn := MyForm.AddNewProButton(VSB,'ytbBtn','YouTube');
  clComponent.SetupComponent(ytbBtn,'{"Align" : "MostTop","Height":'+IntToStr((SearchPnl.Height/2)/6)+',"Width":'+IntToStr(SearchPnl.Width)+',"RoundWidth":10,"RoundHeight":10,"BackGroundColor":"#c2041a","TextColor":"FFFFFF","TextSize":20,"TextBold":"yes","TextVerticalAlign":"center","TextHorizontalAlign":"center","MarginTop":5}');
  MyForm.AddNewEvent(ytbBtn,tbeOnClick,'YouTube');

  IgBtn := MyForm.AddNewProButton(VSB,'IgBtn','Instagram');
  clComponent.SetupComponent(IgBtn,'{"Align" : "MostTop","Height":'+IntToStr((SearchPnl.Height/2)/6)+',"Width":'+IntToStr(SearchPnl.Width)+',"RoundWidth":10,"RoundHeight":10,"BackGroundColor":"#6a0275","TextColor":"ff870f","TextSize":20,"TextBold":"yes","TextVerticalAlign":"center","TextHorizontalAlign":"center","MarginTop":5}');
  MyForm.AddNewEvent(IgBtn,tbeOnClick,'Instagram');
  
  DocsBtn := MyForm.AddNewProButton(VSB,'DocsBtn','Docs');
  clComponent.SetupComponent(DocsBtn,'{"Align" : "MostTop","Height":'+IntToStr((SearchPnl.Height/2)/6)+',"Width":'+IntToStr(SearchPnl.Width)+',"RoundWidth":10,"RoundHeight":10,"BackGroundColor":"#369c64","TextColor":"FFFFFF","TextSize":20,"TextBold":"yes","TextVerticalAlign":"center","TextHorizontalAlign":"center","MarginTop":5}');
  MyForm.AddNewEvent(DocsBtn,tbeOnClick,'Docs');
  
  ColorLyt := MyForm.AddNewLayout(SearchPnl,'ColorLyt');
  ColorLyt.Align:=alTop;
  ColorLyt.Width := SearchPnl.Width;
  ColorLyt.Height := (SearchPnl.Height/2)/6;
  
  BlackBtn := MyForm.AddNewProButton(ColorLyt,'BlackBtn','');
  clComponent.SetupComponent(BlackBtn,'{"Align" : "MostLeft","Height":55,"Width":55,"RoundWidth":10,"RoundHeight":10,"BackGroundColor":"#000000","MarginLeft":6,"MarginTop":5}');
  MyForm.AddNewEvent(BlackBtn,tbeOnClick,'BlackBg');
  
  GrayBtn := MyForm.AddNewProButton(ColorLyt,'GrayBtn','');
  clComponent.SetupComponent(GrayBtn,'{"Align" : "MostLeft","Height":55,"Width":55,"RoundWidth":10,"RoundHeight":10,"BackGroundColor":"#969595","MarginLeft":6,"MarginTop":5}');
  MyForm.AddNewEvent(GrayBtn,tbeOnClick,'GrayBg');
  
  BlueBtn := MyForm.AddNewProButton(ColorLyt,'BlueBtn','');
  clComponent.SetupComponent(BlueBtn,'{"Align" : "MostLeft","Height":55,"Width":55,"RoundWidth":10,"RoundHeight":10,"BackGroundColor":"#103d4a","MarginLeft":6,"MarginTop":5}');
  MyForm.AddNewEvent(BlueBtn,tbeOnClick,'BlueBg');
  
  PurpleBtn := MyForm.AddNewProButton(ColorLyt,'PurpleBtn','');
  clComponent.SetupComponent(PurpleBtn,'{"Align" : "Left","Height":55,"Width":55,"RoundWidth":10,"RoundHeight":10,"BackGroundColor":"#4d0882","MarginLeft":6,"MarginTop":5}');
  MyForm.AddNewEvent(PurpleBtn,tbeOnClick,'PurpleBg');
  
  MyForm.AddNewEvent(MyForm,tbeOnVirtualKeyboardShown,'VirtualKeyboardShow'); 
  MyForm.AddNewEvent(MyForm,tbeOnVirtualKeyboardHidden,'VirtualKeyboardHidden'); 
  
  MyForm.Run;
End;