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
    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/view/TouchEventFilter;->isPortrait:Z

    return-void
.end method

.method public constructor <init>(Lcom/lge/view/TouchEventFilter$DoDispatchMotionEvent;)V
    .locals 3
    .parameter "dispatch"

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v1, "debug.view.toucheventfilter"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter;->mView:Landroid/view/View;

    .line 78
    new-instance v1, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-direct {v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    .line 79
    new-instance v1, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-direct {v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    .line 80
    iput v2, p0, Lcom/lge/view/TouchEventFilter;->reportAction:I

    .line 83
    iput-boolean v2, p0, Lcom/lge/view/TouchEventFilter;->needToSendAdditionalEvent:Z

    .line 84
    sget-object v1, Lcom/lge/view/TouchEventFilter$DoAction;->DO_NOTHING:Lcom/lge/view/TouchEventFilter$DoAction;

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter;->filteringResult:Lcom/lge/view/TouchEventFilter$DoAction;

    .line 85
    iput v2, p0, Lcom/lge/view/TouchEventFilter;->loopCount:I

    .line 86
    iput-boolean v2, p0, Lcom/lge/view/TouchEventFilter;->isPointerIDChanged:Z

    .line 87
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    .line 91
    iput v2, p0, Lcom/lge/view/TouchEventFilter;->useFilter:I

    .line 312
    new-instance v1, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-direct {v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter;->onlyNewMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    .line 313
    new-instance v1, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-direct {v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter;->onlyOldMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    .line 97
    invoke-direct {p0, p1}, Lcom/lge/view/TouchEventFilter;->init(Lcom/lge/view/TouchEventFilter$DoDispatchMotionEvent;)V

    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    new-instance v2, Lcom/lge/view/TouchEventFilter$EmptyFilter;

    invoke-direct {v2, p0}, Lcom/lge/view/TouchEventFilter$EmptyFilter;-><init>(Lcom/lge/view/TouchEventFilter;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    new-instance v2, Lcom/lge/view/TouchEventFilter$EssentialFilter;

    invoke-direct {v2, p0}, Lcom/lge/view/TouchEventFilter$EssentialFilter;-><init>(Lcom/lge/view/TouchEventFilter;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/lge/view/TouchEventFilter;->isPortrait:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lge/view/TouchEventFilter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    return v0
.end method

.method static synthetic access$600(Lcom/lge/view/TouchEventFilter;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter;->mView:Landroid/view/View;

    return-object v0
.end method

.method private checkPointerID(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 398
    iget-object v8, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v9

    if-eq v8, v9, :cond_2

    move v5, v6

    .line 399
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

    .line 400
    .local v4, isActionDownButIdNotZero:Z
    :goto_1
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 401
    iput-boolean v6, p0, Lcom/lge/view/TouchEventFilter;->isPointerIDChanged:Z

    .line 402
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v6}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getLastBitToID()I

    move-result v6

    iput v6, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    .line 405
    :cond_0
    iget-boolean v6, p0, Lcom/lge/view/TouchEventFilter;->isPointerIDChanged:Z

    if-eqz v6, :cond_1

    .line 406
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    iget v8, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    invoke-virtual {v6, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->checkMask(I)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v6, v7}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->checkMask(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 407
    iput-boolean v7, p0, Lcom/lge/view/TouchEventFilter;->isPointerIDChanged:Z

    .line 408
    const/4 v6, -0x1

    iput v6, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    .line 432
    :cond_1
    :goto_2
    return-void

    .end local v4           #isActionDownButIdNotZero:Z
    .end local v5           #isFiltered:Z
    :cond_2
    move v5, v7

    .line 398
    goto :goto_0

    .restart local v5       #isFiltered:Z
    :cond_3
    move v4, v7

    .line 399
    goto :goto_1

    .line 411
    .restart local v4       #isActionDownButIdNotZero:Z
    :cond_4
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 412
    .local v2, index1:I
    iget v6, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 413
    .local v3, index2:I
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v6, v7}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->checkMask(I)Z

    move-result v1

    .line 414
    .local v1, idZeroShouldReport:Z
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    iget v8, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    invoke-virtual {v6, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->checkMask(I)Z

    move-result v0

    .line 416
    .local v0, idSavedShouldReport:Z
    if-ltz v2, :cond_5

    .line 417
    iget v6, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    invoke-virtual {p1, v2, v6}, Landroid/view/MotionEvent;->setPointerId(II)V

    .line 418
    if-eqz v1, :cond_6

    .line 419
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    iget v8, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    invoke-virtual {v6, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setMask(I)I

    .line 423
    :cond_5
    :goto_3
    if-ltz v3, :cond_1

    .line 424
    invoke-virtual {p1, v3, v7}, Landroid/view/MotionEvent;->setPointerId(II)V

    .line 425
    if-eqz v0, :cond_7

    .line 426
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v6, v7}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setMask(I)I

    goto :goto_2

    .line 421
    :cond_6
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    iget v8, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    invoke-virtual {v6, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearMask(I)I

    goto :goto_3

    .line 428
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
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/lge/view/TouchEventFilter;->setReportValue(II)V

    .line 261
    invoke-direct {p0}, Lcom/lge/view/TouchEventFilter;->initProperties()V

    .line 262
    sget-object v0, Lcom/lge/view/TouchEventFilter$DoAction;->DO_NOTHING:Lcom/lge/view/TouchEventFilter$DoAction;

    return-object v0
.end method

.method private filtering(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 20
    .parameter "event"

    .prologue
    .line 184
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/view/TouchEventFilter;->useFilter:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    .line 185
    const/4 v4, 0x1

    const-string v5, "<OLD> "

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0, v6}, Lcom/lge/view/TouchEventFilter$PrintLog;->event(ILjava/lang/String;Landroid/view/MotionEvent;Z)V

    .line 190
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/lge/view/TouchEventFilter;->isFilterableEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/lge/view/TouchEventFilter;->initAllFilter()V

    .line 192
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    const-string v5, "<NOT> "

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0, v6}, Lcom/lge/view/TouchEventFilter$PrintLog;->event(ILjava/lang/String;Landroid/view/MotionEvent;Z)V

    .line 247
    .end local p1
    :goto_1
    return-object p1

    .line 187
    .restart local p1
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    const-string v5, "<OLD> "

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0, v6}, Lcom/lge/view/TouchEventFilter$PrintLog;->event(ILjava/lang/String;Landroid/view/MotionEvent;Z)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v18

    .line 197
    .local v18, pointerIdBits:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    .line 198
    .local v15, oldAction:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v16

    .line 200
    .local v16, oldActionMasked:I
    move/from16 v19, v18

    .line 201
    .local v19, reportMask:I
    sget-object v11, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->NONE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 202
    .local v11, act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;
    sget-object v4, Lcom/lge/view/TouchEventFilter$DoAction;->DO_NOTHING:Lcom/lge/view/TouchEventFilter$DoAction;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lge/view/TouchEventFilter;->filteringResult:Lcom/lge/view/TouchEventFilter$DoAction;

    .line 204
    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/view/TouchEventFilter;->loopCount:I

    if-nez v4, :cond_2

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/lge/view/TouchEventFilter;->initAllFilter()V

    .line 207
    :cond_2
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_4

    .line 208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/view/TouchEventFilter$IEventFilter;

    .line 209
    .local v12, eventFilter:Lcom/lge/view/TouchEventFilter$IEventFilter;
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter;->filtering(Landroid/view/MotionEvent;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 207
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 212
    :cond_3
    invoke-interface {v12}, Lcom/lge/view/TouchEventFilter$IEventFilter;->getReportMask()I

    move-result v4

    and-int v19, v19, v4

    .line 213
    invoke-interface {v12}, Lcom/lge/view/TouchEventFilter$IEventFilter;->getAct()Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/lge/view/TouchEventFilter;->getAct(Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;)Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    move-result-object v11

    .line 215
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v4, v12, v0, v1, v11}, Lcom/lge/view/TouchEventFilter$PrintLog;->filtering(ILcom/lge/view/TouchEventFilter$IEventFilter;IILcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;)V

    goto :goto_3

    .line 218
    .end local v12           #eventFilter:Lcom/lge/view/TouchEventFilter$IEventFilter;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v4}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v17

    .line 219
    .local v17, oldReportMask:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/lge/view/TouchEventFilter;->setReportValue(Landroid/view/MotionEvent;IILcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;)Lcom/lge/view/TouchEventFilter$DoAction;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lge/view/TouchEventFilter;->filteringResult:Lcom/lge/view/TouchEventFilter$DoAction;

    .line 220
    invoke-direct/range {p0 .. p1}, Lcom/lge/view/TouchEventFilter;->checkPointerID(Landroid/view/MotionEvent;)V

    .line 222
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/view/TouchEventFilter;->reportAction:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 225
    move-object/from16 v14, p1

    .line 226
    .local v14, newEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/view/TouchEventFilter;->filteringResult:Lcom/lge/view/TouchEventFilter$DoAction;

    sget-object v5, Lcom/lge/view/TouchEventFilter$DoAction;->DO_SPLIT:Lcom/lge/view/TouchEventFilter$DoAction;

    if-ne v4, v5, :cond_5

    .line 227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v4}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v14

    .line 228
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lge/view/TouchEventFilter;->needToSendAdditionalEvent:Z

    if-eqz v4, :cond_7

    .line 229
    move-object/from16 v0, p1

    if-ne v14, v0, :cond_6

    .line 230
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v14

    .line 231
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->setAction(I)V

    .line 234
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/view/TouchEventFilter;->reportAction:I

    invoke-static {v4, v5, v6, v7}, Lcom/lge/view/TouchEventFilter$PrintLog;->reportValue(ILcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;I)V

    .line 235
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

    .line 238
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/view/TouchEventFilter;->useFilter:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_a

    .line 239
    const/4 v5, 0x1

    const-string v6, "<NEW> "

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/view/TouchEventFilter;->filteringResult:Lcom/lge/view/TouchEventFilter$DoAction;

    sget-object v7, Lcom/lge/view/TouchEventFilter$DoAction;->DO_IGNORE:Lcom/lge/view/TouchEventFilter$DoAction;

    if-ne v4, v7, :cond_9

    const/4 v4, 0x1

    :goto_4
    invoke-static {v5, v6, v14, v4}, Lcom/lge/view/TouchEventFilter$PrintLog;->event(ILjava/lang/String;Landroid/view/MotionEvent;Z)V

    .line 244
    :goto_5
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v4}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getCount()I

    move-result v4

    if-nez v4, :cond_8

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/lge/view/TouchEventFilter;->initAllFilter()V

    :cond_8
    move-object/from16 p1, v14

    .line 247
    goto/16 :goto_1

    .line 239
    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 241
    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    const-string v6, "<NEW> "

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/view/TouchEventFilter;->filteringResult:Lcom/lge/view/TouchEventFilter$DoAction;

    sget-object v7, Lcom/lge/view/TouchEventFilter$DoAction;->DO_IGNORE:Lcom/lge/view/TouchEventFilter$DoAction;

    if-ne v4, v7, :cond_b

    const/4 v4, 0x1

    :goto_6
    invoke-static {v5, v6, v14, v4}, Lcom/lge/view/TouchEventFilter$PrintLog;->event(ILjava/lang/String;Landroid/view/MotionEvent;Z)V

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    goto :goto_6
.end method

.method private getAct(Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;)Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;
    .locals 2
    .parameter "oldAct"
    .parameter "newAct"

    .prologue
    .line 309
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
    .line 149
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    invoke-direct {p0}, Lcom/lge/view/TouchEventFilter;->initReportValue()V

    .line 151
    invoke-direct {p0}, Lcom/lge/view/TouchEventFilter;->initProperties()V

    .line 153
    iput-object p1, p0, Lcom/lge/view/TouchEventFilter;->mDoDispatchMotionEvent:Lcom/lge/view/TouchEventFilter$DoDispatchMotionEvent;

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/view/TouchEventFilter;->useFilter:I

    .line 155
    return-void
.end method

.method private initAllFilter()V
    .locals 3

    .prologue
    .line 251
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/view/TouchEventFilter$IEventFilter;

    .line 253
    .local v0, eventFilter:Lcom/lge/view/TouchEventFilter$IEventFilter;
    invoke-interface {v0}, Lcom/lge/view/TouchEventFilter$IEventFilter;->init()V

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v0           #eventFilter:Lcom/lge/view/TouchEventFilter$IEventFilter;
    :cond_0
    invoke-direct {p0}, Lcom/lge/view/TouchEventFilter;->initReportValue()V

    .line 256
    invoke-direct {p0}, Lcom/lge/view/TouchEventFilter;->initProperties()V

    .line 257
    return-void
.end method

.method private initProperties()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    sget-object v0, Lcom/lge/view/TouchEventFilter$DoAction;->DO_NOTHING:Lcom/lge/view/TouchEventFilter$DoAction;

    invoke-direct {p0, v1, v0, v1}, Lcom/lge/view/TouchEventFilter;->setProperties(ZLcom/lge/view/TouchEventFilter$DoAction;I)V

    .line 169
    return-void
.end method

.method private initReportValue()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0, v0}, Lcom/lge/view/TouchEventFilter;->setReportValue(II)V

    .line 159
    return-void
.end method

.method private isFilterableEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    .line 267
    .local v7, source:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 268
    .local v1, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 270
    .local v0, NI:I
    and-int/lit8 v12, v7, 0x2

    if-nez v12, :cond_1

    const/4 v5, 0x1

    .line 271
    .local v5, invalidSource:Z
    :goto_0
    const/4 v6, 0x0

    .line 272
    .local v6, invalidToolType:Z
    const/4 v3, 0x0

    .line 273
    .local v3, invalidAction:Z
    const/4 v4, 0x0

    .line 275
    .local v4, invalidEvent:Z
    packed-switch v1, :pswitch_data_0

    .line 285
    :pswitch_0
    const/4 v3, 0x1

    .line 289
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 290
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    .line 291
    .local v8, toolType:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v11

    .line 292
    .local v11, z:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolMajor(I)F

    move-result v9

    .line 293
    .local v9, wM:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolMinor(I)F

    move-result v10

    .line 295
    .local v10, wm:F
    if-nez v8, :cond_0

    .line 296
    const/4 v6, 0x1

    .line 289
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 270
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

    .line 282
    .restart local v3       #invalidAction:Z
    .restart local v4       #invalidEvent:Z
    .restart local v5       #invalidSource:Z
    .restart local v6       #invalidToolType:Z
    :pswitch_1
    const/4 v3, 0x0

    .line 283
    goto :goto_1

    .line 302
    .restart local v2       #i:I
    :cond_2
    if-nez v5, :cond_3

    if-nez v6, :cond_3

    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    .line 303
    :cond_3
    const/4 v12, 0x0

    .line 305
    :goto_3
    return v12

    :cond_4
    const/4 v12, 0x1

    goto :goto_3

    .line 275
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

    .line 172
    iput-boolean p1, p0, Lcom/lge/view/TouchEventFilter;->needToSendAdditionalEvent:Z

    .line 173
    iput-object p2, p0, Lcom/lge/view/TouchEventFilter;->filteringResult:Lcom/lge/view/TouchEventFilter$DoAction;

    .line 174
    iput p3, p0, Lcom/lge/view/TouchEventFilter;->loopCount:I

    .line 175
    iput-boolean v0, p0, Lcom/lge/view/TouchEventFilter;->isPointerIDChanged:Z

    .line 176
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/view/TouchEventFilter;->savedPointerChangedID:I

    .line 177
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 178
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

    .line 179
    :cond_0
    return-void

    .line 178
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

    .line 316
    and-int v0, p2, p3

    .line 317
    .local v0, andMask:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v4

    .line 319
    .local v4, pointerIdBits:I
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->onlyNewMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    xor-int/lit8 v8, v0, -0x1

    and-int/2addr v8, p2

    invoke-virtual {v5, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 320
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->onlyOldMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    xor-int/lit8 v8, v0, -0x1

    and-int/2addr v8, p3

    invoke-virtual {v5, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 322
    sget-object v3, Lcom/lge/view/TouchEventFilter$DoAction;->DO_NOTHING:Lcom/lge/view/TouchEventFilter$DoAction;

    .line 327
    .local v3, mDoAction:Lcom/lge/view/TouchEventFilter$DoAction;
    sget-object v5, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->CANCEL:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    if-eq p4, v5, :cond_0

    sget-object v5, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->CANCEL_AND_REPEAT:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    if-ne p4, v5, :cond_3

    .line 328
    :cond_0
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5, p3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 329
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    iget-object v8, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 330
    const/4 v5, 0x3

    iput v5, p0, Lcom/lge/view/TouchEventFilter;->reportAction:I

    .line 365
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

    .line 366
    iput-boolean v6, p0, Lcom/lge/view/TouchEventFilter;->needToSendAdditionalEvent:Z

    .line 367
    iget v5, p0, Lcom/lge/view/TouchEventFilter;->loopCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/lge/view/TouchEventFilter;->loopCount:I

    .line 374
    :goto_1
    sget-object v5, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->IGNORE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    if-eq p4, v5, :cond_2

    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v5

    if-nez v5, :cond_c

    .line 375
    :cond_2
    sget-object v3, Lcom/lge/view/TouchEventFilter$DoAction;->DO_IGNORE:Lcom/lge/view/TouchEventFilter$DoAction;

    .line 381
    :goto_2
    iget v5, p0, Lcom/lge/view/TouchEventFilter;->loopCount:I

    if-lt v5, v9, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v6, :cond_e

    .line 382
    invoke-direct {p0, v4, v6}, Lcom/lge/view/TouchEventFilter;->errorHandlingOfFiltering(II)Lcom/lge/view/TouchEventFilter$DoAction;

    move-result-object v5

    .line 384
    :goto_3
    return-object v5

    .line 332
    :cond_3
    sget-object v5, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->IGNORE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    if-ne p4, v5, :cond_4

    .line 333
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearAllMask()I

    .line 334
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearAllMask()I

    .line 335
    const/4 v5, -0x1

    iput v5, p0, Lcom/lge/view/TouchEventFilter;->reportAction:I

    goto :goto_0

    .line 337
    :cond_4
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->onlyOldMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getCount()I

    move-result v5

    if-eqz v5, :cond_7

    .line 338
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->onlyOldMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getLastBitToID()I

    move-result v1

    .line 339
    .local v1, id:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 340
    .local v2, index:I
    if-gez v2, :cond_5

    .line 341
    invoke-direct {p0, v4, v6}, Lcom/lge/view/TouchEventFilter;->errorHandlingOfFiltering(II)Lcom/lge/view/TouchEventFilter$DoAction;

    move-result-object v5

    goto :goto_3

    .line 342
    :cond_5
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5, p3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 343
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    iget-object v8, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 344
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearMask(I)I

    .line 345
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

    .line 348
    .end local v1           #id:I
    .end local v2           #index:I
    :cond_7
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->onlyNewMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getCount()I

    move-result v5

    if-eqz v5, :cond_a

    .line 349
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->onlyNewMaskBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getLastBitToID()I

    move-result v1

    .line 350
    .restart local v1       #id:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 351
    .restart local v2       #index:I
    if-gez v2, :cond_8

    .line 352
    invoke-direct {p0, v4, v6}, Lcom/lge/view/TouchEventFilter;->errorHandlingOfFiltering(II)Lcom/lge/view/TouchEventFilter$DoAction;

    move-result-object v5

    goto :goto_3

    .line 353
    :cond_8
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5, v0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 354
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setMask(I)I

    .line 355
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    iget-object v8, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 356
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

    .line 360
    .end local v1           #id:I
    .end local v2           #index:I
    :cond_a
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5, p2}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 361
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    iget-object v8, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 362
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    iput v5, p0, Lcom/lge/view/TouchEventFilter;->reportAction:I

    goto/16 :goto_0

    .line 370
    :cond_b
    iput-boolean v7, p0, Lcom/lge/view/TouchEventFilter;->needToSendAdditionalEvent:Z

    .line 371
    iput v7, p0, Lcom/lge/view/TouchEventFilter;->loopCount:I

    goto/16 :goto_1

    .line 376
    :cond_c
    iget-object v5, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v5

    if-eq v5, v4, :cond_d

    .line 377
    sget-object v3, Lcom/lge/view/TouchEventFilter$DoAction;->DO_SPLIT:Lcom/lge/view/TouchEventFilter$DoAction;

    goto/16 :goto_2

    .line 379
    :cond_d
    sget-object v3, Lcom/lge/view/TouchEventFilter$DoAction;->DO_NOTHING:Lcom/lge/view/TouchEventFilter$DoAction;

    goto/16 :goto_2

    :cond_e
    move-object v5, v3

    .line 384
    goto/16 :goto_3
.end method

.method private setReportValue(II)V
    .locals 1
    .parameter "mask"
    .parameter "action"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter;->reportIDBits:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v0, p1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 163
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter;->reportIDBitsWithoutUpEvent:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v0, p1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 164
    iput p2, p0, Lcom/lge/view/TouchEventFilter;->reportAction:I

    .line 165
    return-void
.end method


# virtual methods
.method public addTouchEventFilter(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "option"

    .prologue
    .line 108
    iget v0, p0, Lcom/lge/view/TouchEventFilter;->useFilter:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/lge/view/TouchEventFilter;->useFilter:I

    .line 109
    iput-object p1, p0, Lcom/lge/view/TouchEventFilter;->mView:Landroid/view/View;

    .line 111
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;

    invoke-direct {v2, p0, p1}, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;-><init>(Lcom/lge/view/TouchEventFilter;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-instance v2, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;

    invoke-direct {v2, p0, p1}, Lcom/lge/view/TouchEventFilter$GripSuppressionFilter;-><init>(Lcom/lge/view/TouchEventFilter;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-instance v2, Lcom/lge/view/TouchEventFilter$SensitivityFilter;

    invoke-direct {v2, p0, p1}, Lcom/lge/view/TouchEventFilter$SensitivityFilter;-><init>(Lcom/lge/view/TouchEventFilter;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter;->mEventFilter:Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-instance v2, Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    invoke-direct {v2, p0, p1}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;-><init>(Lcom/lge/view/TouchEventFilter;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_3
    iget v0, p0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    iget v1, p0, Lcom/lge/view/TouchEventFilter;->useFilter:I

    invoke-static {v0, p1, v1}, Lcom/lge/view/TouchEventFilter$PrintLog;->filterStatus(ILandroid/view/View;I)V

    .line 121
    return-void
.end method

.method public dispatchFilteredTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    .line 128
    const/4 v2, 0x1

    .line 130
    .local v2, handled:Z
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 132
    .local v4, start:J
    :cond_0
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/view/TouchEventFilter;->needToSendAdditionalEvent:Z

    .line 133
    invoke-direct {p0, p1}, Lcom/lge/view/TouchEventFilter;->filtering(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 135
    .local v3, newEvent:Landroid/view/MotionEvent;
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->filteringResult:Lcom/lge/view/TouchEventFilter$DoAction;

    sget-object v7, Lcom/lge/view/TouchEventFilter$DoAction;->DO_IGNORE:Lcom/lge/view/TouchEventFilter$DoAction;

    if-eq v6, v7, :cond_1

    if-eqz v3, :cond_1

    .line 136
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter;->mDoDispatchMotionEvent:Lcom/lge/view/TouchEventFilter$DoDispatchMotionEvent;

    invoke-interface {v6, v3}, Lcom/lge/view/TouchEventFilter$DoDispatchMotionEvent;->doDispatch(Landroid/view/MotionEvent;)Z

    move-result v6

    and-int/2addr v2, v6

    .line 137
    if-eq v3, p1, :cond_1

    .line 138
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 140
    :cond_1
    iget-boolean v6, p0, Lcom/lge/view/TouchEventFilter;->needToSendAdditionalEvent:Z

    if-nez v6, :cond_0

    .line 142
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 143
    .local v0, end:J
    iget v6, p0, Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I

    invoke-static {v6, v4, v5, v0, v1}, Lcom/lge/view/TouchEventFilter$PrintLog;->checkTime(IJJ)V

    .line 145
    return v2
.end method
