.class Lcom/lge/camera/Mediator$4;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/Mediator;->checkAutoReviewForQuickView()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/Mediator;

.field final synthetic val$autoReviewDuration:J


# direct methods
.method constructor <init>(Lcom/lge/camera/Mediator;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2727
    iput-object p1, p0, Lcom/lge/camera/Mediator$4;->this$0:Lcom/lge/camera/Mediator;

    iput-wide p2, p0, Lcom/lge/camera/Mediator$4;->val$autoReviewDuration:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2729
    iget-object v0, p0, Lcom/lge/camera/Mediator$4;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 2730
    iget-object v0, p0, Lcom/lge/camera/Mediator$4;->this$0:Lcom/lge/camera/Mediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2731
    iget-object v0, p0, Lcom/lge/camera/Mediator$4;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v3}, Lcom/lge/camera/Mediator;->setGoingAutoReviewForQuickView(Z)V

    .line 2732
    iget-object v0, p0, Lcom/lge/camera/Mediator$4;->this$0:Lcom/lge/camera/Mediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    iget-wide v1, p0, Lcom/lge/camera/Mediator$4;->val$autoReviewDuration:J

    invoke-virtual {v0, v3, v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->showGalleryQuickViewWindow(ZJ)Z

    .line 2734
    :cond_0
    return-void
.end method
