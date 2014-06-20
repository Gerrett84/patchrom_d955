.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->processDoubleTapEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private DOUBLE_TAP_TIMEOUT:I

.field private doubleTapSlop:I

.field private mDoubleTapSlopSquare:I

.field private mSecondDownEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 2
    .parameter

    .prologue
    .line 2281
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->mSecondDownEvent:Landroid/view/MotionEvent;

    .line 2283
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->DOUBLE_TAP_TIMEOUT:I

    .line 2284
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$2900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->doubleTapSlop:I

    .line 2285
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->doubleTapSlop:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->doubleTapSlop:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->mDoubleTapSlopSquare:I

    return-void
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "secondDown"
    .parameter "secondUp"

    .prologue
    const/4 v2, 0x0

    .line 2288
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 2293
    :cond_0
    :goto_0
    return v2

    .line 2291
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 2292
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    .line 2293
    .local v1, deltaY:I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 2297
    const-string v1, "KeyguardHostView"

    const-string v2, " GestureDetector onDoubleTap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2299
    .local v0, action:I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    .line 2314
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 2301
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->mSecondDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 2305
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->mSecondDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 2306
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->mSecondDownEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2307
    const-string v1, "KeyguardHostView"

    const-string v2, " GestureDetector onDoubleTap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const/16 v2, 0x3e8

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->sendKnockOnScreenOffMsg(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;I)V

    .line 2310
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$19;->mSecondDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 2299
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
