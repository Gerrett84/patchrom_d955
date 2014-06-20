.class public Lcom/lge/view/TouchEventFilter;
.super Ljava/lang/Object;
.source "TouchEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/view/TouchEventFilter$PrintLog;,
        Lcom/lge/view/TouchEventFilter$EmptyFilter;,
        Lcom/lge/view/TouchEventFilter$EssentialFilter;,
        Lcom/lge/view/TouchEventFilter$PenPalmFilter;,
        Lcom/lge/view/TouchEventFilter$SensitivityFilter;,
        Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;,
        Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;,
        Lcom/lge/view/TouchEventFilter$IEventFilter;,
        Lcom/lge/view/TouchEventFilter$DoAction;,
        Lcom/lge/view/TouchEventFilter$DoDispatchMotionEvent;
    }
.end annotation


# static fields
.field public static final FILTER_NUM:I = 0x4

.field public static final GRIP_SUPPRESSION_FILTER:I = 0x1

.field public static final GRIP_SUPPRESSION_FILTER_BIT:I = 0x2

.field private static final MAX_LOOP_COUNT:I = 0x5

.field public static final PALM_REJECTION_FILTER:I = 0x0

.field public static final PALM_REJECTION_FILTER_BIT:I = 0x1

.field public static final PEN_PALM_FILTER:I = 0x3

.field public static final PEN_PALM_FILTER_BIT:I = 0x8

.field public static final SENSITIVITY_FILTER:I = 0x2

.field public static final SENSITIVITY_FILTER_BIT:I = 0x4

.field private static isPortrait:Z


# instance fields
.field private final DEBUG_LEVEL:I

.field private filteringResult:Lcom/lge/view/TouchEventFilter$DoAction;

.field private isPointerIDChanged:Z

.field private loopCount:I

.field private mDoDispatchMotionEvent:Lcom/lge/view/TouchEventFilter$DoDispatchMotionEvent;

.field private mEventFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/view/TouchEventFilter$IEventFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field private needToSendAdditionalEvent:Z

.field private onlyNewMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

.field private onlyOldMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

.field private reportAction:I

.field private reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

.field private reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

.field private savedPointerChangedID:I

.field private useFilter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/view/TouchEventFilter;->isPortrait:Z

    return-void
.end method

