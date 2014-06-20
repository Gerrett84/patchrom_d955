.class Lcom/lge/camera/controller/QuickFunctionController$3;
.super Ljava/lang/Object;
.source "QuickFunctionController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickFunctionController;->initMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickFunctionController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickFunctionController;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/lge/camera/controller/QuickFunctionController$3;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$3;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    #setter for: Lcom/lge/camera/controller/QuickFunctionController;->mTargetX:I
    invoke-static {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->access$002(Lcom/lge/camera/controller/QuickFunctionController;I)I

    .line 218
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionController$3;->this$0:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    #setter for: Lcom/lge/camera/controller/QuickFunctionController;->mTargetY:I
    invoke-static {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->access$102(Lcom/lge/camera/controller/QuickFunctionController;I)I

    .line 219
    const/4 v0, 0x0

    return v0
.end method
