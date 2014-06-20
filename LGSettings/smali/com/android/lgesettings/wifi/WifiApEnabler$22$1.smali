.class Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiApEnabler$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiApEnabler$22;)V
    .locals 0
    .parameter

    .prologue
    .line 1918
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;->this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1921
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;->this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1922
    .local v2, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1923
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1924
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;->this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #setter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->loopCounting:I
    invoke-static {v3, v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$2102(Lcom/android/lgesettings/wifi/WifiApEnabler;I)I

    .line 1925
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$2202(Z)Z

    .line 1926
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;->this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mTimer:Ljava/util/Timer;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$2300(Lcom/android/lgesettings/wifi/WifiApEnabler;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 1927
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;->this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->startUpsell()V
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1800(Lcom/android/lgesettings/wifi/WifiApEnabler;)V

    .line 1928
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;->this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1930
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;->this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->loopCounting:I
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$2100(Lcom/android/lgesettings/wifi/WifiApEnabler;)I

    move-result v3

    const/16 v4, 0x32

    if-le v3, v4, :cond_3

    .line 1931
    const-string v3, "WifiApEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "T_COUNT Over : loopCounting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;->this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    iget-object v5, v5, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->loopCounting:I
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$2100(Lcom/android/lgesettings/wifi/WifiApEnabler;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;->this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mTimer:Ljava/util/Timer;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$2300(Lcom/android/lgesettings/wifi/WifiApEnabler;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 1937
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;->this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1938
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;->this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-virtual {v3, v7}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 1939
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;->this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->getbFirstTimeUse()Z
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1900(Lcom/android/lgesettings/wifi/WifiApEnabler;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1940
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1941
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "select"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1942
    const-string v3, "com.lge.upsell"

    const-string v4, "com.lge.upsell.FirstTimeUse"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1943
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;->this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/16 v4, 0x372

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1946
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_2

    .line 1947
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;->this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    iget-object v4, v4, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v4}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWifiApEnablerMenu(Landroid/widget/Switch;)Z

    .line 1950
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;->this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #setter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->loopCounting:I
    invoke-static {v3, v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$2102(Lcom/android/lgesettings/wifi/WifiApEnabler;I)I

    .line 1951
    invoke-static {v6}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$2202(Z)Z

    .line 1958
    :goto_0
    return-void

    .line 1954
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;->this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$2108(Lcom/android/lgesettings/wifi/WifiApEnabler;)I

    .line 1955
    const-string v3, "WifiApEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "T_COUNT : loopCounting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$22$1;->this$1:Lcom/android/lgesettings/wifi/WifiApEnabler$22;

    iget-object v5, v5, Lcom/android/lgesettings/wifi/WifiApEnabler$22;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->loopCounting:I
    invoke-static {v5}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$2100(Lcom/android/lgesettings/wifi/WifiApEnabler;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    const-string v3, "WifiApEnabler"

    const-string v4, "Mobile network isn\'t connected. and 50 time loop."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
