.class Lcom/android/lgesettings/TetherSettings$12$1;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TetherSettings$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/TetherSettings$12;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherSettings$12;)V
    .locals 0
    .parameter

    .prologue
    .line 2337
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings$12$1;->this$1:Lcom/android/lgesettings/TetherSettings$12;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2340
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings$12$1;->this$1:Lcom/android/lgesettings/TetherSettings$12;

    iget-object v2, v2, Lcom/android/lgesettings/TetherSettings$12;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2341
    .local v1, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2342
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2343
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings$12$1;->this$1:Lcom/android/lgesettings/TetherSettings$12;

    iget-object v2, v2, Lcom/android/lgesettings/TetherSettings$12;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/android/lgesettings/TetherSettings;->access$2600(Lcom/android/lgesettings/TetherSettings;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 2344
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings$12$1;->this$1:Lcom/android/lgesettings/TetherSettings$12;

    iget-object v2, v2, Lcom/android/lgesettings/TetherSettings$12;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->startUpsell(I)V
    invoke-static {v2, v5}, Lcom/android/lgesettings/TetherSettings;->access$1800(Lcom/android/lgesettings/TetherSettings;I)V

    .line 2345
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings$12$1;->this$1:Lcom/android/lgesettings/TetherSettings$12;

    iget-object v2, v2, Lcom/android/lgesettings/TetherSettings$12;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/TetherSettings;->access$2100(Lcom/android/lgesettings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2347
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings$12$1;->this$1:Lcom/android/lgesettings/TetherSettings$12;

    iget-object v2, v2, Lcom/android/lgesettings/TetherSettings$12;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->loopCounting:I
    invoke-static {v2}, Lcom/android/lgesettings/TetherSettings;->access$2700(Lcom/android/lgesettings/TetherSettings;)I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_2

    .line 2348
    const-string v2, "Hoon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "T_COUNT Over : loopCounting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/TetherSettings$12$1;->this$1:Lcom/android/lgesettings/TetherSettings$12;

    iget-object v4, v4, Lcom/android/lgesettings/TetherSettings$12;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->loopCounting:I
    invoke-static {v4}, Lcom/android/lgesettings/TetherSettings;->access$2700(Lcom/android/lgesettings/TetherSettings;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings$12$1;->this$1:Lcom/android/lgesettings/TetherSettings$12;

    iget-object v2, v2, Lcom/android/lgesettings/TetherSettings$12;->this$0:Lcom/android/lgesettings/TetherSettings;

    #setter for: Lcom/android/lgesettings/TetherSettings;->mInit:Z
    invoke-static {v2, v5}, Lcom/android/lgesettings/TetherSettings;->access$2802(Lcom/android/lgesettings/TetherSettings;Z)Z

    .line 2351
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings$12$1;->this$1:Lcom/android/lgesettings/TetherSettings$12;

    iget-object v2, v2, Lcom/android/lgesettings/TetherSettings$12;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-virtual {v2, v5}, Lcom/android/lgesettings/TetherSettings;->setFirstFlagPreference(Z)V

    .line 2353
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings$12$1;->this$1:Lcom/android/lgesettings/TetherSettings$12;

    iget-object v2, v2, Lcom/android/lgesettings/TetherSettings$12;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/android/lgesettings/TetherSettings;->access$2600(Lcom/android/lgesettings/TetherSettings;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 2354
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings$12$1;->this$1:Lcom/android/lgesettings/TetherSettings$12;

    iget-object v2, v2, Lcom/android/lgesettings/TetherSettings$12;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/TetherSettings;->access$2100(Lcom/android/lgesettings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2357
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_1

    .line 2358
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/TetherSettings$12$1;->this$1:Lcom/android/lgesettings/TetherSettings$12;

    iget-object v3, v3, Lcom/android/lgesettings/TetherSettings$12;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/lgesettings/TetherSettings;->access$2100(Lcom/android/lgesettings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->setWifiApEnablerMenu(Landroid/preference/Preference;)Z

    .line 2366
    :cond_1
    :goto_0
    return-void

    .line 2363
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/TetherSettings$12$1;->this$1:Lcom/android/lgesettings/TetherSettings$12;

    iget-object v2, v2, Lcom/android/lgesettings/TetherSettings$12;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-static {v2}, Lcom/android/lgesettings/TetherSettings;->access$2708(Lcom/android/lgesettings/TetherSettings;)I

    .line 2364
    const-string v2, "Hoon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T_COUNT : loopCounting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/TetherSettings$12$1;->this$1:Lcom/android/lgesettings/TetherSettings$12;

    iget-object v4, v4, Lcom/android/lgesettings/TetherSettings$12;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->loopCounting:I
    invoke-static {v4}, Lcom/android/lgesettings/TetherSettings;->access$2700(Lcom/android/lgesettings/TetherSettings;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
