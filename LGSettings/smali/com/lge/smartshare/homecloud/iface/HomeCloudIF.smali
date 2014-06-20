.class public Lcom/lge/smartshare/homecloud/iface/HomeCloudIF;
.super Ljava/lang/Object;
.source "HomeCloudIF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static regiterHomeCloudBroadcast(Landroid/content/Context;Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;)Landroid/content/BroadcastReceiver;
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 777
    if-nez p0, :cond_0

    .line 778
    const/4 v1, 0x0

    .line 881
    :goto_0
    return-object v1

    .line 782
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 783
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.lge.smartshare.homecloud.intent.action.create.account"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 784
    const-string v2, "com.lge.smartshare.homecloud.intent.action.delete.account"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 785
    const-string v2, "com.lge.smartshare.homecloud.intent.action.cloud.server.added"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 786
    const-string v2, "com.lge.smartshare.homecloud.intent.action.cloud.server.removed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 787
    const-string v2, "com.lge.smartshare.homecloud.intent.action.disconnecting"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 788
    const-string v2, "com.lge.smartshare.homecloud.intent.action.disconnected"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 789
    const-string v2, "com.lge.smartshare.homecloud.intent.action.connecting"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 790
    const-string v2, "com.lge.smartshare.homecloud.intent.action.connected"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 791
    const-string v2, "com.lge.smartshare.homecloud.intent.action.ra.server.connecting"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 792
    const-string v2, "com.lge.smartshare.homecloud.intent.action.ra.server.connected"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 793
    const-string v2, "com.lge.smartshare.homecloud.intent.action.show.info.changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 794
    const-string v2, "com.lge.smartshare.homecloud.intent.action.mobile.network.changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 795
    const-string v2, "com.lge.smartshare.homecloud.intent.action.login.result"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 796
    const-string v2, "com.lge.smartshare.homecloud.intent.action.login.retry.result"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 797
    const-string v2, "com.lge.smartshare.homecloud.intent.action.logout.result"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 798
    const-string v2, "com.lge.smartshare.homecloud.intent.action.select.server.result"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 799
    const-string v2, "com.lge.smartshare.homecloud.intent.action.request.email.key"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 800
    const-string v2, "com.lge.smartshare.homecloud.intent.action.send.email.key"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 801
    const-string v2, "com.lge.smartshare.homecloud.intent.action.request.service.terms"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 802
    const-string v2, "com.lge.smartshare.homecloud.intent.action.agree.service.terms"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 804
    new-instance v1, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;

    invoke-direct {v1, p1}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;-><init>(Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;)V

    .line 878
    .local v1, homecloudReceiver:Landroid/content/BroadcastReceiver;
    :try_start_0
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 879
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static unregiterHomeCloudBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "context"
    .parameter "homecloudReceiver"

    .prologue
    .line 885
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 891
    :catch_0
    move-exception v0

    goto :goto_0
.end method
