.class public abstract Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;
.super Ljava/lang/Object;
.source "HomeCloudIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/smartshare/homecloud/iface/HomeCloudIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IHomecloudListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 730
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHomecloudAgreeServiceTermsResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 750
    return-void
.end method

.method public onHomecloudConnected([Lcom/lge/smartshare/homecloud/iface/DataCloudServer;)V
    .locals 0
    .parameter "servers"

    .prologue
    .line 736
    return-void
.end method

.method public onHomecloudConnecting()V
    .locals 0

    .prologue
    .line 735
    return-void
.end method

.method public onHomecloudCreateAccount()V
    .locals 0

    .prologue
    .line 731
    return-void
.end method

.method public onHomecloudDeleteAccount()V
    .locals 0

    .prologue
    .line 732
    return-void
.end method

.method public onHomecloudDisconnected(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 738
    return-void
.end method

.method public onHomecloudDisconnecting()V
    .locals 0

    .prologue
    .line 737
    return-void
.end method

.method public onHomecloudLoginResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 743
    return-void
.end method

.method public onHomecloudLoginRetryResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 744
    return-void
.end method

.method public onHomecloudLogoutResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 745
    return-void
.end method

.method public onHomecloudRAServerAdded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "name"

    .prologue
    .line 733
    return-void
.end method

.method public onHomecloudRAServerConnected(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 740
    return-void
.end method

.method public onHomecloudRAServerConnecting()V
    .locals 0

    .prologue
    .line 739
    return-void
.end method

.method public onHomecloudRAServerRemoved(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 734
    return-void
.end method

.method public onHomecloudRequestEmailKeyResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 747
    return-void
.end method

.method public onHomecloudRequestServiceTermsResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 749
    return-void
.end method

.method public onHomecloudSelectServerResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 746
    return-void
.end method

.method public onHomecloudSendEmailKeyResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 748
    return-void
.end method

.method public onHomecloudShowInfoChanged([Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 741
    return-void
.end method

.method public onHomecloudUseMobileNetworkChanged(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 742
    return-void
.end method
