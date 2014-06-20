.class Lcom/lge/camera/controller/PreviewPanelController$2;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;)V
    .locals 0
    .parameter

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$2;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$2;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1249
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$2;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lge/camera/controller/PreviewPanelController;->access$100(Lcom/lge/camera/controller/PreviewPanelController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1250
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$2;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;
    invoke-static {v0}, Lcom/lge/camera/controller/PreviewPanelController;->access$300(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/ThumbnailController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1251
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$2;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$2;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lge/camera/controller/PreviewPanelController;->access$200(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1252
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$2;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;
    invoke-static {v0}, Lcom/lge/camera/controller/PreviewPanelController;->access$300(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/ThumbnailController;

    move-result-object v0

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController$2;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController$2;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/lge/camera/controller/PreviewPanelController;->access$200(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/lge/camera/components/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    .line 1255
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$2;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->isCamcorderRotation(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1256
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$2;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setEnabled(Z)V

    .line 1267
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$2;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;
    invoke-static {v0}, Lcom/lge/camera/controller/PreviewPanelController;->access$300(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/ThumbnailController;

    move-result-object v0

    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/ThumbnailController;->startTransition(I)V

    .line 1269
    :cond_1
    monitor-exit v1

    .line 1270
    return-void

    .line 1258
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$2;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setEnabled(Z)V

    goto :goto_0

    .line 1269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1261
    :cond_3
    :try_start_1
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thumbnail : mThumbUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController$2;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mThumbImage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController$2;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/lge/camera/controller/PreviewPanelController;->access$200(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$2;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;
    invoke-static {v0}, Lcom/lge/camera/controller/PreviewPanelController;->access$300(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/ThumbnailController;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/lge/camera/components/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    .line 1263
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$2;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
