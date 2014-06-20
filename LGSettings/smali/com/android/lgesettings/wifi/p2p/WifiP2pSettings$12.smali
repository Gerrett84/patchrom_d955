.class Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$12;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 954
    iput-object p1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$12;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "ed"

    .prologue
    .line 957
    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$12;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 958
    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$12;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->dialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 959
    .local v0, positiveButton:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings$12;->this$0:Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;->access$1400(Lcom/android/lgesettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 961
    .local v1, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 963
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 970
    .end local v0           #positiveButton:Landroid/widget/Button;
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 966
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
    .line 972
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 974
    return-void
.end method
