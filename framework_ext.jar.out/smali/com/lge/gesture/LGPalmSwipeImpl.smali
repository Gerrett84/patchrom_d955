.class Lcom/lge/gesture/LGPalmSwipeImpl;
.super Lcom/lge/gesture/LGPalmSwipe;
.source "LGPalmSwipeImpl.java"


# static fields
.field private static final INTENT_TOUCH_PALM_SWIPE_DOWN:Ljava/lang/String; = "com.lge.android.intent.action.TOUCH_PALM_SWIPE_DOWN"

.field private static final INTENT_TOUCH_PALM_SWIPE_UP:Ljava/lang/String; = "com.lge.android.intent.action.TOUCH_PALM_SWIPE_UP"


# instance fields
.field private final ALLOWANCE_OF_SLOPE:F

.field private final AXIS_DIRECTION:I

.field private final MAX_DRAGGING_ANGLE_COS:F

.field private final NEUTRAL:I

.field private final PALMSWIPE_DIRECTION:I

.field private final PALMSWIPE_MAX_DETECTION_RIGHTANGLE_DRAG_PIXELS:I

.field private final PALMSWIPE_MIN_DETECTION_DRAG_PIXELS:I

.field private final PALMSWIPE_MIN_DETECTION_REAL_PALM_DRAG_PIXELS:I

.field private final PIXELS_PER_MM:I

.field private final REVERSE_AXIS_DIRECTION:I

.field private final TIMELIMIT4GESTURE:I

.field private final TUNING_ON_RUNTIME:Z

.field private final XDPI:F

.field private final YDPI:F

.field private isInTime:Z

.field private mAxisDirectionCount:I

.field mContext:Landroid/content/Context;

.field private mCurrentPointerX:I

.field private mCurrentPointerY:I

.field private mDirection:I

.field private mDirectionChange:Z

.field private mDirectionOfSwipe:I

.field private mFirstPalmPointerIndex:I

.field private mFirstPalmPointerX:I

.field private mFirstPalmPointerY:I

.field private mFirstPointerX:I

.field private mFirstPointerY:I

.field private mFirstPressTime:J

.field private mPalmPressed:Z

.field private mPalmSwipe:Z

.field private mPrevDirection:I

.field private mPrevPointerX:I

.field private mPrevPointerY:I

.field private mPrevRightAngleDirection:I

.field private mReadyToSubmitPalmEvent:Z

