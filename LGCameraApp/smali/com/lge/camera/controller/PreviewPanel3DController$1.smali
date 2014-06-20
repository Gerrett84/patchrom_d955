.class Lcom/lge/camera/controller/PreviewPanel3DController$1;
.super Ljava/lang/Object;
.source "PreviewPanel3DController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewPanel3DController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanel3DController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanel3DController;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanel3DController$1;->this$0:Lcom/lge/camera/controller/PreviewPanel3DController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanel3DController$1;->this$0:Lcom/lge/camera/controller/PreviewPanel3DController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.SwapCameraDimension"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 108
    return-void
.end method
