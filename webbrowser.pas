Var 
  MyForm:TCLForm;
  xWeb:TclWebBrowser;
  topBar:TCLProEdit;
Begin
  MyForm := TCLForm.Create(Self);
  ustBar := MyForm.AddNewProEdit(MyForm,'ustBar','www.Clomosy.com');
  clComponent.SetupComponent(topBar,'{"Align" : "Top","Width" :180, "Height":45,"RoundHeight":10,"RoundWidth":10,"BorderColor":"#000000",
  "BorderWidth":2}');
  ustBar.Text := 'www.Clomosy.com';
  ustBar.ReadOnly := True;
  xWeb:= MyForm.AddNewWebBrowser(MyForm,'xWeb');  
  xWeb.Align := alClient;
  xWeb.Navigate('www.Clomosy.com');
  MyForm.Run;
End;
