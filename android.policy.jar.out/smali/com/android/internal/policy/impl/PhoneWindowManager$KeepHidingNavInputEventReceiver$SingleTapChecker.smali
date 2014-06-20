.class Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleTapChecker"
.end annotation


# instance fields
.field downX:I

.field downY:I

.field isSingleTouchValid:Z

.field runnable:Ljava/lang/Runnable;

.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;

.field timeHandler:Landroid/os/Handler;

.field touchSlopSquare:I

.field waitingTouchUp:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4412
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4454
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->timeHandler:Landroid/os/Handler;

    .line 4455
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->runnable:Ljava/lang/Runnable;

    .line 4413
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->touchSlopSquare:I

    .line 4414
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->touchSlopSquare:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->touchSlopSquare:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->touchSlopSquare:I

    .line 4415
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->downY:I

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->downX:I

    .line 4416
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->isSingleTouchValid:Z

    .line 4417
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->waitingTouchUp:Z

    .line 4418
    return-void
.end method


# virtual methods
.method public init(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 4421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 4422
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->downX:I

    .line 4423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->downY:I

    .line 4424
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->isSingleTouchValid:Z

    .line 4425
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->waitingTouchUp:Z

    .line 4426
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->timeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4427
    const-string v0, "WindowManager"

    const-string v1, "init SingleTapChecker"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4429
    :cond_0
    return-void
.end method

.method public isSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 4432
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->waitingTouchUp:Z

    if-nez v4, :cond_0

    .line 4451
    :goto_0
    return v3

    .line 4434
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->waitingTouchUp:Z

    .line 4436
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->isSingleTouchValid:Z

    if-eqz v4, :cond_2

    .line 4437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->downX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 4438
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->downY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 4439
    .local v1, deltaY:I
    mul-int v4, v0, v0

    mul-int v5, v1, v1

    add-int v2, v4, v5

    .line 4440
    .local v2, distance:I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->touchSlopSquare:I

    if-gt v2, v4, :cond_1

    .line 4441
    const-string v3, "WindowManager"

    const-string v4, "single tap up shows nav bar"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4442
    const/4 v3, 0x1

    goto :goto_0

    .line 4445
    :cond_1
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SingleTapChecker: distance exceeded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tolerance = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->touchSlopSquare:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4449
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v2           #distance:I
    :cond_2
    const-string v4, "WindowManager"

    const-string v5, "SingleTapChecker: ignore long click"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
