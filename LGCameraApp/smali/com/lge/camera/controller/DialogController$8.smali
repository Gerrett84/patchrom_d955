.class Lcom/lge/camera/controller/DialogController$8;
.super Ljava/lang/Object;
.source "DialogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/DialogController;->deleteSavingProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/DialogController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/DialogController;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/lge/camera/controller/DialogController$8;->this$0:Lcom/lge/camera/controller/DialogController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController$8;->this$0:Lcom/lge/camera/controller/DialogController;

    #getter for: Lcom/lge/camera/controller/DialogController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/DialogController;->access$000(Lcom/lge/camera/controller/DialogController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 474
    iget-object v0, p0, Lcom/lge/camera/controller/DialogController$8;->this$0:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->onDismissRotateDialog()V

    .line 475
    return-void
.end method
