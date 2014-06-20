.class Lcom/android/lgesettings/TetherNetworkSettings$25$1;
.super Ljava/lang/Object;
.source "TetherNetworkSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TetherNetworkSettings$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/TetherNetworkSettings$25;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherNetworkSettings$25;)V
    .locals 0
    .parameter

    .prologue
    .line 2209
    iput-object p1, p0, Lcom/android/lgesettings/TetherNetworkSettings$25$1;->this$1:Lcom/android/lgesettings/TetherNetworkSettings$25;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2211
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings$25$1;->this$1:Lcom/android/lgesettings/TetherNetworkSettings$25;

    iget-object v2, v2, Lcom/android/lgesettings/TetherNetworkSettings$25;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2212
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2213
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2214
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings$25$1;->this$1:Lcom/android/lgesettings/TetherNetworkSettings$25;

    iget-object v2, v2, Lcom/android/lgesettings/TetherNetworkSettings$25;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/android/lgesettings/TetherNetworkSettings;->access$2300(Lcom/android/lgesettings/TetherNetworkSettings;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 2215
    const-string v2, "Hoon, USB"

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

    const-string v4, "info.isConnected()1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings$25$1;->this$1:Lcom/android/lgesettings/TetherNetworkSettings$25;

    iget-object v2, v2, Lcom/android/lgesettings/TetherNetworkSettings$25;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #setter for: Lcom/android/lgesettings/TetherNetworkSettings;->mCheckingMobileData:Z
    invoke-static {v2, v5}, Lcom/android/lgesettings/TetherNetworkSettings;->access$2402(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z

    .line 2217
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings$25$1;->this$1:Lcom/android/lgesettings/TetherNetworkSettings$25;

    iget-object v2, v2, Lcom/android/lgesettings/TetherNetworkSettings$25;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    iget-object v3, p0, Lcom/android/lgesettings/TetherNetworkSettings$25$1;->this$1:Lcom/android/lgesettings/TetherNetworkSettings$25;

    iget v3, v3, Lcom/android/lgesettings/TetherNetworkSettings$25;->val$tetherType:I

    #calls: Lcom/android/lgesettings/TetherNetworkSettings;->startUpsell(I)V
    invoke-static {v2, v3}, Lcom/android/lgesettings/TetherNetworkSettings;->access$2500(Lcom/android/lgesettings/TetherNetworkSettings;I)V

    .line 2220
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings$25$1;->this$1:Lcom/android/lgesettings/TetherNetworkSettings$25;

    iget-object v2, v2, Lcom/android/lgesettings/TetherNetworkSettings$25;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->loopCounting:I
    invoke-static {v2}, Lcom/android/lgesettings/TetherNetworkSettings;->access$2600(Lcom/android/lgesettings/TetherNetworkSettings;)I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_2

    .line 2221
    const-string v2, "Hoon, USB"

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

    iget-object v4, p0, Lcom/android/lgesettings/TetherNetworkSettings$25$1;->this$1:Lcom/android/lgesettings/TetherNetworkSettings$25;

    iget-object v4, v4, Lcom/android/lgesettings/TetherNetworkSettings$25;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->loopCounting:I
    invoke-static {v4}, Lcom/android/lgesettings/TetherNetworkSettings;->access$2600(Lcom/android/lgesettings/TetherNetworkSettings;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings$25$1;->this$1:Lcom/android/lgesettings/TetherNetworkSettings$25;

    iget-object v2, v2, Lcom/android/lgesettings/TetherNetworkSettings$25;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/android/lgesettings/TetherNetworkSettings;->access$2300(Lcom/android/lgesettings/TetherNetworkSettings;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 2223
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings$25$1;->this$1:Lcom/android/lgesettings/TetherNetworkSettings$25;

    iget v2, v2, Lcom/android/lgesettings/TetherNetworkSettings$25;->val$tetherType:I

    if-ne v2, v6, :cond_1

    .line 2224
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings$25$1;->this$1:Lcom/android/lgesettings/TetherNetworkSettings$25;

    iget-object v2, v2, Lcom/android/lgesettings/TetherNetworkSettings$25;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;
    invoke-static {v2}, Lcom/android/lgesettings/TetherNetworkSettings;->access$100(Lcom/android/lgesettings/TetherNetworkSettings;)Lcom/android/lgesettings/SettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 2226
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings$25$1;->this$1:Lcom/android/lgesettings/TetherNetworkSettings$25;

    iget-object v2, v2, Lcom/android/lgesettings/TetherNetworkSettings$25;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #setter for: Lcom/android/lgesettings/TetherNetworkSettings;->mCheckingMobileData:Z
    invoke-static {v2, v5}, Lcom/android/lgesettings/TetherNetworkSettings;->access$2402(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z

    .line 2233
    :goto_0
    return-void

    .line 2230
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings$25$1;->this$1:Lcom/android/lgesettings/TetherNetworkSettings$25;

    iget-object v2, v2, Lcom/android/lgesettings/TetherNetworkSettings$25;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    invoke-static {v2}, Lcom/android/lgesettings/TetherNetworkSettings;->access$2608(Lcom/android/lgesettings/TetherNetworkSettings;)I

    .line 2231
    const-string v2, "Hoon, USB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T_COUNT : loopCounting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/TetherNetworkSettings$25$1;->this$1:Lcom/android/lgesettings/TetherNetworkSettings$25;

    iget-object v4, v4, Lcom/android/lgesettings/TetherNetworkSettings$25;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->loopCounting:I
    invoke-static {v4}, Lcom/android/lgesettings/TetherNetworkSettings;->access$2600(Lcom/android/lgesettings/TetherNetworkSettings;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
