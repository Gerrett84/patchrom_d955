.class Lcom/lge/camera/CameraMediator$5;
.super Ljava/lang/Object;
.source "CameraMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/CameraMediator;->removeFreePanoramaBlackBg()V
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
    .line 1719
    iput-object p1, p0, Lcom/lge/camera/CameraMediator$5;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/lge/camera/CameraMediator$5;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 1722
    iget-object v0, p0, Lcom/lge/camera/CameraMediator$5;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview;->setTranslationY(F)V

    .line 1723
    iget-object v0, p0, Lcom/lge/camera/CameraMediator$5;->this$0:Lcom/lge/camera/CameraMediator;

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1724
    return-void
.end method
