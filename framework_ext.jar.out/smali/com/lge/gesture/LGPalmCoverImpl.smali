.class Lcom/lge/gesture/LGPalmCoverImpl;
.super Lcom/lge/gesture/LGPalmCover;
.source "LGPalmCoverImpl.java"


# static fields
.field private static final INTENT_TOUCH_PALM_COVER:Ljava/lang/String; = "com.lge.android.intent.action.TOUCH_PALM_COVER"


# instance fields
.field private final TIMELIMIT4GESTURE:I

.field mContext:Landroid/content/Context;

.field private mFirstPressTime:J

.field private mPalmCoverPressed:Z

.field private mPalmCovered:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lcom/lge/gesture/LGPalmCover;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mContext:Landroid/content/Context;

    .line 20
    const/16 v0, 0x1f3

    iput v0, p0, Lcom/lge/gesture/LGPalmCoverImpl;->TIMELIMIT4GESTURE:I

    .line 22
    iput-boolean v1, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mPalmCoverPressed:Z

    .line 23
    iput-boolean v1, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mPalmCovered:Z

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mFirstPressTime:J

    .line 28
    iput-object p1, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public PlayWithInputEvent(Landroid/view/InputEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 33
    move-object v4, p1

    check-cast v4, Landroid/view/MotionEvent;

    .line 34
    .local v4, motionEvent:Landroid/view/MotionEvent;
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 36
    .local v0, action:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    iget-boolean v5, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mPalmCoverPressed:Z

    if-nez v5, :cond_1

    .line 37
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 38
    invoke-virtual {v4, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mFirstPressTime:J

    .line 40
    iput-boolean v9, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mPalmCoverPressed:Z

    .line 41
    const-string v5, "PALMCOVER"

    const-string v6, "***** Recognize palm-cover press *****"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    .end local v3           #i:I
    :cond_1
    if-eq v0, v9, :cond_2

    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    .line 47
    :cond_2
    iput-boolean v7, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mPalmCoverPressed:Z

    .line 48
    iput-boolean v7, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mPalmCovered:Z

    .line 49
    iput-wide v10, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mFirstPressTime:J

    .line 52
    :cond_3
    iget-boolean v5, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mPalmCovered:Z

    if-eqz v5, :cond_5

    .line 53
    const-string v5, "PALMCOVER"

    const-string v6, "***** Palm Cover is running *****"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_4
    :goto_1
    return-void

    .line 57
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 59
    .local v1, currTime:J
    iget-boolean v5, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mPalmCoverPressed:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mPalmCovered:Z

    if-nez v5, :cond_6

    .line 60
    iget-wide v5, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mFirstPressTime:J

    sub-long v5, v1, v5

    cmp-long v5, v5, v10

    if-ltz v5, :cond_6

    iget-wide v5, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mFirstPressTime:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x1f3

    cmp-long v5, v5, v7

    if-ltz v5, :cond_6

    .line 62
    iput-boolean v9, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mPalmCovered:Z

    .line 63
    const-string v5, "PALMCOVER"

    const-string v6, "***** Palm Cover Recognized"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_6
    iget-boolean v5, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mPalmCovered:Z

    if-eqz v5, :cond_4

    .line 68
    iget-object v5, p0, Lcom/lge/gesture/LGPalmCoverImpl;->mContext:Landroid/content/Context;

    const-string v6, "com.lge.android.intent.action.TOUCH_PALM_COVER"

    invoke-static {v5, v6}, Lcom/lge/gesture/LgeGestureBasicUtil;->broadcastIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