.method public constructor <init>(Lcom/lge/view/TouchEventFilter$DoDispatchMotionEvent;)V
    .locals 3
    .parameter "dispatch"

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v1, "debug.view.toucheventfilter"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter;->mView:Landroid/view/View;

    .line 74
    new-instance v1, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-direct {v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    .line 75
    new-instance v1, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-direct {v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    .line 76
    iput v2, p0, Lcom/lge/view/TouchEventFilter;->reportAction:I

    .line 79
    iput-boolean v2, p0, Lcom/lge/view/TouchEventFilter;->needToSendAdditionalEvent:Z

    .line 80
    sget-object v1, Lcom/lge/view/TouchEventFilter$DoAction;->DO_NOTHING:Lcom/lge/view/TouchEventFilter$DoAction;

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter;->filteringResult:Lcom/lge/view/TouchEventFilter$DoAction;

    .line 81
    iput v2, p0, Lcom/lge/view/TouchEventFilter;->loopCount:I

    .line 82
    iput-boolean v2, p0, Lcom/lge/view/TouchEventFilter;->isPointerIDChanged:Z

    .line 83
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    .line 87
    iput v2, p0, Lcom/lge/view/TouchEventFilter;->useFilter:I

    .line 296
    new-instance v1, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-direct {v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter;->onlyNewMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    .line 297
    new-instance v1, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-direct {v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter;->onlyOldMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    .line 93
    invoke-direct {p0, p1}, Lcom/lge/view/TouchEventFilter;->init(Lcom/lge/view/TouchEventFilter$DoDispatchMotionEvent;)V

    .line 94
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    new-instance v2, Lcom/lge/view/TouchEventFilter$EmptyFilter;

    invoke-direct {v2, p0}, Lcom/lge/view/TouchEventFilter$EmptyFilter;-><init>(Lcom/lge/view/TouchEventFilter;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    new-instance v2, Lcom/lge/view/TouchEventFilter$EssentialFilter;

    invoke-direct {v2, p0}, Lcom/lge/view/TouchEventFilter$EssentialFilter;-><init>(Lcom/lge/view/TouchEventFilter;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/lge/view/TouchEventFilter;->isPortrait:Z

    return v0
.end method

.method private checkPointerID(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 382
    iget-object v8, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v9

    if-eq v8, v9, :cond_2

    move v5, v6

    .line 383
    .local v5, isFiltered:Z
    :goto_0
    iget v8, p0, Lcom/lge/view/TouchEventFilter;->reportAction:I

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getCount()I

    move-result v8

    if-ne v8, v6, :cond_3

    iget-object v8, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8, v7}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->checkMask(I)Z

    move-result v8

    if-nez v8, :cond_3

    move v4, v6

    .line 384
    .local v4, isActionDownButIdNotZero:Z
    :goto_1
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 385
    iput-boolean v6, p0, Lcom/lge/view/TouchEventFilter;->isPointerIDChanged:Z

    .line 386
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v6}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getLastBitToID()I

    move-result v6

    iput v6, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    .line 389
    :cond_0
    iget-boolean v6, p0, Lcom/lge/view/TouchEventFilter;->isPointerIDChanged:Z

    if-eqz v6, :cond_1

    .line 390
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    iget v8, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    invoke-virtual {v6, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->checkMask(I)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v6, v7}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->checkMask(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 391
    iput-boolean v7, p0, Lcom/lge/view/TouchEventFilter;->isPointerIDChanged:Z

    .line 392
    const/4 v6, -0x1

    iput v6, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    .line 416
    :cond_1
    :goto_2
    return-void

    .end local v4           #isActionDownButIdNotZero:Z
    .end local v5           #isFiltered:Z
    :cond_2
    move v5, v7

    .line 382
    goto :goto_0

    .restart local v5       #isFiltered:Z
    :cond_3
    move v4, v7

    .line 383
    goto :goto_1

    .line 395
    .restart local v4       #isActionDownButIdNotZero:Z
    :cond_4
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 396
    .local v2, index1:I
    iget v6, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 397
    .local v3, index2:I
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v6, v7}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->checkMask(I)Z

    move-result v1

    .line 398
    .local v1, idZeroShouldReport:Z
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    iget v8, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    invoke-virtual {v6, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->checkMask(I)Z

    move-result v0

    .line 400
    .local v0, idSavedShouldReport:Z
    if-ltz v2, :cond_5

    .line 401
    iget v6, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    invoke-virtual {p1, v2, v6}, Landroid/view/MotionEvent;->setPointerId(II)V

    .line 402
    if-eqz v1, :cond_6

    .line 403
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    iget v8, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    invoke-virtual {v6, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setMask(I)I

    .line 407
    :cond_5
    :goto_3
    if-ltz v3, :cond_1

    .line 408
    invoke-virtual {p1, v3, v7}, Landroid/view/MotionEvent;->setPointerId(II)V

    .line 409
    if-eqz v0, :cond_7

    .line 410
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v6, v7}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setMask(I)I

    goto :goto_2

    .line 405
    :cond_6
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    iget v8, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    invoke-virtual {v6, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearMask(I)I

    goto :goto_3

    .line 412
    :cond_7
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v6, v7}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearMask(I)I

    goto :goto_2
.end method

.method private errorHandlingOfFiltering(II)Lcom/lge/view/TouchEventFilter$DoAction;
    .locals 1
    .parameter "mask"
    .parameter "action"

    .prologue
    .line 244
    invoke-direct {p0, p1, p2}, Lcom/lge/view/TouchEventFilter;->setReportValue(II)V

    .line 245
    invoke-direct {p0}, Lcom/lge/view/TouchEventFilter;->initProperties()V

    .line 246
    sget-object v0, Lcom/lge/view/TouchEventFilter$DoAction;->DO_NOTHING:Lcom/lge/view/TouchEventFilter$DoAction;

    return-object v0
.end method

.method private filtering(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 20
    .parameter "event"

    .prologue
    .line 178
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    const-string v5, "<OLD> "

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0, v6}, Lcom/lge/view/TouchEventFilter$PrintLog;->event(ILjava/lang/String;Landroid/view/MotionEvent;Z)V

    .line 180
    invoke-direct/range {p0 .. p1}, Lcom/lge/view/TouchEventFilter;->isFilterableEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/lge/view/TouchEventFilter;->initAllFilter()V

    .line 182
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    const-string v5, "<NOT> "

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0, v6}, Lcom/lge/view/TouchEventFilter$PrintLog;->event(ILjava/lang/String;Landroid/view/MotionEvent;Z)V

    .line 231
    .end local p1
    :goto_0
    return-object p1

    .line 186
    .restart local p1
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v18

    .line 187
    .local v18, pointerIdBits:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    .line 188
    .local v15, oldAction:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v16

    .line 190
    .local v16, oldActionMasked:I
    move/from16 v19, v18

    .line 191
    .local v19, reportMask:I
    sget-object v11, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->NONE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 192
    .local v11, act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;
    sget-object v4, Lcom/lge/view/TouchEventFilter$DoAction;->DO_NOTHING:Lcom/lge/view/TouchEventFilter$DoAction;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lge/view/TouchEventFilter;->filteringResult:Lcom/lge/view/TouchEventFilter$DoAction;

    .line 194
    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/view/TouchEventFilter;->loopCount:I

    if-nez v4, :cond_1

    .line 195
    invoke-direct/range {p0 .. p0}, Lcom/lge/view/TouchEventFilter;->initAllFilter()V

    .line 197
    :cond_1
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_3

    .line 198
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/view/TouchEventFilter$IEventFilter;

    .line 199
    .local v12, eventFilter:Lcom/lge/view/TouchEventFilter$IEventFilter;
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter;->filtering(Landroid/view/MotionEvent;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 197
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 202
    :cond_2
    invoke-interface {v12}, Lcom/lge/view/TouchEventFilter$IEventFilter;->getReportMask()I

    move-result v4

    and-int v19, v19, v4

    .line 203
    invoke-interface {v12}, Lcom/lge/view/TouchEventFilter$IEventFilter;->getAct()Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/lge/view/TouchEventFilter;->getAct(Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;)Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    move-result-object v11

    .line 205
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v4, v12, v0, v1, v11}, Lcom/lge/view/TouchEventFilter$PrintLog;->filtering(ILcom/lge/view/TouchEventFilter$IEventFilter;IILcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;)V

    goto :goto_2

    .line 208
    .end local v12           #eventFilter:Lcom/lge/view/TouchEventFilter$IEventFilter;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v4}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v17

    .line 209
    .local v17, oldReportMask:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/lge/view/TouchEventFilter;->setReportValue(Landroid/view/MotionEvent;IILcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;)Lcom/lge/view/TouchEventFilter$DoAction;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lge/view/TouchEventFilter;->filteringResult:Lcom/lge/view/TouchEventFilter$DoAction;

    .line 210
    invoke-direct/range {p0 .. p1}, Lcom/lge/view/TouchEventFilter;->checkPointerID(Landroid/view/MotionEvent;)V

    .line 212
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/view/TouchEventFilter;->reportAction:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 215
    move-object/from16 v14, p1

    .line 216
    .local v14, newEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/view/TouchEventFilter;->filteringResult:Lcom/lge/view/TouchEventFilter$DoAction;

    sget-object v5, Lcom/lge/view/TouchEventFilter$DoAction;->DO_SPLIT:Lcom/lge/view/TouchEventFilter$DoAction;

    if-ne v4, v5, :cond_4

    .line 217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v4}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v14

    .line 218
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lge/view/TouchEventFilter;->needToSendAdditionalEvent:Z

    if-eqz v4, :cond_6

    .line 219
    move-object/from16 v0, p1

    if-ne v14, v0, :cond_5

    .line 220
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v14

    .line 221
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->setAction(I)V

    .line 224
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/view/TouchEventFilter;->reportAction:I

    invoke-static {v4, v5, v6, v7}, Lcom/lge/view/TouchEventFilter$PrintLog;->reportValue(ILcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;I)V

    .line 225
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/lge/view/TouchEventFilter;->needToSendAdditionalEvent:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/view/TouchEventFilter;->filteringResult:Lcom/lge/view/TouchEventFilter$DoAction;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/view/TouchEventFilter;->loopCount:I

    sget-boolean v8, Lcom/lge/view/TouchEventFilter;->isPortrait:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/lge/view/TouchEventFilter;->isPointerIDChanged:Z

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    invoke-static/range {v4 .. v10}, Lcom/lge/view/TouchEventFilter$PrintLog;->properties(IZLcom/lge/view/TouchEventFilter$DoAction;IZZI)V

    .line 226
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    const-string v6, "<NEW> "

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/view/TouchEventFilter;->filteringResult:Lcom/lge/view/TouchEventFilter$DoAction;

    sget-object v7, Lcom/lge/view/TouchEventFilter$DoAction;->DO_IGNORE:Lcom/lge/view/TouchEventFilter$DoAction;

    if-ne v4, v7, :cond_8

    const/4 v4, 0x1

    :goto_3
    invoke-static {v5, v6, v14, v4}, Lcom/lge/view/TouchEventFilter$PrintLog;->event(ILjava/lang/String;Landroid/view/MotionEvent;Z)V

    .line 228
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v4}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getCount()I

    move-result v4

    if-nez v4, :cond_7

    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/lge/view/TouchEventFilter;->initAllFilter()V

    :cond_7
    move-object/from16 p1, v14

    .line 231
    goto/16 :goto_0

    .line 226
    :cond_8
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private getAct(Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;)Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;
    .locals 2
    .parameter "oldAct"
    .parameter "newAct"

    .prologue
    .line 293
    invoke-virtual {p2}, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->getVal()I

    move-result v0

    invoke-virtual {p1}, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->getVal()I

    move-result v1

    if-le v0, v1, :cond_0

    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    move-object p2, p1

    goto :goto_0
.end method

.method private init(Lcom/lge/view/TouchEventFilter$DoDispatchMotionEvent;)V
    .locals 1
    .parameter "dispatch"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    invoke-direct {p0}, Lcom/lge/view/TouchEventFilter;->initReportValue()V

    .line 147
    invoke-direct {p0}, Lcom/lge/view/TouchEventFilter;->initProperties()V

    .line 149
    iput-object p1, p0, Lcom/lge/view/TouchEventFilter;->mDoDispatchMotionEvent:Lcom/lge/view/TouchEventFilter$DoDispatchMotionEvent;

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/view/TouchEventFilter;->useFilter:I

    .line 151
    return-void
.end method

.method private initAllFilter()V
    .locals 3

    .prologue
    .line 235
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/view/TouchEventFilter$IEventFilter;

    .line 237
    .local v0, eventFilter:Lcom/lge/view/TouchEventFilter$IEventFilter;
    invoke-interface {v0}, Lcom/lge/view/TouchEventFilter$IEventFilter;->init()V

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v0           #eventFilter:Lcom/lge/view/TouchEventFilter$IEventFilter;
    :cond_0
    invoke-direct {p0}, Lcom/lge/view/TouchEventFilter;->initReportValue()V

    .line 240
    invoke-direct {p0}, Lcom/lge/view/TouchEventFilter;->initProperties()V

    .line 241
    return-void
.end method

.method private initProperties()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    sget-object v0, Lcom/lge/view/TouchEventFilter$DoAction;->DO_NOTHING:Lcom/lge/view/TouchEventFilter$DoAction;

    invoke-direct {p0, v1, v0, v1}, Lcom/lge/view/TouchEventFilter;->setProperties(ZLcom/lge/view/TouchEventFilter$DoAction;I)V

    .line 165
    return-void
.end method

.method private initReportValue()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, v0, v0}, Lcom/lge/view/TouchEventFilter;->setReportValue(II)V

    .line 155
    return-void
.end method

.method private isFilterableEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    .line 251
    .local v7, source:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 252
    .local v1, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 254
    .local v0, NI:I
    and-int/lit8 v12, v7, 0x2

    if-nez v12, :cond_1

    const/4 v5, 0x1

    .line 255
    .local v5, invalidSource:Z
    :goto_0
    const/4 v6, 0x0

    .line 256
    .local v6, invalidToolType:Z
    const/4 v3, 0x0

    .line 257
    .local v3, invalidAction:Z
    const/4 v4, 0x0

    .line 259
    .local v4, invalidEvent:Z
    packed-switch v1, :pswitch_data_0

    .line 269
    :pswitch_0
    const/4 v3, 0x1

    .line 273
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 274
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    .line 275
    .local v8, toolType:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v11

    .line 276
    .local v11, z:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolMajor(I)F

    move-result v9

    .line 277
    .local v9, wM:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolMinor(I)F

    move-result v10

    .line 279
    .local v10, wm:F
    if-nez v8, :cond_0

    .line 280
    const/4 v6, 0x1

    .line 273
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 254
    .end local v2           #i:I
    .end local v3           #invalidAction:Z
    .end local v4           #invalidEvent:Z
    .end local v5           #invalidSource:Z
    .end local v6           #invalidToolType:Z
    .end local v8           #toolType:I
    .end local v9           #wM:F
    .end local v10           #wm:F
    .end local v11           #z:F
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 266
    .restart local v3       #invalidAction:Z
    .restart local v4       #invalidEvent:Z
    .restart local v5       #invalidSource:Z
    .restart local v6       #invalidToolType:Z
    :pswitch_1
    const/4 v3, 0x0

    .line 267
    goto :goto_1

    .line 286
    .restart local v2       #i:I
    :cond_2
    if-nez v5, :cond_3

    if-nez v6, :cond_3

    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    .line 287
    :cond_3
    const/4 v12, 0x0

    .line 289
    :goto_3
    return v12

    :cond_4
    const/4 v12, 0x1

    goto :goto_3

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setProperties(ZLcom/lge/view/TouchEventFilter$DoAction;I)V
    .locals 3
    .parameter "repeat"
    .parameter "result"
    .parameter "cnt"

    .prologue
    const/4 v0, 0x0

    .line 168
    iput-boolean p1, p0, Lcom/lge/view/TouchEventFilter;->needToSendAdditionalEvent:Z

    .line 169
    iput-object p2, p0, Lcom/lge/view/TouchEventFilter;->filteringResult:Lcom/lge/view/TouchEventFilter$DoAction;

    .line 170
    iput p3, p0, Lcom/lge/view/TouchEventFilter;->loopCount:I

    .line 171
    iput-boolean v0, p0, Lcom/lge/view/TouchEventFilter;->isPointerIDChanged:Z

    .line 172
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    .line 173
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :goto_0
    sput-boolean v0, Lcom/lge/view/TouchEventFilter;->isPortrait:Z

    .line 175
    :cond_0
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setReportValue(Landroid/view/MotionEvent;IILcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;)Lcom/lge/view/TouchEventFilter$DoAction;
    .locals 10
    .parameter "event"
    .parameter "newReportMask"
    .parameter "oldReportMask"
    .parameter "act"

    .prologue
    const/4 v9, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 300
    and-int v0, p2, p3

    .line 301
    .local v0, andMask:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v4

    .line 303
    .local v4, pointerIdBits:I
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->onlyNewMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    xor-int/lit8 v8, v0, -0x1

    and-int/2addr v8, p2

    invoke-virtual {v5, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 304
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->onlyOldMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    xor-int/lit8 v8, v0, -0x1

    and-int/2addr v8, p3

    invoke-virtual {v5, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 306
    sget-object v3, Lcom/lge/view/TouchEventFilter$DoAction;->DO_NOTHING:Lcom/lge/view/TouchEventFilter$DoAction;

    .line 311
    .local v3, mDoAction:Lcom/lge/view/TouchEventFilter$DoAction;
    sget-object v5, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->CANCEL:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    if-eq p4, v5, :cond_0

    sget-object v5, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->CANCEL_AND_REPEAT:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    if-ne p4, v5, :cond_3

    .line 312
    :cond_0
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5, p3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 313
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    iget-object v8, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 314
    const/4 v5, 0x3

    iput v5, p0, Lcom/lge/view/TouchEventFilter;->reportAction:I

    .line 349
    :goto_0
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->onlyOldMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getCount()I

    move-result v5

    iget-object v8, p0, Lcom/lge/view/TouchEventFilter;->onlyNewMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getCount()I

    move-result v8

    add-int/2addr v5, v8

    if-gt v5, v6, :cond_1

    sget-object v5, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->CANCEL_AND_REPEAT:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    if-ne p4, v5, :cond_b

    :cond_1
    iget v5, p0, Lcom/lge/view/TouchEventFilter;->loopCount:I

    if-ge v5, v9, :cond_b

    .line 350
    iput-boolean v6, p0, Lcom/lge/view/TouchEventFilter;->needToSendAdditionalEvent:Z

    .line 351
    iget v5, p0, Lcom/lge/view/TouchEventFilter;->loopCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/lge/view/TouchEventFilter;->loopCount:I

    .line 358
    :goto_1
    sget-object v5, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->IGNORE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    if-eq p4, v5, :cond_2

    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v5

    if-nez v5, :cond_c

    .line 359
    :cond_2
    sget-object v3, Lcom/lge/view/TouchEventFilter$DoAction;->DO_IGNORE:Lcom/lge/view/TouchEventFilter$DoAction;

    .line 365
    :goto_2
    iget v5, p0, Lcom/lge/view/TouchEventFilter;->loopCount:I

    if-lt v5, v9, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v6, :cond_e

    .line 366
    invoke-direct {p0, v4, v6}, Lcom/lge/view/TouchEventFilter;->errorHandlingOfFiltering(II)Lcom/lge/view/TouchEventFilter$DoAction;

    move-result-object v5

    .line 368
    :goto_3
    return-object v5

    .line 316
    :cond_3
    sget-object v5, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->IGNORE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    if-ne p4, v5, :cond_4

    .line 317
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearAllMask()I

    .line 318
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearAllMask()I

    .line 319
    const/4 v5, -0x1

    iput v5, p0, Lcom/lge/view/TouchEventFilter;->reportAction:I

    goto :goto_0

    .line 321
    :cond_4
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->onlyOldMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getCount()I

    move-result v5

    if-eqz v5, :cond_7

    .line 322
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->onlyOldMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getLastBitToID()I

    move-result v1

    .line 323
    .local v1, id:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 324
    .local v2, index:I
    if-gez v2, :cond_5

    .line 325
    invoke-direct {p0, v4, v6}, Lcom/lge/view/TouchEventFilter;->errorHandlingOfFiltering(II)Lcom/lge/view/TouchEventFilter$DoAction;

    move-result-object v5

    goto :goto_3

    .line 326
    :cond_5
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5, p3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 327
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    iget-object v8, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 328
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearMask(I)I

    .line 329
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getCount()I

    move-result v5

    if-ne v5, v6, :cond_6

    move v5, v6

    :goto_4
    iput v5, p0, Lcom/lge/view/TouchEventFilter;->reportAction:I

    goto/16 :goto_0

    :cond_6
    shl-int/lit8 v5, v2, 0x8

    or-int/lit8 v5, v5, 0x6

    goto :goto_4

    .line 332
    .end local v1           #id:I
    .end local v2           #index:I
    :cond_7
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->onlyNewMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getCount()I

    move-result v5

    if-eqz v5, :cond_a

    .line 333
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->onlyNewMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getLastBitToID()I

    move-result v1

    .line 334
    .restart local v1       #id:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 335
    .restart local v2       #index:I
    if-gez v2, :cond_8

    .line 336
    invoke-direct {p0, v4, v6}, Lcom/lge/view/TouchEventFilter;->errorHandlingOfFiltering(II)Lcom/lge/view/TouchEventFilter$DoAction;

    move-result-object v5

    goto :goto_3

    .line 337
    :cond_8
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5, v0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 338
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setMask(I)I

    .line 339
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    iget-object v8, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 340
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getCount()I

    move-result v5

    if-ne v5, v6, :cond_9

    move v5, v7

    :goto_5
    iput v5, p0, Lcom/lge/view/TouchEventFilter;->reportAction:I

    goto/16 :goto_0

    :cond_9
    shl-int/lit8 v5, v2, 0x8

    or-int/lit8 v5, v5, 0x5

    goto :goto_5

    .line 344
    .end local v1           #id:I
    .end local v2           #index:I
    :cond_a
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5, p2}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 345
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    iget-object v8, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    iput v5, p0, Lcom/lge/view/TouchEventFilter;->reportAction:I

    goto/16 :goto_0

    .line 354
    :cond_b
    iput-boolean v7, p0, Lcom/lge/view/TouchEventFilter;->needToSendAdditionalEvent:Z

    .line 355
    iput v7, p0, Lcom/lge/view/TouchEventFilter;->loopCount:I

    goto/16 :goto_1

    .line 360
    :cond_c
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v5

    if-eq v5, v4, :cond_d

    .line 361
    sget-object v3, Lcom/lge/view/TouchEventFilter$DoAction;->DO_SPLIT:Lcom/lge/view/TouchEventFilter$DoAction;

    goto/16 :goto_2

    .line 363
    :cond_d
    sget-object v3, Lcom/lge/view/TouchEventFilter$DoAction;->DO_NOTHING:Lcom/lge/view/TouchEventFilter$DoAction;

    goto/16 :goto_2

    :cond_e
    move-object v5, v3

    .line 368
    goto/16 :goto_3
.end method

.method private setReportValue(II)V
    .locals 1
    .parameter "mask"
    .parameter "action"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v0, p1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 159
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v0, p1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 160
    iput p2, p0, Lcom/lge/view/TouchEventFilter;->reportAction:I

    .line 161
    return-void
.end method


# virtual methods
.method public addTouchEventFilter(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "option"

    .prologue
    .line 104
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;

    invoke-direct {v2, p0, p1}, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;-><init>(Lcom/lge/view/TouchEventFilter;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-instance v2, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;

    invoke-direct {v2, p0, p1}, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;-><init>(Lcom/lge/view/TouchEventFilter;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-instance v2, Lcom/lge/view/TouchEventFilter$SensitivityFilter;

    invoke-direct {v2, p0, p1}, Lcom/lge/view/TouchEventFilter$SensitivityFilter;-><init>(Lcom/lge/view/TouchEventFilter;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-instance v2, Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    invoke-direct {v2, p0, p1}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;-><init>(Lcom/lge/view/TouchEventFilter;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_3
    iget v0, p0, Lcom/lge/view/TouchEventFilter;->useFilter:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/lge/view/TouchEventFilter;->useFilter:I

    .line 114
    iput-object p1, p0, Lcom/lge/view/TouchEventFilter;->mView:Landroid/view/View;

    .line 116
    iget v0, p0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    iget v1, p0, Lcom/lge/view/TouchEventFilter;->useFilter:I

    invoke-static {v0, p1, v1}, Lcom/lge/view/TouchEventFilter$PrintLog;->filterStatus(ILandroid/view/View;I)V

    .line 117
    return-void
.end method

.method public dispatchFilteredTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    .line 124
    const/4 v2, 0x1

    .line 126
    .local v2, handled:Z
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 128
    .local v4, start:J
    :cond_0
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/view/TouchEventFilter;->needToSendAdditionalEvent:Z

    .line 129
    invoke-direct {p0, p1}, Lcom/lge/view/TouchEventFilter;->filtering(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 131
    .local v3, newEvent:Landroid/view/MotionEvent;
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->filteringResult:Lcom/lge/view/TouchEventFilter$DoAction;

    sget-object v7, Lcom/lge/view/TouchEventFilter$DoAction;->DO_IGNORE:Lcom/lge/view/TouchEventFilter$DoAction;

    if-eq v6, v7, :cond_1

    if-eqz v3, :cond_1

    .line 132
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->mDoDispatchMotionEvent:Lcom/lge/view/TouchEventFilter$DoDispatchMotionEvent;

    invoke-interface {v6, v3}, Lcom/lge/view/TouchEventFilter$DoDispatchMotionEvent;->doDispatch(Landroid/view/MotionEvent;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 133
    if-eq v3, p1, :cond_1

    .line 134
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 136
    :cond_1
    iget-boolean v6, p0, Lcom/lge/view/TouchEventFilter;->needToSendAdditionalEvent:Z

    if-nez v6, :cond_0

    .line 138
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 139
    .local v0, end:J
    iget v6, p0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    invoke-static {v6, v4, v5, v0, v1}, Lcom/lge/view/TouchEventFilter$PrintLog;->checkTime(IJJ)V

    .line 141
    return v2
.end method
