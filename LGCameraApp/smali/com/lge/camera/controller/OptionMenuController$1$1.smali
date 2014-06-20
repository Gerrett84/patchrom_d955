.class Lcom/lge/camera/controller/OptionMenuController$1$1;
.super Ljava/lang/Object;
.source "OptionMenuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/OptionMenuController$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/OptionMenuController$1;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/OptionMenuController$1;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lge/camera/controller/OptionMenuController$1$1;->this$1:Lcom/lge/camera/controller/OptionMenuController$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController$1$1;->this$1:Lcom/lge/camera/controller/OptionMenuController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/OptionMenuController$1;->this$0:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/OptionMenuController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController$1$1;->this$1:Lcom/lge/camera/controller/OptionMenuController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/OptionMenuController$1;->this$0:Lcom/lge/camera/controller/OptionMenuController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/lge/camera/controller/OptionMenuController$1$1;->this$1:Lcom/lge/camera/controller/OptionMenuController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/OptionMenuController$1;->this$0:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/OptionMenuController;->releaseOptionMenu()V

    .line 100
    :cond_0
    return-void
.end method
