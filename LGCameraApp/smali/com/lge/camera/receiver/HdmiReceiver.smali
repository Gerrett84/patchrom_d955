.class public Lcom/lge/camera/receiver/HdmiReceiver;
.super Lcom/lge/camera/receiver/CameraBroadCastReceiver;
.source "HdmiReceiver.java"


# instance fields
.field public final DualDisplayConnectedEvent:Ljava/lang/String;

.field public final HDMICableConnectedEvent:Ljava/lang/String;

.field public final HDMICableConnectedEventForOMAP:Ljava/lang/String;

.field public final HDMICableConnectedEventFornVidia:Ljava/lang/String;

.field public final HDMICableDisconnectedEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V
    .locals 1
    .parameter "bridge"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    .line 15
    const-string v0, "android.intent.action.HDMI_PLUG"

    iput-object v0, p0, Lcom/lge/camera/receiver/HdmiReceiver;->HDMICableConnectedEventForOMAP:Ljava/lang/String;

    .line 16
    const-string v0, "HDMI_CABLE_CONNECTED"

    iput-object v0, p0, Lcom/lge/camera/receiver/HdmiReceiver;->HDMICableConnectedEvent:Ljava/lang/String;

    .line 17
    const-string v0, "HDMI_CABLE_DISCONNECTED"

    iput-object v0, p0, Lcom/lge/camera/receiver/HdmiReceiver;->HDMICableDisconnectedEvent:Ljava/lang/String;

    .line 18
    const-string v0, "android.intent.action.HDMI_AUDIO_PLUG"

    iput-object v0, p0, Lcom/lge/camera/receiver/HdmiReceiver;->HDMICableConnectedEventFornVidia:Ljava/lang/String;

    .line 20
    const-string v0, "android.intent.action.DUALDISPLAY"

    iput-object v0, p0, Lcom/lge/camera/receiver/HdmiReceiver;->DualDisplayConnectedEvent:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private DualDisplayConnectedAction()V
    .locals 3

    .prologue
    .line 85
    const-string v1, "CameraApp"

    const-string v2, "DualDisplayConnectedAction"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHDMI_MHL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    const-string v1, "CameraApp"

    const-string v2, "It can support HDMI/MHL!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const v2, 0x7f0b0037

    invoke-interface {v1, v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, strErrorCannotUseDDmode:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/camera/util/Common;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->finish()V

    goto :goto_0
.end method

.method private DualDisplayDisconnectedAction()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "CameraApp"

    const-string v1, "DualDisplayDisconnectedAction"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHDMI_MHL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    :cond_0
    return-void
.end method

.method private HdmiConnectedAction()V
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHDMI_MHL()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const-string v1, "CameraApp"

    const-string v2, "It can support HDMI/MHL!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const v2, 0x7f0b0036

    invoke-interface {v1, v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, strErrorCannotUseHDMI:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/camera/util/Common;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->finish()V

    goto :goto_0
.end method

.method private HdmiDisconnectedAction()V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHDMI_MHL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "CameraApp"

    const-string v1, "It can support HDMI/MHL!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    const-string v2, "CameraApp"

    const-string v3, "mHdmiReciever RECEIVER IN"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, action:Ljava/lang/String;
    const-string v2, "HDMI_CABLE_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    const-string v2, "CameraApp"

    const-string v3, "HDMICableConnectedEvent IN"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/lge/camera/receiver/HdmiReceiver;->HdmiConnectedAction()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const-string v2, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    const-string v2, "CameraApp"

    const-string v3, "HDMICable DisconnectedEvent IN"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/lge/camera/receiver/HdmiReceiver;->HdmiDisconnectedAction()V

    goto :goto_0

    .line 38
    :cond_2
    const-string v2, "android.intent.action.HDMI_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    const-string v2, "CameraApp"

    const-string v3, "HDMICableConnectedEvent IN"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 41
    .local v1, state:I
    if-ne v1, v5, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/lge/camera/receiver/HdmiReceiver;->HdmiConnectedAction()V

    goto :goto_0

    .line 44
    .end local v1           #state:I
    :cond_3
    const-string v2, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 45
    const-string v2, "CameraApp"

    const-string v3, "HDMICableConnectedEventFornVidia IN"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 47
    .restart local v1       #state:I
    if-ne v1, v5, :cond_4

    .line 48
    invoke-direct {p0}, Lcom/lge/camera/receiver/HdmiReceiver;->HdmiConnectedAction()V

    goto :goto_0

    .line 49
    :cond_4
    if-nez v1, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/lge/camera/receiver/HdmiReceiver;->HdmiDisconnectedAction()V

    goto :goto_0

    .line 52
    .end local v1           #state:I
    :cond_5
    const-string v2, "android.intent.action.DUALDISPLAY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 53
    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 54
    .local v1, state:Z
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dual Display Intent received, state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    if-eqz v1, :cond_6

    .line 56
    invoke-direct {p0}, Lcom/lge/camera/receiver/HdmiReceiver;->DualDisplayConnectedAction()V

    goto :goto_0

    .line 58
    :cond_6
    invoke-direct {p0}, Lcom/lge/camera/receiver/HdmiReceiver;->DualDisplayDisconnectedAction()V

    goto :goto_0

    .line 61
    .end local v1           #state:Z
    :cond_7
    const-string v2, "CameraApp"

    const-string v3, "other HDMI RCVR IN"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
