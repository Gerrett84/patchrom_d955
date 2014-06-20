.class Lcom/android/lgesettings/wifi/WifiApEnabler$13;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/WifiApEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1326
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v6

    const-string v10, "wifi"

    invoke-virtual {v6, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    #setter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v9, v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$902(Lcom/android/lgesettings/wifi/WifiApEnabler;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 1327
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$900(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    .line 1328
    .local v4, wifiApState:I
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$900(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    .line 1329
    .local v5, wifiState:I
    const-string v6, "gsm.sim.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1332
    .local v3, operator_numeric:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "airplane_mode_on"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v2, v7

    .line 1335
    .local v2, isAirplaneMode:Z
    :goto_0
    const/4 v6, -0x1

    if-ne p2, v6, :cond_7

    .line 1336
    const-string v6, "WifiApEnabler"

    const-string v9, "[YHD] alertDialogHandler - BUTTON_POSITIVE"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    if-eqz v2, :cond_2

    .line 1340
    const-string v6, "WifiApEnabler"

    const-string v7, " Start AP Check : alrey AP Airplain Mode "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V
    invoke-static {v6, v8}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$000(Lcom/android/lgesettings/wifi/WifiApEnabler;Z)V

    .line 1342
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1396
    :cond_0
    :goto_1
    return-void

    .end local v2           #isAirplaneMode:Z
    :cond_1
    move v2, v8

    .line 1332
    goto :goto_0

    .line 1347
    .restart local v2       #isAirplaneMode:Z
    :cond_2
    const/16 v6, 0xd

    if-ne v4, v6, :cond_3

    .line 1348
    const-string v6, "WifiApEnabler"

    const-string v8, " Start AP Check : alrey AP enabled "

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V
    invoke-static {v6, v7}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$000(Lcom/android/lgesettings/wifi/WifiApEnabler;Z)V

    .line 1350
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_1

    .line 1352
    :cond_3
    const-string v6, "WifiApEnabler"

    const-string v9, " Start AP Check : now start AP enable "

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v9, "US"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v9, "TMO"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1354
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->isTmusSimCard(Ljava/lang/String;)Z
    invoke-static {v6, v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1600(Lcom/android/lgesettings/wifi/WifiApEnabler;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1355
    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 1357
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v9, 0x7f0816ae

    invoke-static {v6, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1358
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$900(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1359
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1360
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v6, "wifi_saved_state"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1361
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->setUpsellTimer()V
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1700(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    goto :goto_1

    .line 1363
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_4
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->startUpsell()V
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1800(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    goto :goto_1

    .line 1366
    :cond_5
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 1367
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->getbFirstTimeUse()Z
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1900(Lcom/android/lgesettings/wifi/WifiApEnabler;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1368
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1369
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "select"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1370
    const-string v6, "com.lge.upsell"

    const-string v7, "com.lge.upsell.FirstTimeUse"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1371
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    const/16 v7, 0x372

    invoke-virtual {v6, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1375
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->startProvisioningIfNecessary()V
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1300(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    goto/16 :goto_1

    .line 1378
    :cond_7
    const/4 v6, -0x2

    if-ne p2, v6, :cond_0

    .line 1379
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V
    invoke-static {v6, v8}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$000(Lcom/android/lgesettings/wifi/WifiApEnabler;Z)V

    .line 1380
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1383
    if-eqz v2, :cond_8

    .line 1384
    const-string v6, "WifiApEnabler"

    const-string v7, " Start AP Check : alrey AP Airplain Mode "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1390
    :cond_8
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v6, :cond_9

    .line 1391
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$13;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v7}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWifiApEnablerMenu(Landroid/widget/Switch;)Z

    .line 1394
    :cond_9
    const-string v6, "WifiApEnabler"

    const-string v7, "[YHD] alertDialogHandler - BUTTON_NEGATIVE"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
