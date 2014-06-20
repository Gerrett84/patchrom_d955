.class Lcom/lge/camera/controller/QuickFunctionSettingController$1$1;
.super Ljava/lang/Object;
.source "QuickFunctionSettingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionSettingController$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/QuickFunctionSettingController$1;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionSettingController$1;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$1$1;->this$1:Lcom/lge/camera/controller/QuickFunctionSettingController$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$1$1;->this$1:Lcom/lge/camera/controller/QuickFunctionSettingController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$1$1;->this$1:Lcom/lge/camera/controller/QuickFunctionSettingController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/QuickFunctionSettingController$1;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 283
    return-void
.end method
