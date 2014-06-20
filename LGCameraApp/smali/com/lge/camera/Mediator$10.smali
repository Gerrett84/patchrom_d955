.class Lcom/lge/camera/Mediator$10;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/Mediator;->updateNavigationBarShape()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/Mediator;


# direct methods
.method constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter

    .prologue
    .line 4397
    iput-object p1, p0, Lcom/lge/camera/Mediator$10;->this$0:Lcom/lge/camera/Mediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x12c

    .line 4399
    iget-object v3, p0, Lcom/lge/camera/Mediator$10;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 4400
    iget-object v3, p0, Lcom/lge/camera/Mediator$10;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4415
    :goto_0
    return-void

    .line 4404
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/Mediator$10;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v2

    .line 4405
    .local v2, sizeOnScreenString:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v1

    .line 4406
    .local v1, previewSizeOnScreen:[I
    iget-object v3, p0, Lcom/lge/camera/Mediator$10;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/lge/camera/util/AppControlUtil;->checkNavigationBarTransparent(Landroid/content/Context;[I)Z

    move-result v0

    .line 4408
    .local v0, isTransparent:Z
    iget-object v3, p0, Lcom/lge/camera/Mediator$10;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/lge/camera/util/AppControlUtil;->setTransparentNavigationBar(Landroid/app/Activity;Z)V

    .line 4409
    iget-object v3, p0, Lcom/lge/camera/Mediator$10;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/lge/camera/util/AppControlUtil;->setNavigationBg(Landroid/app/Activity;Z)V

    .line 4410
    iget-object v3, p0, Lcom/lge/camera/Mediator$10;->this$0:Lcom/lge/camera/Mediator;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->isCamcorderRotation(Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4411
    iget-object v3, p0, Lcom/lge/camera/Mediator$10;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/Mediator$10;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getRecordingDegree()I

    move-result v4

    invoke-static {v3, v4, v5}, Lcom/lge/camera/util/AppControlUtil;->rotateNavigationBarIcon(Landroid/app/Activity;II)V

    goto :goto_0

    .line 4413
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/Mediator$10;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/Mediator$10;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v4

    invoke-static {v3, v4, v5}, Lcom/lge/camera/util/AppControlUtil;->rotateNavigationBarIcon(Landroid/app/Activity;II)V

    goto :goto_0
.end method
