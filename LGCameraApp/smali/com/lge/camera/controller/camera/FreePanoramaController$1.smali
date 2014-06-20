.class Lcom/lge/camera/controller/camera/FreePanoramaController$1;
.super Ljava/lang/Object;
.source "FreePanoramaController.java"

# interfaces
.implements Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/FreePanoramaController;->initEngine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/FreePanoramaController;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderPreview(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;)V
    .locals 5
    .parameter "result_info"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$000(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    move-result-object v1

    iget v2, p1, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mAttachStatus:I

    invoke-virtual {v1, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setStatus(I)V

    .line 214
    iget v1, p1, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mImageID:I

    if-ltz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$100(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->playFreePanoramaShutterSound()V

    .line 221
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 222
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 223
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$300(Lcom/lge/camera/controller/camera/FreePanoramaController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 225
    return-void

    .line 216
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    iget v1, p1, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mImageID:I

    if-lt v1, v4, :cond_0

    .line 217
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleTakingGuide(Z)V

    .line 218
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #calls: Lcom/lge/camera/controller/camera/FreePanoramaController;->showGuideText(Z)V
    invoke-static {v1, v4}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$200(Lcom/lge/camera/controller/camera/FreePanoramaController;Z)V

    goto :goto_0
.end method
