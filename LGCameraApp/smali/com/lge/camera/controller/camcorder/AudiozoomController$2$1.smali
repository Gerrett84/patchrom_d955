.class Lcom/lge/camera/controller/camcorder/AudiozoomController$2$1;
.super Ljava/lang/Object;
.source "AudiozoomController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/camcorder/AudiozoomController$2;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/AudiozoomController$2;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2$1;->this$1:Lcom/lge/camera/controller/camcorder/AudiozoomController$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 239
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2$1;->this$1:Lcom/lge/camera/controller/camcorder/AudiozoomController$2;

    iget-object v1, v1, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1700(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2$1;->this$1:Lcom/lge/camera/controller/camcorder/AudiozoomController$2;

    iget-object v1, v1, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    #getter for: Lcom/lge/camera/controller/camcorder/AudiozoomController;->mAudiozoomBarLevelMeter:Lcom/lge/camera/components/AudiozoomBarLevelMeter;
    invoke-static {v1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->access$1300(Lcom/lge/camera/controller/camcorder/AudiozoomController;)Lcom/lge/camera/components/AudiozoomBarLevelMeter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/components/AudiozoomBarLevelMeter;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    :cond_0
    return-void

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/AudiozoomController$2$1;->this$1:Lcom/lge/camera/controller/camcorder/AudiozoomController$2;

    iget-object v1, v1, Lcom/lge/camera/controller/camcorder/AudiozoomController$2;->this$0:Lcom/lge/camera/controller/camcorder/AudiozoomController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/camcorder/AudiozoomController;->updateAudioZoomLevelMeter()V

    .line 245
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
