.class public Lcom/android/server/net/BaseNetworkObserverEx;
.super Landroid/net/INetworkManagementEventObserverEx$Stub;
.source "BaseNetworkObserverEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserverEx$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public DnsFailed(Ljava/lang/String;I)V
    .locals 0
    .parameter "host"
    .parameter "errorCode"

    .prologue
    .line 22
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 17
    return-void
.end method

.method public interfaceThrottleStateChanged(Ljava/lang/String;I)V
    .locals 0
    .parameter "iface"
    .parameter "status"

    .prologue
    .line 27
    return-void
.end method
