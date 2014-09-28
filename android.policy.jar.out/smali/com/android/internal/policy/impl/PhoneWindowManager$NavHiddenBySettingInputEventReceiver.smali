.class final Lcom/android/internal/policy/impl/PhoneWindowManager$NavHiddenBySettingInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NavHiddenBySettingInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 4675
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$NavHiddenBySettingInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 4676
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 4677
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 4681
    const/4 v1, 0x0

    .line 4683
    .local v1, handled:Z
    :try_start_0
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 4685
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v2, v0

    .line 4687
    .local v2, motionEvent:Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$NavHiddenBySettingInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingNavHideManager:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->getGestureDetecter()Landroid/view/GestureDetector;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4688
    const/4 v1, 0x1

    .line 4691
    .end local v2           #motionEvent:Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$NavHiddenBySettingInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 4693
    return-void

    .line 4691
    :catchall_0
    move-exception v3

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$NavHiddenBySettingInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v3
.end method
