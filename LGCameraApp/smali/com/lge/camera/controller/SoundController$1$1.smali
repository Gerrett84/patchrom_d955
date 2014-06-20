.class Lcom/lge/camera/controller/SoundController$1$1;
.super Ljava/lang/Object;
.source "SoundController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SoundController$1;->onLoadComplete(Landroid/media/SoundPool;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/SoundController$1;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SoundController$1;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lge/camera/controller/SoundController$1$1;->this$1:Lcom/lge/camera/controller/SoundController$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1$1;->this$1:Lcom/lge/camera/controller/SoundController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1$1;->this$1:Lcom/lge/camera/controller/SoundController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1$1;->this$1:Lcom/lge/camera/controller/SoundController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "SoundControllerLockKey"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable(Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method
