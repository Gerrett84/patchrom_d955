.class Lcom/lge/camera/CamcorderMediator$1;
.super Ljava/lang/Object;
.source "CamcorderMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/CamcorderMediator;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CamcorderMediator;


# direct methods
.method constructor <init>(Lcom/lge/camera/CamcorderMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 193
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1, p0}, Lcom/lge/camera/CamcorderMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 194
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget-object v1, v1, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v1}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewRequestCode()I

    move-result v0

    .line 198
    .local v0, requestCode:I
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget-object v1, v1, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v1}, Lcom/lge/camera/Mediator$ActivityBridge;->setPostviewRequestInitCode()V

    .line 199
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 201
    :pswitch_0
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    const v3, 0x7f0b0175

    invoke-virtual {v2, v3}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/CamcorderMediator;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
