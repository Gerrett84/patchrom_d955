.class Lcom/android/server/QcConnectivityService$Injector;
.super Ljava/lang/Object;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static startUsingNetworkFeature(I)V
    .locals 3
    .parameter "usedNetworkType"

    .prologue
    .line 144
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lmiui/net/FirewallManager;->onStartUsingNetworkFeature(III)V

    .line 145
    return-void
.end method

.method public static stopUsingNetworkFeature(Lcom/android/server/QcConnectivityService$FeatureUser;I)V
    .locals 3
    .parameter "u"
    .parameter "usedNetworkType"

    .prologue
    .line 152
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/QcConnectivityService$FeatureUser;->mUid:I

    iget v2, p0, Lcom/android/server/QcConnectivityService$FeatureUser;->mPid:I

    invoke-virtual {v0, v1, v2, p1}, Lmiui/net/FirewallManager;->onStopUsingNetworkFeature(III)V

    .line 153
    return-void
.end method
