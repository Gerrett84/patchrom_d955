.class Lcom/lge/camera/receiver/CameraDayDreamReceiver$1;
.super Ljava/lang/Object;
.source "CameraDayDreamReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/receiver/CameraDayDreamReceiver;->finishActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/receiver/CameraDayDreamReceiver;


# direct methods
.method constructor <init>(Lcom/lge/camera/receiver/CameraDayDreamReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lge/camera/receiver/CameraDayDreamReceiver$1;->this$0:Lcom/lge/camera/receiver/CameraDayDreamReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraDayDreamReceiver$1;->this$0:Lcom/lge/camera/receiver/CameraDayDreamReceiver;

    iget-object v0, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraDayDreamReceiver$1;->this$0:Lcom/lge/camera/receiver/CameraDayDreamReceiver;

    iget-object v0, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0, p0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->removePostRunnable(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraDayDreamReceiver$1;->this$0:Lcom/lge/camera/receiver/CameraDayDreamReceiver;

    iget-object v0, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraDayDreamReceiver$1;->this$0:Lcom/lge/camera/receiver/CameraDayDreamReceiver;

    iget-object v0, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->finish()V

    .line 66
    :cond_0
    return-void
.end method
