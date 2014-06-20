.class Lcom/android/lgesettings/TetherSettings$5;
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
    .line 1339
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings$5;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1342
    iget-object v4, p0, Lcom/android/lgesettings/TetherSettings$5;->this$0:Lcom/android/lgesettings/TetherSettings;

    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings$5;->this$0:Lcom/android/lgesettings/TetherSettings;

    const-string v5, "wifi"

    invoke-virtual {v3, v5}, Lcom/android/lgesettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    #setter for: Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4, v3}, Lcom/android/lgesettings/TetherSettings;->access$502(Lcom/android/lgesettings/TetherSettings;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 1343
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings$5;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/lgesettings/TetherSettings;->access$500(Lcom/android/lgesettings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 1344
    .local v2, wifiState:I
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1347
    .local v1, operator_numeric:Ljava/lang/String;
    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    .line 1348
    const-string v3, "TetherSettings"

    const-string v4, "[YHD] alertDialogHandler - BUTTON_POSITIVE"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "US"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1350
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings$5;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->isTmusSimCard(Ljava/lang/String;)Z
    invoke-static {v3, v1}, Lcom/android/lgesettings/TetherSettings;->access$1600(Lcom/android/lgesettings/TetherSettings;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1351
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1352
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings$5;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->setUpsellTimer()V
    invoke-static {v3}, Lcom/android/lgesettings/TetherSettings;->access$1700(Lcom/android/lgesettings/TetherSettings;)V

    .line 1373
    :cond_0
    :goto_0
    return-void

    .line 1354
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings$5;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->startUpsell(I)V
    invoke-static {v3, v6}, Lcom/android/lgesettings/TetherSettings;->access$1800(Lcom/android/lgesettings/TetherSettings;I)V

    goto :goto_0

    .line 1357
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings$5;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;
    invoke-static {v3}, Lcom/android/lgesettings/TetherSettings;->access$1900(Lcom/android/lgesettings/TetherSettings;)Lcom/android/lgesettings/wifi/WifiApEnabler;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 1358
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings$5;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->getbFirstTimeUse()Z
    invoke-static {v3}, Lcom/android/lgesettings/TetherSettings;->access$2000(Lcom/android/lgesettings/TetherSettings;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1359
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1360
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.lge.upsell"

    const-string v4, "com.lge.upsell.FirstTimeUse"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1361
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings$5;->this$0:Lcom/android/lgesettings/TetherSettings;

    const/16 v4, 0x372

    invoke-virtual {v3, v0, v4}, Lcom/android/lgesettings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1365
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings$5;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->startProvisioningIfNecessary(I)V
    invoke-static {v3, v6}, Lcom/android/lgesettings/TetherSettings;->access$1500(Lcom/android/lgesettings/TetherSettings;I)V

    goto :goto_0

    .line 1367
    :cond_4
    const/4 v3, -0x2

    if-ne p2, v3, :cond_0

    .line 1368
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "US"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1369
    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings$5;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/lgesettings/TetherSettings;->access$2100(Lcom/android/lgesettings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1371
    :cond_5
    const-string v3, "TetherSettings"

    const-string v4, "[YHD] alertDialogHandler - BUTTON_NEGATIVE"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
