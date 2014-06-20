.class Lcom/lge/camera/dialog/RotateDialog$1;
.super Ljava/lang/Object;
.source "RotateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/RotateDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/RotateDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lge/camera/dialog/RotateDialog$1;->this$0:Lcom/lge/camera/dialog/RotateDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog$1;->this$0:Lcom/lge/camera/dialog/RotateDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog$1;->this$0:Lcom/lge/camera/dialog/RotateDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog$1;->this$0:Lcom/lge/camera/dialog/RotateDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/RotateDialog;->onPrepare()V

    .line 58
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog$1;->this$0:Lcom/lge/camera/dialog/RotateDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :cond_0
    return-void
.end method
