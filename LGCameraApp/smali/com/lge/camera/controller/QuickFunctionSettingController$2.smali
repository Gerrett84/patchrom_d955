.class Lcom/lge/camera/controller/QuickFunctionSettingController$2;
.super Ljava/lang/Object;
.source "QuickFunctionSettingController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/QuickFunctionSettingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionSettingController;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "me"

    .prologue
    const/4 v2, 0x1

    .line 319
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 320
    .local v0, mActionEvent:I
    if-ne v0, v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v1, v1, Lcom/lge/camera/controller/QuickFunctionSettingController;->mQuickFunctionSettingListView:Landroid/widget/ListView;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v1, p1, p2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->isInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionSettingController$2;->this$0:Lcom/lge/camera/controller/QuickFunctionSettingController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/QuickFunctionSettingController$2$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/QuickFunctionSettingController$2$1;-><init>(Lcom/lge/camera/controller/QuickFunctionSettingController$2;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 332
    :cond_2
    const/4 v1, 0x0

    return v1
.end method