.field private mReverseAxisDirectionCount:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Lcom/lge/gesture/LGPalmSwipe;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mContext:Landroid/content/Context;

    .line 18
    iput-boolean v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->TUNING_ON_RUNTIME:Z

    .line 24
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->NEUTRAL:I

    .line 25
    iput v1, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->REVERSE_AXIS_DIRECTION:I

    .line 26
    iput v3, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->AXIS_DIRECTION:I

    .line 30
    const v0, 0x3f067b80

    iput v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->MAX_DRAGGING_ANGLE_COS:F

    .line 31
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->ALLOWANCE_OF_SLOPE:F

    .line 41
    iput-boolean v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPalmPressed:Z

    .line 42
    iput-boolean v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPalmSwipe:Z

    .line 43
    iput-boolean v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mReadyToSubmitPalmEvent:Z

    .line 44
    iput-boolean v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirectionChange:Z

    .line 45
    iput-boolean v1, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->isInTime:Z

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPressTime:J

    .line 47
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPointerX:I

    .line 48
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPointerY:I

    .line 49
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPalmPointerX:I

    .line 50
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPalmPointerY:I

    .line 51
    iput v3, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPalmPointerIndex:I

    .line 52
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerX:I

    .line 53
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerY:I

    .line 54
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevPointerX:I

    .line 55
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevPointerY:I

    .line 56
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirectionOfSwipe:I

    .line 57
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirection:I

    .line 58
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevDirection:I

    .line 59
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevRightAngleDirection:I

    .line 60
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mAxisDirectionCount:I

    .line 61
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mReverseAxisDirectionCount:I

    .line 65
    iput-object p1, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mContext:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->XDPI:F

    .line 67
    iget-object v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->YDPI:F

    .line 70
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->PALMSWIPE_DIRECTION:I

    .line 71
    iget v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->YDPI:F

    invoke-static {v0}, Lcom/lge/gesture/LgeGestureBasicUtil;->getPixelPerMm(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->PIXELS_PER_MM:I

    .line 72
    iget v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->PIXELS_PER_MM:I

    mul-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->PALMSWIPE_MIN_DETECTION_DRAG_PIXELS:I

    .line 73
    iget v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->YDPI:F

    invoke-static {v0}, Lcom/lge/gesture/LgeGestureBasicUtil;->getPixelPerMm(F)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->PALMSWIPE_MIN_DETECTION_REAL_PALM_DRAG_PIXELS:I

    .line 74
    iget v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->XDPI:F

    invoke-static {v0}, Lcom/lge/gesture/LgeGestureBasicUtil;->getPixelPerMm(F)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->PALMSWIPE_MAX_DETECTION_RIGHTANGLE_DRAG_PIXELS:I

    .line 75
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->TIMELIMIT4GESTURE:I

    .line 83
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPressTime:J

    .line 87
    iput-boolean v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mReadyToSubmitPalmEvent:Z

    .line 88
    iput-boolean v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirectionChange:Z

    .line 89
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirection:I

    .line 91
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPointerX:I

    .line 92
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPointerY:I

    .line 93
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerX:I

    .line 94
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerY:I

    .line 95
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPalmPointerX:I

    .line 96
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPalmPointerY:I

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPalmPointerIndex:I

    .line 98
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevPointerX:I

    .line 99
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevPointerY:I

    .line 100
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirectionOfSwipe:I

    .line 101
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevDirection:I

    .line 102
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevRightAngleDirection:I

    .line 103
    iput-boolean v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPalmPressed:Z

    .line 104
    iput-boolean v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPalmSwipe:Z

    .line 105
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mAxisDirectionCount:I

    .line 106
    iput v2, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->mReverseAxisDirectionCount:I

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/gesture/LGPalmSwipeImpl;->isInTime:Z

    .line 108
    return-void
.end method


# virtual methods
.method public PlayWithInputEvent(Landroid/view/InputEvent;)V
    .locals 21
    .parameter "event"

    .prologue
    .line 112
    move-object/from16 v15, p1

    check-cast v15, Landroid/view/MotionEvent;

    .line 113
    .local v15, motionEvent:Landroid/view/MotionEvent;
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 116
    .local v3, action:I
    if-nez v3, :cond_0

    .line 117
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPointerX:I

    .line 118
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPointerY:I

    .line 119
    const-string v17, "PALM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "***** mFirstPointerX: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPointerX:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mFirstPointerY: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPointerY:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v3, v0, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPalmPressed:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 124
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    .line 125
    invoke-virtual {v15, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPressTime:J

    .line 127
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mPalmPressed:Z

    .line 128
    move-object/from16 v0, p0

    iput v8, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPalmPointerIndex:I

    .line 129
    const-string v17, "PALM"

    const-string v18, "Palm press recognized!!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 134
    .end local v8           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->isInTime:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPalmPressed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 137
    .local v4, currTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPressTime:J

    move-wide/from16 v17, v0

    sub-long v17, v4, v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-ltz v17, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPressTime:J

    move-wide/from16 v17, v0

    sub-long v17, v4, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->TIMELIMIT4GESTURE:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-lez v17, :cond_4

    .line 138
    :cond_3
    const-string v17, "PALM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "action: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", OUT OF TIME !!!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->isInTime:Z

    .line 143
    .end local v4           #currTime:J
    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_5

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v3, v0, :cond_7

    .line 145
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPalmSwipe:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->isInTime:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 146
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirection:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 147
    const-string v17, "PALM"

    const-string v18, "PALM SWIPE DOWN|RIGHT!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "com.lge.android.intent.action.TOUCH_PALM_SWIPE_DOWN"

    invoke-static/range {v17 .. v18}, Lcom/lge/gesture/LgeGestureBasicUtil;->broadcastIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    :cond_6
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/lge/gesture/LGPalmSwipeImpl;->initialize()V

    .line 160
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPalmSwipe:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->isInTime:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 161
    :cond_8
    const-string v17, "PALM"

    const-string v18, "Palm Swipe is RUNning OR gesture is not detected due to OUT OF TIME !!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_9
    :goto_2
    return-void

    .line 149
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirection:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 150
    const-string v17, "PALM"

    const-string v18, "PALM SWIPE UP|LEFT!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "com.lge.android.intent.action.TOUCH_PALM_SWIPE_UP"

    invoke-static/range {v17 .. v18}, Lcom/lge/gesture/LgeGestureBasicUtil;->broadcastIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :cond_b
    const-string v17, "PALM"

    const-string v18, "PALM SWIPE No direction!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 166
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPalmPressed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mReadyToSubmitPalmEvent:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPalmSwipe:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirectionChange:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    .line 167
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mReadyToSubmitPalmEvent:Z

    .line 169
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPalmPointerIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPalmPointerX:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevPointerX:I

    .line 170
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPalmPointerIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPalmPointerY:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevPointerY:I

    .line 171
    const-string v17, "PALM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "***** mFirstPalmPointerX: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPalmPointerX:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mFirstPalmPointerY: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPalmPointerY:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 176
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mReadyToSubmitPalmEvent:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPalmSwipe:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirectionChange:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 178
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerX:I

    .line 179
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerY:I

    .line 181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevPointerX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerX:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 182
    .local v6, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevPointerY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerY:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 185
    .local v7, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->PALMSWIPE_DIRECTION:I

    move/from16 v17, v0

    if-nez v17, :cond_10

    .line 186
    int-to-float v0, v7

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 190
    .local v16, signal:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevPointerX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevPointerY:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerY:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/lge/gesture/LgeGestureBasicUtil;->getDistance(FFFF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v9, v0

    .line 192
    .local v9, mDistance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->PIXELS_PER_MM:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-gt v9, v0, :cond_12

    .line 193
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevDirection:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirectionOfSwipe:I

    .line 195
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevDirection:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mAxisDirectionCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mAxisDirectionCount:I

    .line 217
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerX:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevPointerX:I

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerY:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevPointerY:I

    .line 221
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirectionOfSwipe:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirection:I

    .line 224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPointerX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 225
    .local v12, mDistanceFrom1stPointerX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPointerY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 226
    .local v13, mDistanceFrom1stPointerY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPalmPointerY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 227
    .local v11, mDistanceFrom1stPalmPointerY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPalmPointerX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 228
    .local v10, mDistanceFrom1stPalmPointerX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPointerX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mFirstPointerY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mCurrentPointerY:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/lge/gesture/LgeGestureBasicUtil;->calculateSlope(FFFF)F

    move-result v14

    .line 230
    .local v14, mSlopeOf2Points:F
    const-string v17, "PALM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mSlopeOf2Points: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v17, "PALM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mDistanceFrom1stPointerX: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v17, "PALM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mDistanceFrom1stPointerY: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v17, "PALM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mDistanceFrom1stPalmPointerY: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v17, "PALM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mDistanceFrom1stPalmPointerX: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->PALMSWIPE_DIRECTION:I

    move/from16 v17, v0

    if-nez v17, :cond_15

    move/from16 v17, v13

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->PALMSWIPE_MIN_DETECTION_DRAG_PIXELS:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->PALMSWIPE_DIRECTION:I

    move/from16 v17, v0

    if-nez v17, :cond_16

    .end local v11           #mDistanceFrom1stPalmPointerY:I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->PALMSWIPE_MIN_DETECTION_REAL_PALM_DRAG_PIXELS:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v11, v0, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->PALMSWIPE_DIRECTION:I

    move/from16 v17, v0

    if-nez v17, :cond_17

    move/from16 v17, v12

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->PALMSWIPE_MAX_DETECTION_RIGHTANGLE_DRAG_PIXELS:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_19

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirection:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirection:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 241
    :cond_f
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mPalmSwipe:Z

    goto/16 :goto_2

    .line 188
    .end local v9           #mDistance:I
    .end local v10           #mDistanceFrom1stPalmPointerX:I
    .end local v12           #mDistanceFrom1stPointerX:I
    .end local v13           #mDistanceFrom1stPointerY:I
    .end local v14           #mSlopeOf2Points:F
    .end local v16           #signal:I
    :cond_10
    int-to-float v0, v6

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .restart local v16       #signal:I
    goto/16 :goto_3

    .line 197
    .restart local v9       #mDistance:I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevDirection:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mAxisDirectionCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mAxisDirectionCount:I

    goto/16 :goto_4

    .line 201
    :cond_12
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 203
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirectionOfSwipe:I

    .line 204
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevDirection:I

    .line 205
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mAxisDirectionCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mAxisDirectionCount:I

    goto/16 :goto_4

    .line 206
    :cond_13
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 208
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirectionOfSwipe:I

    .line 209
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevDirection:I

    .line 210
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mReverseAxisDirectionCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mReverseAxisDirectionCount:I

    goto/16 :goto_4

    .line 211
    :cond_14
    if-nez v16, :cond_e

    .line 213
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mPrevDirection:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirectionOfSwipe:I

    goto/16 :goto_4

    .restart local v10       #mDistanceFrom1stPalmPointerX:I
    .restart local v11       #mDistanceFrom1stPalmPointerY:I
    .restart local v12       #mDistanceFrom1stPointerX:I
    .restart local v13       #mDistanceFrom1stPointerY:I
    .restart local v14       #mSlopeOf2Points:F
    :cond_15
    move/from16 v17, v12

    .line 236
    goto/16 :goto_5

    :cond_16
    move v11, v10

    goto/16 :goto_6

    .end local v11           #mDistanceFrom1stPalmPointerY:I
    :cond_17
    move/from16 v17, v13

    goto/16 :goto_7

    .line 243
    :cond_18
    const-string v17, "PALM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Wrong direction!!! mDirection: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirection:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 246
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->PALMSWIPE_DIRECTION:I

    move/from16 v17, v0

    if-nez v17, :cond_1b

    .end local v12           #mDistanceFrom1stPointerX:I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/gesture/LGPalmSwipeImpl;->PALMSWIPE_MAX_DETECTION_RIGHTANGLE_DRAG_PIXELS:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v12, v0, :cond_1a

    .line 247
    const-string v17, "PALM"

    const-string v18, "inner of touchslop"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/high16 v17, 0x3f80

    cmpg-float v17, v14, v17

    if-gez v17, :cond_1a

    .line 249
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/gesture/LGPalmSwipeImpl;->mDirectionChange:Z

    .line 250
    const-string v17, "PALM"

    const-string/jumbo v18, "less than 45 degree from x-coordinate , so palm swipe is false"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_1a
    const-string v17, "PALM"

    const-string v18, "Not Yet!!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .restart local v12       #mDistanceFrom1stPointerX:I
    :cond_1b
    move v12, v13

    .line 246
    goto :goto_8
.end method
