.class public abstract Lcom/lge/smartshare/iface/client/ISmartShareManagerClient;
.super Ljava/lang/Object;
.source "ISmartShareManagerClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBadConnection()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public onCheckSupprotContent(Z)V
    .locals 0
    .parameter "isSupported"

    .prologue
    .line 13
    return-void
.end method

.method public onCompletion()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public onGetBuaKeyEnd()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public onGetBuaKeyStart()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public onGetVolume(ILcom/lge/smartshare/iface/aidl/DataVolumeInfo;)V
    .locals 0
    .parameter "rstCode"
    .parameter "volumeInfo"

    .prologue
    .line 20
    return-void
.end method

.method public onHomecloudConnected()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onHomecloudConnecting()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public onHomecloudCreateAccount()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onHomecloudDeleteAccount()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onHomecloudDisconnected(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 50
    return-void
.end method

.method public onHomecloudDisconnecting()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onHomecloudRAServerAdded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "name"

    .prologue
    .line 45
    return-void
.end method

.method public onHomecloudRAServerRemoved(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 46
    return-void
.end method

.method public onHomecloudShowInfoChanged([Ljava/lang/String;)V
    .locals 0
    .parameter "types"

    .prologue
    .line 51
    return-void
.end method

.method public onHomecloudUseMobileNetworkChanged(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 52
    return-void
.end method

.method public onInitialized(Z)V
    .locals 0
    .parameter "isUnmatched"

    .prologue
    .line 34
    return-void
.end method

.method public onLostSelectedRenderer()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public onPause(I)V
    .locals 0
    .parameter "rstCode"

    .prologue
    .line 18
    return-void
.end method

.method public onPlay(I)V
    .locals 0
    .parameter "rstCode"

    .prologue
    .line 16
    return-void
.end method

.method public onPlayerStatusUpdate(Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;)V
    .locals 0
    .parameter "playerStatus"

    .prologue
    .line 27
    return-void
.end method

.method public onReady(II)V
    .locals 0
    .parameter "readyCode"
    .parameter "rstCode"

    .prologue
    .line 23
    return-void
.end method

.method public onReceiveRendererIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "rendererId"
    .parameter "icon"

    .prologue
    .line 15
    return-void
.end method

.method public onRendererAdded(Lcom/lge/smartshare/iface/aidl/DataRenderer;)V
    .locals 0
    .parameter "renderer"

    .prologue
    .line 24
    return-void
.end method

.method public onRendererRemoved(Ljava/lang/String;)V
    .locals 0
    .parameter "rendererId"

    .prologue
    .line 25
    return-void
.end method

.method public onRendererUsageChanged(Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;)V
    .locals 0
    .parameter "rendererUsageInfo"

    .prologue
    .line 41
    return-void
.end method

.method public onSeek(I)V
    .locals 0
    .parameter "rstCode"

    .prologue
    .line 19
    return-void
.end method

.method public onSetVolume(I)V
    .locals 0
    .parameter "rstCode"

    .prologue
    .line 21
    return-void
.end method

.method public onStop(I)V
    .locals 0
    .parameter "rstCode"

    .prologue
    .line 17
    return-void
.end method

.method public onTerminated(Z)V
    .locals 0
    .parameter "isExceptional"

    .prologue
    .line 35
    return-void
.end method

.method public onWFDAdded(Lcom/lge/smartshare/iface/aidl/DataWFDDevice;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 37
    return-void
.end method

.method public onWFDInitCompleted(I)V
    .locals 0
    .parameter "rstCode"

    .prologue
    .line 39
    return-void
.end method

.method public onWFDRemoved(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 38
    return-void
.end method
