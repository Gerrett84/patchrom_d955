.class Lcom/lge/camera/CameraMediator$4;
.super Ljava/lang/Object;
.source "CameraMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/CameraMediator;->showFreePanoramaBlackBg()V
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
    .line 1702
    iput-object p1, p0, Lcom/lge/camera/CameraMediator$4;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1704
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$4;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 1705
    const/4 v0, 0x0

    .line 1707
    .local v0, lcdHeight:F
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$4;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1708
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$4;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0009

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    int-to-float v0, v1

    .line 1712
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$4;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/CameraPreview;->setTranslationY(F)V

    .line 1713
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$4;->this$0:Lcom/lge/camera/CameraMediator;

    const v2, 0x7f09008b

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1714
    return-void

    .line 1710
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$4;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0008

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    int-to-float v0, v1

    goto :goto_0
.end method
