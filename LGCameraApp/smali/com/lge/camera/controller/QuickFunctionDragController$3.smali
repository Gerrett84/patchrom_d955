.class Lcom/lge/camera/controller/QuickFunctionDragController$3;
.super Ljava/lang/Object;
.source "QuickFunctionDragController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/QuickFunctionDragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionDragController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionDragController;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionDragController$3;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController$3;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    iget-boolean v0, v0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController$3;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    #calls: Lcom/lge/camera/controller/QuickFunctionDragController;->clearSelectedDragViewGroup()V
    invoke-static {v0}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$500(Lcom/lge/camera/controller/QuickFunctionDragController;)V

    .line 519
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController$3;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController$3;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    #calls: Lcom/lge/camera/controller/QuickFunctionDragController;->getDragViewGroupIndex(Landroid/view/View;)I
    invoke-static {v1, p1}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$600(Lcom/lge/camera/controller/QuickFunctionDragController;Landroid/view/View;)I

    move-result v1

    #setter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I
    invoke-static {v0, v1}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$302(Lcom/lge/camera/controller/QuickFunctionDragController;I)I

    .line 520
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method
