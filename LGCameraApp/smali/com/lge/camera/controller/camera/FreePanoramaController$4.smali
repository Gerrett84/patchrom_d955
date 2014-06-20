.class Lcom/lge/camera/controller/camera/FreePanoramaController$4;
.super Ljava/lang/Object;
.source "FreePanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/FreePanoramaController;->showGuideText(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

.field final synthetic val$isVisible:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/FreePanoramaController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$4;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$4;->val$isVisible:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$4;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1700(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 708
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$4;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1800(Lcom/lge/camera/controller/camera/FreePanoramaController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 716
    :goto_0
    return-void

    .line 712
    :cond_0
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$4;->val$isVisible:Z

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$4;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$4;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #getter for: Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1900(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    #calls: Lcom/lge/camera/controller/camera/FreePanoramaController;->startRotateGuideText(I)V
    invoke-static {v0, v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$2000(Lcom/lge/camera/controller/camera/FreePanoramaController;I)V

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$4;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    #getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mFreePanoramaStopGuide:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1800(Lcom/lge/camera/controller/camera/FreePanoramaController;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$4;->val$isVisible:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method
