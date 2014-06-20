.class final Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PointerLocationInputEventReceiver"
.end annotation


# instance fields
.field private final mView:Lcom/android/internal/widget/PointerLocationView;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/internal/widget/PointerLocationView;)V
    .locals 0
    .parameter "inputChannel"
    .parameter "looper"
    .parameter "view"

    .prologue
    .line 570
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 571
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;->mView:Lcom/android/internal/widget/PointerLocationView;

    .line 572
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 576
    const/4 v2, 0x0

    .line 578
    .local v2, handled:Z
    :try_start_0
    instance-of v4, p1, Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 580
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v3, v0

    .line 581
    .local v3, motionEvent:Landroid/view/MotionEvent;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;->mView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/PointerLocationView;->addPointerEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    const/4 v2, 0x1

    .line 587
    .end local v3           #motionEvent:Landroid/view/MotionEvent;
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 594
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v4, "WindowManager"

    const-string v5, "PointerLocationInputEventReceiver failed finishInputEvent "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 586
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    .line 587
    :try_start_2
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 590
    :goto_1
    throw v4

    .line 588
    :catch_1
    move-exception v1

    .line 589
    .restart local v1       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "PointerLocationInputEventReceiver failed finishInputEvent "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
