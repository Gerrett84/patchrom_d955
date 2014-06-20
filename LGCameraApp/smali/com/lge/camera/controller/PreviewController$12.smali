.class Lcom/lge/camera/controller/PreviewController$12;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewController;->setOtherLayoutParam(IIILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewController;

.field final synthetic val$previewSizeOnScreen:[I


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewController;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2047
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$12;->this$0:Lcom/lge/camera/controller/PreviewController;

    iput-object p2, p0, Lcom/lge/camera/controller/PreviewController$12;->val$previewSizeOnScreen:[I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$12;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 2050
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$12;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$12;->val$previewSizeOnScreen:[I

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMultiWindowAFView([I)V

    .line 2051
    return-void
.end method
