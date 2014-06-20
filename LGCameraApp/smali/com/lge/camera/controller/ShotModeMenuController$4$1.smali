.class Lcom/lge/camera/controller/ShotModeMenuController$4$1;
.super Ljava/lang/Object;
.source "ShotModeMenuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/ShotModeMenuController$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/ShotModeMenuController$4;

.field final synthetic val$menuTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/ShotModeMenuController$4;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$4$1;->this$1:Lcom/lge/camera/controller/ShotModeMenuController$4;

    iput-object p2, p0, Lcom/lge/camera/controller/ShotModeMenuController$4$1;->val$menuTitle:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$4$1;->this$1:Lcom/lge/camera/controller/ShotModeMenuController$4;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 806
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$4$1;->this$1:Lcom/lge/camera/controller/ShotModeMenuController$4;

    iget-object v0, v0, Lcom/lge/camera/controller/ShotModeMenuController$4;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$4$1;->val$menuTitle:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->updateModeMenuIndicator(Ljava/lang/String;)V

    .line 807
    return-void
.end method
