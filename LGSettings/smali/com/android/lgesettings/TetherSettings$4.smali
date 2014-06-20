.class Lcom/android/lgesettings/TetherSettings$4;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings$4;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 1318
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 1320
    const-string v1, "TetherSettings"

    const-string v2, "[YHD] pwDialogHandler - BUTTON_POSITIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings$4;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/lgesettings/TetherSettings;->access$1300(Lcom/android/lgesettings/TetherSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1322
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings$4;->this$0:Lcom/android/lgesettings/TetherSettings;

    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings$4;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/lgesettings/TetherSettings;->access$500(Lcom/android/lgesettings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1, v2}, Lcom/android/lgesettings/TetherSettings;->access$1402(Lcom/android/lgesettings/TetherSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1323
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings$4;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/lgesettings/TetherSettings;->access$1400(Lcom/android/lgesettings/TetherSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1324
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings$4;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/lgesettings/TetherSettings;->access$1400(Lcom/android/lgesettings/TetherSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1326
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings$4;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/lgesettings/TetherSettings;->access$500(Lcom/android/lgesettings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings$4;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/lgesettings/TetherSettings;->access$1400(Lcom/android/lgesettings/TetherSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1327
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings$4;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/TetherSettings;->setInitFalse()V

    .line 1328
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings$4;->this$0:Lcom/android/lgesettings/TetherSettings;

    const/4 v2, 0x0

    #calls: Lcom/android/lgesettings/TetherSettings;->startProvisioningIfNecessary(I)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/TetherSettings;->access$1500(Lcom/android/lgesettings/TetherSettings;I)V

    .line 1335
    .end local v0           #password:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1330
    :cond_2
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 1332
    const-string v1, "TetherSettings"

    const-string v2, "[YHD] pwDialogHandler - BUTTON_NEGATIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings$4;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/lgesettings/TetherSettings;->access$1300(Lcom/android/lgesettings/TetherSettings;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
