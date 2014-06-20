.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$12;
.super Ljava/lang/Object;
.source "WifiScreenSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 998
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$12;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "ed"

    .prologue
    .line 1001
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$12;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDevRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1002
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$12;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDevRenameDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 1003
    .local v0, positiveButton:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$12;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$1600(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1005
    .local v1, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1007
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1014
    .end local v0           #positiveButton:Landroid/widget/Button;
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1010
    .restart local v0       #positiveButton:Landroid/widget/Button;
    .restart local v1       #str:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1016
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1018
    return-void
.end method
