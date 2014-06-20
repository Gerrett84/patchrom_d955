.class Lcom/lge/camera/controller/QuickFunctionDragController$4;
.super Ljava/lang/Object;
.source "QuickFunctionDragController.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 524
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 527
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    iget-boolean v1, v1, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 539
    .end local p1
    :cond_0
    :goto_0
    return v3

    .line 530
    .restart local p1
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;
    invoke-static {v1}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$700(Lcom/lge/camera/controller/QuickFunctionDragController;)Lcom/lge/camera/components/DragLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    #getter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;
    invoke-static {v1}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$700(Lcom/lge/camera/controller/QuickFunctionDragController;)Lcom/lge/camera/components/DragLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/components/DragLayout;->getDrag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 533
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/ListPreference;

    .line 534
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_3

    .line 535
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    #calls: Lcom/lge/camera/controller/QuickFunctionDragController;->clearSelectedDragViewGroup()V
    invoke-static {v1}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$500(Lcom/lge/camera/controller/QuickFunctionDragController;)V

    .line 537
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    #calls: Lcom/lge/camera/controller/QuickFunctionDragController;->getDragViewGroupIndex(Landroid/view/View;)I
    invoke-static {v2, p1}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$600(Lcom/lge/camera/controller/QuickFunctionDragController;Landroid/view/View;)I

    move-result v2

    #setter for: Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I
    invoke-static {v1, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->access$302(Lcom/lge/camera/controller/QuickFunctionDragController;I)I

    .line 538
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController$4;->this$0:Lcom/lge/camera/controller/QuickFunctionDragController;

    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/lge/camera/controller/QuickFunctionDragController;->startDrag(Landroid/view/View;)V

    goto :goto_0
.end method
