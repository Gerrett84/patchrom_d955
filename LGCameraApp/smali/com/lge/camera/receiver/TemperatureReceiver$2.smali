.class Lcom/lge/camera/receiver/TemperatureReceiver$2;
.super Ljava/lang/Object;
.source "TemperatureReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/receiver/TemperatureReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/receiver/TemperatureReceiver;


# direct methods
.method constructor <init>(Lcom/lge/camera/receiver/TemperatureReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lge/camera/receiver/TemperatureReceiver$2;->this$0:Lcom/lge/camera/receiver/TemperatureReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/camera/receiver/TemperatureReceiver$2;->this$0:Lcom/lge/camera/receiver/TemperatureReceiver;

    iget-object v0, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0, p0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->removePostRunnable(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/lge/camera/receiver/TemperatureReceiver$2;->this$0:Lcom/lge/camera/receiver/TemperatureReceiver;

    iget-object v0, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/receiver/TemperatureReceiver$2;->this$0:Lcom/lge/camera/receiver/TemperatureReceiver;

    iget-object v1, v1, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b025c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    return-void
.end method
