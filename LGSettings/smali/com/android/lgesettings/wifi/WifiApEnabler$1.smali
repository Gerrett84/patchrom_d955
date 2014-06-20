.class Lcom/android/lgesettings/wifi/WifiApEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApEnabler.java"


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
    .line 190
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 193
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ATT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v9

    const-string v10, "US"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 197
    const-string v9, "com.android.lgesettings.EntitlementCheckService.WIFI_ENTITLEMENT_CHECK_OK"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 198
    const-string v9, "WifiApEnabler"

    const-string v10, "WIFI_ENTITLEMENT_CHECK_OK recieved"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 217
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TMO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v9

    const-string v10, "US"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 218
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 220
    .local v3, cr:Landroid/content/ContentResolver;
    const-string v9, "com.lge.upsell.Upsell.UPSELL_CHECK_SUCCESS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 221
    const-string v9, "WifiApEnabler"

    const-string v10, "000000000000000 Upsell UPSELL_CHECK_SUCCESS recieved 0000000000"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v5, 0x1

    .line 224
    .local v5, isAirplaneMode:Z
    :goto_1
    const-string v9, "WifiApEnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "isAirplaneMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-nez v5, :cond_1

    .line 226
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 228
    :cond_1
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$302(Z)Z

    .line 229
    const-string v9, "upsell_check_ongoing"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v5           #isAirplaneMode:Z
    :cond_2
    :goto_2
    :pswitch_0
    const-string v9, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 289
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    const-string v10, "wifi_state"

    const/16 v11, 0xe

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V
    invoke-static {v9, v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$500(Lcom/android/lgesettings/wifi/WifiApEnabler;I)V

    .line 318
    :cond_3
    :goto_3
    return-void

    .line 200
    :cond_4
    const-string v9, "com.android.lgesettings.EntitlementCheckService.WIFI_ENTITLEMENT_CHECK_FAILURE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 201
    const-string v9, "WifiApEnabler"

    const-string v10, "WIFI_ENTITLEMENT_CHECK_FAILURE recieved"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 203
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    const/4 v10, 0x0

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V
    invoke-static {v9, v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$000(Lcom/android/lgesettings/wifi/WifiApEnabler;Z)V

    .line 204
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 205
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 207
    sget-boolean v9, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v9, :cond_0

    .line 208
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v9

    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWifiApEnablerMenu(Landroid/widget/Switch;)Z

    goto/16 :goto_0

    .line 223
    .restart local v3       #cr:Landroid/content/ContentResolver;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 232
    :cond_6
    const-string v9, "com.lge.upsell.Upsell.UPSELL_CHECK_FAIL"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 233
    const-string v9, "WifiApEnabler"

    const-string v10, "000000000000000 Upsell UPSELL_CHECK_FAIL recieved 0000000000"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    const/4 v10, 0x0

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V
    invoke-static {v9, v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$000(Lcom/android/lgesettings/wifi/WifiApEnabler;Z)V

    .line 235
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 236
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 237
    const-string v9, "upsell_check_ongoing"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 239
    :cond_7
    const-string v9, "com.lge.upsell.Upsell.UPSELL_STOP"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 240
    const-string v9, "status"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 241
    .local v8, upsellStatus:I
    const-string v9, "WifiApEnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UPSELL_SVC_STOP got : upsellStatus = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    packed-switch v8, :pswitch_data_0

    .line 267
    const-string v9, "upsell_check_ongoing"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 245
    :pswitch_1
    const-string v9, "WifiApEnabler"

    const-string v10, "UPSELL_SVC_GOTO_NOSVC "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v9, "upsell_check_ongoing"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    const/4 v10, 0x0

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V
    invoke-static {v9, v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$000(Lcom/android/lgesettings/wifi/WifiApEnabler;Z)V

    .line 248
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_2

    .line 252
    :pswitch_2
    const-string v9, "WifiApEnabler"

    const-string v10, "UPSELL_SVC_GOTO_UPGRADE "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v9, "upsell_check_ongoing"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    const/4 v10, 0x0

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V
    invoke-static {v9, v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$000(Lcom/android/lgesettings/wifi/WifiApEnabler;Z)V

    .line 255
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 256
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_2

    .line 263
    :pswitch_3
    const-string v9, "WifiApEnabler"

    const-string v10, "UPSELL_SVC_STARTED "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 271
    .end local v8           #upsellStatus:I
    :cond_8
    const-string v9, "com.lge.upsell.Upsell.HELP_VAL"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 272
    const-string v9, "HelpValue"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 273
    .local v7, s:Ljava/lang/String;
    const-string v9, "WifiApEnabler"

    const-string v10, "000000000000000 Upsell UPSELL_SET_HELP_VALUE recieved 0000000000"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz v7, :cond_2

    .line 276
    const-string v9, "1"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 277
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    const/4 v10, 0x1

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->setbFirstTimeUse(I)V
    invoke-static {v9, v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$400(Lcom/android/lgesettings/wifi/WifiApEnabler;I)V

    goto/16 :goto_2

    .line 279
    :cond_9
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    const/4 v10, 0x0

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->setbFirstTimeUse(I)V
    invoke-static {v9, v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$400(Lcom/android/lgesettings/wifi/WifiApEnabler;I)V

    goto/16 :goto_2

    .line 291
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v7           #s:Ljava/lang/String;
    :cond_a
    const-string v9, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 292
    const-string v9, "availableArray"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 294
    .local v2, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "activeArray"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 296
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "erroredArray"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 298
    .local v4, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v12

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    invoke-static {v9, v10, v11, v12}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$600(Lcom/android/lgesettings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 299
    .end local v1           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 301
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->enableWifiSwitch()V
    invoke-static {v9}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$700(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    goto/16 :goto_3

    .line 304
    :cond_c
    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 305
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ATT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v9

    const-string v10, "US"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 306
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mDelayedApEnabled:Z
    invoke-static {v9}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$800(Lcom/android/lgesettings/wifi/WifiApEnabler;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 307
    const-string v9, "wifi_state"

    const/4 v10, 0x4

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 309
    .local v6, mWifiState:I
    if-eqz v6, :cond_d

    const/4 v9, 0x1

    if-ne v6, v9, :cond_3

    .line 311
    :cond_d
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    const/4 v10, 0x0

    #setter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mDelayedApEnabled:Z
    invoke-static {v9, v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$802(Lcom/android/lgesettings/wifi/WifiApEnabler;Z)Z

    .line 312
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto/16 :goto_3

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
