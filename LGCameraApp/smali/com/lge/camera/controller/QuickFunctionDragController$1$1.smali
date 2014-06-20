.class Lcom/lge/camera/controller/QuickFunctionDragController$1$1;
.super Ljava/lang/Object;
.source "QuickFunctionDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionDragController$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/QuickFunctionDragController$1;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionDragController$1;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionDragController$1$1;->this$1:Lcom/lge/camera/controller/QuickFunctionDragController$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController$1$1;->this$1:Lcom/lge/camera/controller/QuickFunctionDragController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionDragController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController$1$1;->this$1:Lcom/lge/camera/controller/QuickFunctionDragController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionDragController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    #calls: Lcom/lge/camera/controller/QuickFunctionDragController;->removeSelectMenuView()V
    invoke-static {v0}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$000(Lcom/lge/camera/controller/QuickFunctionDragController;)V

    .line 208
    return-void
.end method
