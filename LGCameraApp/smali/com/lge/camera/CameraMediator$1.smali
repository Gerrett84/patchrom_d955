.class Lcom/lge/camera/CameraMediator$1;
.super Ljava/lang/Object;
.source "CameraMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/CameraMediator;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CameraMediator;


# direct methods
.method constructor <init>(Lcom/lge/camera/CameraMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 236
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 237
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v1, v1, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v1}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewRequestCode()I

    move-result v0

    .line 241
    .local v0, requestCode:I
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v1, v1, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v1}, Lcom/lge/camera/Mediator$ActivityBridge;->setPostviewRequestInitCode()V

    .line 242
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v2, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    const v3, 0x7f0b0175

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v2, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    const v3, 0x7f0b02d6

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
