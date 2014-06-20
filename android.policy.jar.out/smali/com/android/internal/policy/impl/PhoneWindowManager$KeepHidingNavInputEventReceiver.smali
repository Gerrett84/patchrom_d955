.class final Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeepHidingNavInputEventReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;
    }
.end annotation


# instance fields
.field private mSingleTapChecker:Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;

.field needShowingNav:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 3
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 4365
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 4366
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 4370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;->needShowingNav:Z

    .line 4371
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;->mSingleTapChecker:Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;

    .line 4367
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new KeepHidingNavInputEventReceiver of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4368
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 4374
    const/4 v1, 0x0

    .line 4375
    .local v1, handled:Z
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeepHidingNavInputEventReceiver.onInputEvent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4377
    :try_start_0
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 4379
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v2, v0

    .line 4381
    .local v2, motionEvent:Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 4382
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;->mSingleTapChecker:Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->init(Landroid/view/MotionEvent;)V

    .line 4390
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;->needShowingNav:Z

    if-eqz v3, :cond_3

    .line 4391
    const-string v3, "WindowManager"

    const-string v4, "show navigation bar"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->showNavigationBar()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 4393
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;->mSingleTapChecker:Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;

    .line 4394
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;->needShowingNav:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4398
    :goto_1
    const/4 v1, 0x1

    .line 4401
    .end local v2           #motionEvent:Landroid/view/MotionEvent;
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 4403
    return-void

    .line 4384
    .restart local v2       #motionEvent:Landroid/view/MotionEvent;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 4385
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;->mSingleTapChecker:Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver$SingleTapChecker;->isSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4386
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;->needShowingNav:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4401
    .end local v2           #motionEvent:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$KeepHidingNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v3

    .line 4397
    .restart local v2       #motionEvent:Landroid/view/MotionEvent;
    :cond_3
    :try_start_2
    const-string v3, "WindowManager"

    const-string v4, "touch ignored"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
