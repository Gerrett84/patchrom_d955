.class Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sCached:[Landroid/text/TextLine;


# instance fields
.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mEmojiPaint:Landroid/graphics/Paint;

.field private mHasTabs:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private final mWorkPaint:Landroid/text/TextPaint;

.field private mZWLeftOffset:I

.field private mZWRightOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 66
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    .line 68
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 70
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    .line 79
    iput v2, p0, Landroid/text/TextLine;->mZWLeftOffset:I

    .line 80
    iput v2, p0, Landroid/text/TextLine;->mZWRightOffset:I

    .line 1330
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/TextLine;->mEmojiPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private adjustSpanRangeForLiguatures(Landroid/text/TextPaint;IIIIZ)Z
    .locals 22
    .parameter "wp"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "runIsRtl"

    .prologue
    .line 1197
    sub-int v21, p3, p2

    .line 1198
    .local v21, runLen:I
    const/16 v19, 0x0

    .line 1201
    .local v19, pos:I
    if-nez v21, :cond_0

    .line 1202
    const/4 v1, 0x0

    .line 1234
    :goto_0
    return v1

    .line 1205
    :cond_0
    sub-int v4, p5, p4

    .line 1206
    .local v4, contextLen:I
    if-eqz p6, :cond_1

    const/4 v7, 0x1

    .line 1207
    .local v7, flags:I
    :goto_1
    new-array v8, v4, [F

    .line 1209
    .local v8, advances:[F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_2

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    const/4 v9, 0x0

    move-object/from16 v1, p1

    move/from16 v3, p4

    move/from16 v5, p4

    move v6, v4

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    .line 1219
    :goto_2
    sub-int v19, p2, p4

    move/from16 v20, v19

    .line 1222
    .end local v19           #pos:I
    .local v20, pos:I
    :goto_3
    if-ltz v20, :cond_3

    add-int/lit8 v19, v20, -0x1

    .end local v20           #pos:I
    .restart local v19       #pos:I
    aget v1, v8, v20

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_4

    .line 1223
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mZWLeftOffset:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/text/TextLine;->mZWLeftOffset:I

    move/from16 v20, v19

    .end local v19           #pos:I
    .restart local v20       #pos:I
    goto :goto_3

    .line 1206
    .end local v7           #flags:I
    .end local v8           #advances:[F
    .end local v20           #pos:I
    .restart local v19       #pos:I
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1213
    .restart local v7       #flags:I
    .restart local v8       #advances:[F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v18, v0

    .line 1214
    .local v18, delta:I
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v11, v18, p4

    add-int v12, v18, p5

    add-int v13, v18, p4

    add-int v14, v18, p5

    const/16 v17, 0x0

    move-object/from16 v9, p1

    move v15, v7

    move-object/from16 v16, v8

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FI)F

    goto :goto_2

    .end local v18           #delta:I
    .end local v19           #pos:I
    .restart local v20       #pos:I
    :cond_3
    move/from16 v19, v20

    .line 1226
    .end local v20           #pos:I
    .restart local v19       #pos:I
    :cond_4
    sub-int v19, p3, p4

    move/from16 v20, v19

    .line 1227
    .end local v19           #pos:I
    .restart local v20       #pos:I
    :goto_4
    sub-int v1, p5, p4

    move/from16 v0, v20

    if-ge v0, v1, :cond_5

    add-int/lit8 v19, v20, 0x1

    .end local v20           #pos:I
    .restart local v19       #pos:I
    aget v1, v8, v20

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_6

    .line 1228
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mZWRightOffset:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/text/TextLine;->mZWRightOffset:I

    move/from16 v20, v19

    .end local v19           #pos:I
    .restart local v20       #pos:I
    goto :goto_4

    :cond_5
    move/from16 v19, v20

    .line 1232
    .end local v20           #pos:I
    .restart local v19       #pos:I
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mZWLeftOffset:I

    if-gtz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mZWRightOffset:I

    if-lez v1, :cond_8

    .line 1233
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1234
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .locals 14
    .parameter "c"
    .parameter "start"
    .parameter "limit"
    .parameter "runIsRtl"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "needWidth"

    .prologue
    .line 583
    iget v1, p0, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move/from16 v0, p4

    if-ne v1, v0, :cond_1

    .line 584
    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    neg-float v13, v1

    .line 585
    .local v13, w:F
    add-float v7, p5, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    .line 590
    .end local v13           #w:F
    :goto_1
    return v13

    .line 583
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 590
    :cond_1
    const/4 v11, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v13

    goto :goto_1
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .locals 21
    .parameter "c"
    .parameter "wp"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "runIsRtl"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1254
    if-eqz p7, :cond_0

    const/4 v9, 0x1

    .line 1255
    .local v9, flags:I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_1

    .line 1256
    sub-int v4, p4, p3

    .line 1257
    .local v4, count:I
    sub-int v6, p6, p5

    .line 1258
    .local v6, contextCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    move/from16 v0, p9

    int-to-float v8, v0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p8

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    .line 1265
    .end local v4           #count:I
    .end local v6           #contextCount:I
    :goto_1
    return-void

    .line 1254
    .end local v9           #flags:I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1261
    .restart local v9       #flags:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v20, v0

    .line 1262
    .local v20, delta:I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v12, v20, p3

    add-int v13, v20, p4

    add-int v14, v20, p5

    add-int v15, v20, p6

    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v10, p1

    move/from16 v16, p8

    move/from16 v18, v9

    move-object/from16 v19, p2

    invoke-virtual/range {v10 .. v19}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 6
    .parameter "fmi"
    .parameter "wp"

    .prologue
    .line 877
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 878
    .local v1, previousTop:I
    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 879
    .local v2, previousAscent:I
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 880
    .local v3, previousDescent:I
    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 881
    .local v4, previousBottom:I
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 883
    .local v5, previousLeading:I
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, p0

    .line 885
    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 887
    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .locals 23
    .parameter "runIndex"
    .parameter "runStart"
    .parameter "runLimit"
    .parameter "runIsRtl"
    .parameter "offset"
    .parameter "after"

    .prologue
    .line 810
    if-ltz p1, :cond_0

    if-eqz p6, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    :goto_0
    move/from16 v0, p5

    if-ne v0, v3, :cond_4

    .line 814
    :cond_0
    if-eqz p6, :cond_3

    .line 815
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    .line 868
    :cond_1
    :goto_1
    return v20

    .line 810
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 817
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    goto :goto_1

    .line 820
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 821
    .local v2, wp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 823
    move/from16 v4, p2

    .line 825
    .local v4, spanStart:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v3, :cond_6

    .line 826
    move/from16 v20, p3

    .line 862
    .local v20, spanLimit:I
    :cond_5
    if-eqz p4, :cond_b

    const/4 v6, 0x1

    .line 863
    .local v6, flags:I
    :goto_2
    if-eqz p6, :cond_c

    const/4 v8, 0x0

    .line 864
    .local v8, cursorOpt:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v3, :cond_d

    .line 865
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    sub-int v5, v20, v4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Landroid/text/TextPaint;->getTextRunCursor([CIIIII)I

    move-result v20

    goto :goto_1

    .line 828
    .end local v6           #flags:I
    .end local v8           #cursorOpt:I
    .end local v20           #spanLimit:I
    :cond_6
    if-eqz p6, :cond_7

    add-int/lit8 v22, p5, 0x1

    .line 829
    .local v22, target:I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v17, v3, p3

    .line 831
    .local v17, limit:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    const-class v7, Landroid/text/style/MetricAffectingSpan;

    move/from16 v0, v17

    invoke-interface {v3, v5, v0, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    .line 833
    .restart local v20       #spanLimit:I
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_8

    .line 839
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, v20

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v3, v5, v7, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    .line 841
    .local v21, spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    .end local v21           #spans:[Landroid/text/style/MetricAffectingSpan;
    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    .line 843
    .restart local v21       #spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v21

    array-length v3, v0

    if-lez v3, :cond_5

    .line 844
    const/16 v18, 0x0

    .line 845
    .local v18, replacement:Landroid/text/style/ReplacementSpan;
    const/16 v16, 0x0

    .local v16, j:I
    :goto_6
    move-object/from16 v0, v21

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_a

    .line 846
    aget-object v19, v21, v16

    .line 847
    .local v19, span:Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_9

    move-object/from16 v18, v19

    .line 848
    check-cast v18, Landroid/text/style/ReplacementSpan;

    .line 845
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .end local v16           #j:I
    .end local v17           #limit:I
    .end local v18           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v19           #span:Landroid/text/style/MetricAffectingSpan;
    .end local v20           #spanLimit:I
    .end local v21           #spans:[Landroid/text/style/MetricAffectingSpan;
    .end local v22           #target:I
    :cond_7
    move/from16 v22, p5

    .line 828
    goto :goto_4

    .line 836
    .restart local v17       #limit:I
    .restart local v20       #spanLimit:I
    .restart local v22       #target:I
    :cond_8
    move/from16 v4, v20

    goto :goto_5

    .line 850
    .restart local v16       #j:I
    .restart local v18       #replacement:Landroid/text/style/ReplacementSpan;
    .restart local v19       #span:Landroid/text/style/MetricAffectingSpan;
    .restart local v21       #spans:[Landroid/text/style/MetricAffectingSpan;
    :cond_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_7

    .line 854
    .end local v19           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_a
    if-eqz v18, :cond_5

    .line 857
    if-nez p6, :cond_1

    move/from16 v20, v4

    goto/16 :goto_1

    .line 862
    .end local v16           #j:I
    .end local v17           #limit:I
    .end local v18           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v21           #spans:[Landroid/text/style/MetricAffectingSpan;
    .end local v22           #target:I
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 863
    .restart local v6       #flags:I
    :cond_c
    const/4 v8, 0x2

    goto/16 :goto_3

    .line 868
    .restart local v8       #cursorOpt:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v11, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v3, v20

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v14, v3, p5

    move-object v9, v2

    move v13, v6

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    goto/16 :goto_1
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 24
    .parameter "replacement"
    .parameter "wp"
    .parameter "start"
    .parameter "limit"
    .parameter "runIsRtl"
    .parameter "c"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "needWidth"

    .prologue
    .line 1015
    const/16 v23, 0x0

    .line 1017
    .local v23, ret:F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v1, p3

    .line 1018
    .local v4, textStart:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v1, p4

    .line 1020
    .local v5, textLimit:I
    if-nez p12, :cond_0

    if-eqz p6, :cond_2

    if-eqz p5, :cond_2

    .line 1021
    :cond_0
    const/4 v7, 0x0

    .line 1022
    .local v7, previousTop:I
    const/4 v8, 0x0

    .line 1023
    .local v8, previousAscent:I
    const/4 v9, 0x0

    .line 1024
    .local v9, previousDescent:I
    const/4 v10, 0x0

    .line 1025
    .local v10, previousBottom:I
    const/4 v11, 0x0

    .line 1027
    .local v11, previousLeading:I
    if-eqz p11, :cond_6

    const/16 v22, 0x1

    .line 1029
    .local v22, needUpdateMetrics:Z
    :goto_0
    if-eqz v22, :cond_1

    .line 1030
    move-object/from16 v0, p11

    iget v7, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1031
    move-object/from16 v0, p11

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1032
    move-object/from16 v0, p11

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1033
    move-object/from16 v0, p11

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1034
    move-object/from16 v0, p11

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 1037
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p11

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    int-to-float v0, v1

    move/from16 v23, v0

    .line 1039
    if-eqz v22, :cond_2

    move-object/from16 v6, p11

    .line 1040
    invoke-static/range {v6 .. v11}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 1045
    .end local v7           #previousTop:I
    .end local v8           #previousAscent:I
    .end local v9           #previousDescent:I
    .end local v10           #previousBottom:I
    .end local v11           #previousLeading:I
    .end local v22           #needUpdateMetrics:Z
    :cond_2
    if-eqz p6, :cond_4

    .line 1046
    if-eqz p5, :cond_3

    .line 1047
    sub-float p7, p7, v23

    .line 1049
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move/from16 v20, p10

    move-object/from16 v21, p2

    invoke-virtual/range {v12 .. v21}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 1053
    :cond_4
    if-eqz p5, :cond_5

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    .end local v23           #ret:F
    :cond_5
    return v23

    .line 1027
    .restart local v7       #previousTop:I
    .restart local v8       #previousAscent:I
    .restart local v9       #previousDescent:I
    .restart local v10       #previousBottom:I
    .restart local v11       #previousLeading:I
    .restart local v23       #ret:F
    :cond_6
    const/16 v22, 0x0

    goto :goto_0
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 32
    .parameter "start"
    .parameter "measureLimit"
    .parameter "limit"
    .parameter "runIsRtl"
    .parameter "c"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "needWidth"

    .prologue
    .line 1080
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 1081
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1082
    .local v3, wp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1083
    if-eqz p10, :cond_0

    .line 1084
    move-object/from16 v0, p10

    invoke-static {v0, v3}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1086
    :cond_0
    const/4 v2, 0x0

    .line 1176
    .end local v3           #wp:Landroid/text/TextPaint;
    :goto_0
    return v2

    .line 1089
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v2, :cond_4

    .line 1090
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1091
    .restart local v3       #wp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1092
    move/from16 v5, p2

    .line 1093
    .local v5, mlimit:I
    if-nez p11, :cond_2

    move/from16 v0, p2

    if-ge v5, v0, :cond_3

    :cond_2
    const/4 v15, 0x1

    :goto_1
    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    invoke-direct/range {v2 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 1097
    .end local v3           #wp:Landroid/text/TextPaint;
    .end local v5           #mlimit:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p1

    move-object/from16 v0, p0

    iget v8, v0, Landroid/text/TextLine;->mStart:I

    add-int v8, v8, p3

    invoke-virtual {v2, v4, v6, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p1

    move-object/from16 v0, p0

    iget v8, v0, Landroid/text/TextLine;->mStart:I

    add-int v8, v8, p3

    invoke-virtual {v2, v4, v6, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1105
    move/from16 v30, p6

    .line 1106
    .local v30, originalX:F
    move/from16 v9, p1

    .local v9, i:I
    :goto_2
    move/from16 v0, p2

    if-ge v9, v0, :cond_14

    .line 1107
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1108
    .restart local v3       #wp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p3

    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    sub-int v19, v2, v4

    .line 1112
    .local v19, inext:I
    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1114
    .restart local v5       #mlimit:I
    const/4 v7, 0x0

    .line 1116
    .local v7, replacement:Landroid/text/style/ReplacementSpan;
    const/16 v16, 0x0

    .local v16, j:I
    move/from16 v28, v16

    .end local v16           #j:I
    .local v28, j:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v28

    if-ge v0, v2, :cond_8

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v28

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v28

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v9

    if-gt v2, v4, :cond_6

    .line 1116
    :cond_5
    :goto_4
    add-int/lit8 v16, v28, 0x1

    .end local v28           #j:I
    .restart local v16       #j:I
    move/from16 v28, v16

    .end local v16           #j:I
    .restart local v28       #j:I
    goto :goto_3

    .line 1121
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    aget-object v31, v2, v28

    .line 1122
    .local v31, span:Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v31

    instance-of v2, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_7

    move-object/from16 v7, v31

    .line 1123
    check-cast v7, Landroid/text/style/ReplacementSpan;

    goto :goto_4

    .line 1127
    :cond_7
    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_4

    .line 1131
    .end local v31           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_8
    if-eqz v7, :cond_c

    .line 1132
    if-nez p11, :cond_9

    move/from16 v0, p2

    if-ge v5, v0, :cond_b

    :cond_9
    const/16 v18, 0x1

    :goto_5
    move-object/from16 v6, p0

    move-object v8, v3

    move v10, v5

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v6 .. v18}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float p6, p6, v2

    move/from16 v16, v28

    .line 1106
    .end local v28           #j:I
    .restart local v16       #j:I
    :cond_a
    move/from16 v9, v19

    goto/16 :goto_2

    .line 1132
    .end local v16           #j:I
    .restart local v28       #j:I
    :cond_b
    const/16 v18, 0x0

    goto :goto_5

    .line 1142
    :cond_c
    move v12, v9

    .local v12, n:I
    :goto_6
    if-ge v12, v5, :cond_e

    .line 1143
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v6, v5

    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    sub-int v13, v2, v4

    .line 1146
    .local v13, nnext:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/TextLine;->mZWLeftOffset:I

    .line 1147
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/TextLine;->mZWRightOffset:I

    move-object/from16 v10, p0

    move-object v11, v3

    move v14, v9

    move/from16 v15, v19

    move/from16 v16, p4

    .line 1148
    invoke-direct/range {v10 .. v16}, Landroid/text/TextLine;->adjustSpanRangeForLiguatures(Landroid/text/TextPaint;IIIIZ)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1149
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mZWLeftOffset:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mZWRightOffset:I

    invoke-virtual {v2, v12, v13, v4, v6}, Landroid/text/SpanSet;->updateTransition(IIII)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1151
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mZWLeftOffset:I

    sub-int/2addr v12, v2

    .line 1152
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mZWRightOffset:I

    add-int/2addr v13, v2

    .line 1142
    :cond_d
    move v12, v13

    goto :goto_6

    .line 1157
    .end local v13           #nnext:I
    :cond_e
    move/from16 v16, v9

    .end local v28           #j:I
    .restart local v16       #j:I
    :goto_7
    move/from16 v0, v16

    if-ge v0, v5, :cond_a

    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v4, v16

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v6, v5

    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    sub-int v17, v2, v4

    .line 1161
    .local v17, jnext:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1162
    const/16 v29, 0x0

    .local v29, k:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v29

    if-ge v0, v2, :cond_11

    .line 1164
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v29

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v4, v17

    if-ge v2, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v29

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v4, v16

    if-gt v2, v4, :cond_10

    .line 1162
    :cond_f
    :goto_9
    add-int/lit8 v29, v29, 0x1

    goto :goto_8

    .line 1167
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/CharacterStyle;

    aget-object v31, v2, v29

    .line 1168
    .local v31, span:Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_9

    .line 1171
    .end local v31           #span:Landroid/text/style/CharacterStyle;
    :cond_11
    if-nez p11, :cond_12

    move/from16 v0, v17

    move/from16 v1, p2

    if-ge v0, v1, :cond_13

    :cond_12
    const/16 v27, 0x1

    :goto_a
    move-object/from16 v14, p0

    move-object v15, v3

    move/from16 v18, v9

    move/from16 v20, p4

    move-object/from16 v21, p5

    move/from16 v22, p6

    move/from16 v23, p7

    move/from16 v24, p8

    move/from16 v25, p9

    move-object/from16 v26, p10

    invoke-direct/range {v14 .. v27}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float p6, p6, v2

    .line 1157
    move/from16 v16, v17

    goto/16 :goto_7

    .line 1171
    :cond_13
    const/16 v27, 0x0

    goto :goto_a

    .line 1176
    .end local v3           #wp:Landroid/text/TextPaint;
    .end local v5           #mlimit:I
    .end local v7           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v12           #n:I
    .end local v16           #j:I
    .end local v17           #jnext:I
    .end local v19           #inext:I
    .end local v29           #k:I
    :cond_14
    sub-float v2, p6, v30

    goto/16 :goto_0
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 27
    .parameter "wp"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "runIsRtl"
    .parameter "c"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "needWidth"

    .prologue
    .line 922
    if-eqz p12, :cond_0

    .line 923
    move-object/from16 v0, p12

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 926
    :cond_0
    sub-int v5, p3, p2

    .line 928
    .local v5, runLen:I
    if-nez v5, :cond_2

    .line 929
    const/16 v26, 0x0

    .line 988
    :cond_1
    :goto_0
    return v26

    .line 932
    :cond_2
    const/16 v26, 0x0

    .line 934
    .local v26, ret:F
    sub-int v7, p5, p4

    .line 935
    .local v7, contextLen:I
    if-nez p13, :cond_3

    if-eqz p7, :cond_4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-nez v2, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    if-nez v2, :cond_3

    if-eqz p6, :cond_4

    .line 936
    :cond_3
    if-eqz p6, :cond_9

    const/4 v8, 0x1

    .line 937
    .local v8, flags:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_a

    .line 938
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v26

    .line 948
    .end local v8           #flags:I
    :cond_4
    :goto_2
    if-eqz p7, :cond_8

    .line 949
    if-eqz p6, :cond_5

    .line 950
    sub-float p8, p8, v26

    .line 953
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-eqz v2, :cond_6

    .line 954
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v24

    .line 955
    .local v24, previousColor:I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v25

    .line 957
    .local v25, previousStyle:Landroid/graphics/Paint$Style;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 958
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 959
    move/from16 v0, p9

    int-to-float v11, v0

    add-float v12, p8, v26

    move/from16 v0, p11

    int-to-float v13, v0

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v14, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 961
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 962
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 965
    .end local v24           #previousColor:I
    .end local v25           #previousStyle:Landroid/graphics/Paint$Style;
    :cond_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    if-eqz v2, :cond_7

    .line 967
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v2, v2, p10

    int-to-float v2, v2

    const v3, 0x3de38e39

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    mul-float/2addr v3, v4

    add-float v11, v2, v3

    .line 969
    .local v11, underlineTop:F
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v24

    .line 970
    .restart local v24       #previousColor:I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v25

    .line 971
    .restart local v25       #previousStyle:Landroid/graphics/Paint$Style;
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v23

    .line 973
    .local v23, previousAntiAlias:Z
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 974
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 976
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 977
    add-float v12, p8, v26

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineThickness:F

    add-float v13, v11, v2

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v14, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 979
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 980
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 981
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 984
    .end local v11           #underlineTop:F
    .end local v23           #previousAntiAlias:Z
    .end local v24           #previousColor:I
    .end local v25           #previousStyle:Landroid/graphics/Paint$Style;
    :cond_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v21, p10, v2

    move-object/from16 v12, p0

    move-object/from16 v13, p7

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p8

    invoke-direct/range {v12 .. v21}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    .line 988
    :cond_8
    if-eqz p6, :cond_1

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    goto/16 :goto_0

    .line 936
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 941
    .restart local v8       #flags:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v22, v0

    .line 942
    .local v22, delta:I
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v11, v22, p2

    add-int v12, v22, p3

    add-int v13, v22, p4

    add-int v14, v22, p5

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v9, p1

    move v15, v8

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FI)F

    move-result v26

    goto/16 :goto_2
.end method

.method private measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 12
    .parameter "start"
    .parameter "offset"
    .parameter "limit"
    .parameter "runIsRtl"
    .parameter "fmi"

    .prologue
    .line 609
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method static obtain()Landroid/text/TextLine;
    .locals 6

    .prologue
    .line 90
    sget-object v4, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v4

    .line 91
    :try_start_0
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v0, v3

    .local v0, i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 92
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 93
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v3, v0

    .line 94
    .local v1, tl:Landroid/text/TextLine;
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    const/4 v5, 0x0

    aput-object v5, v3, v0

    .line 95
    monitor-exit v4

    move-object v2, v1

    .line 103
    .end local v1           #tl:Landroid/text/TextLine;
    .local v2, tl:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 98
    .end local v2           #tl:Ljava/lang/Object;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    new-instance v1, Landroid/text/TextLine;

    invoke-direct {v1}, Landroid/text/TextLine;-><init>()V

    .restart local v1       #tl:Landroid/text/TextLine;
    move-object v2, v1

    .line 103
    .restart local v2       #tl:Ljava/lang/Object;
    goto :goto_0

    .line 98
    .end local v1           #tl:Landroid/text/TextLine;
    .end local v2           #tl:Ljava/lang/Object;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .locals 4
    .parameter "tl"

    .prologue
    const/4 v3, 0x0

    .line 114
    iput-object v3, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 115
    iput-object v3, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 116
    iput-object v3, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 118
    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 119
    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 120
    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 122
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v2

    .line 123
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 124
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 125
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aput-object p0, v1, v0

    .line 129
    :cond_0
    monitor-exit v2

    .line 130
    return-object v3

    .line 123
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .locals 1
    .parameter "fmi"
    .parameter "previousTop"
    .parameter "previousAscent"
    .parameter "previousDescent"
    .parameter "previousBottom"
    .parameter "previousLeading"

    .prologue
    .line 891
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 892
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 893
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 894
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 895
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 896
    return-void
.end method


# virtual methods
.method ascent(I)F
    .locals 9
    .parameter "pos"

    .prologue
    .line 1275
    iget-object v6, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v6, :cond_0

    .line 1276
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    .line 1290
    :goto_0
    return v6

    .line 1279
    :cond_0
    iget v6, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr p1, v6

    .line 1280
    iget-object v6, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    add-int/lit8 v7, p1, 0x1

    const-class v8, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v6, p1, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 1281
    .local v4, spans:[Landroid/text/style/MetricAffectingSpan;
    array-length v6, v4

    if-nez v6, :cond_1

    .line 1282
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    goto :goto_0

    .line 1285
    :cond_1
    iget-object v5, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1286
    .local v5, wp:Landroid/text/TextPaint;
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1287
    move-object v0, v4

    .local v0, arr$:[Landroid/text/style/MetricAffectingSpan;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1288
    .local v3, span:Landroid/text/style/MetricAffectingSpan;
    invoke-virtual {v3, v5}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 1287
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1290
    .end local v3           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_2
    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    goto :goto_0
.end method

.method descent(I)F
    .locals 9
    .parameter "pos"

    .prologue
    .line 1295
    iget-object v6, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v6, :cond_0

    .line 1296
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    .line 1310
    :goto_0
    return v6

    .line 1299
    :cond_0
    iget v6, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr p1, v6

    .line 1300
    iget-object v6, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    add-int/lit8 v7, p1, 0x1

    const-class v8, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v6, p1, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 1301
    .local v4, spans:[Landroid/text/style/MetricAffectingSpan;
    array-length v6, v4

    if-nez v6, :cond_1

    .line 1302
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    goto :goto_0

    .line 1305
    :cond_1
    iget-object v5, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1306
    .local v5, wp:Landroid/text/TextPaint;
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1307
    move-object v0, v4

    .local v0, arr$:[Landroid/text/style/MetricAffectingSpan;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1308
    .local v3, span:Landroid/text/style/MetricAffectingSpan;
    invoke-virtual {v3, v5}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 1307
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1310
    .end local v3           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_2
    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v6

    goto :goto_0
.end method

.method draw(Landroid/graphics/Canvas;FIII)V
    .locals 28
    .parameter "c"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"

    .prologue
    .line 211
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v2, :cond_2

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v2, v3, :cond_1

    .line 213
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mLen:I

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v2, v3, :cond_2

    .line 217
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mLen:I

    const/4 v6, 0x1

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    goto :goto_0

    .line 222
    :cond_2
    const/16 v19, 0x0

    .line 223
    .local v19, h:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v2, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v25, v0

    .line 224
    .local v25, runs:[I
    const/16 v18, 0x0

    .line 226
    .local v18, emojiRect:Landroid/graphics/RectF;
    move-object/from16 v0, v25

    array-length v2, v0

    add-int/lit8 v21, v2, -0x2

    .line 227
    .local v21, lastRunIndex:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_1
    move-object/from16 v0, v25

    array-length v2, v0

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    .line 228
    aget v24, v25, v20

    .line 229
    .local v24, runStart:I
    add-int/lit8 v2, v20, 0x1

    aget v2, v25, v2

    const v3, 0x3ffffff

    and-int/2addr v2, v3

    add-int v23, v24, v2

    .line 230
    .local v23, runLimit:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v0, v23

    if-le v0, v2, :cond_3

    .line 231
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v23, v0

    .line 233
    :cond_3
    add-int/lit8 v2, v20, 0x1

    aget v2, v25, v2

    const/high16 v3, 0x400

    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    const/4 v6, 0x1

    .line 235
    .local v6, runIsRtl:Z
    :goto_2
    move/from16 v4, v24

    .line 236
    .local v4, segstart:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_a

    move/from16 v5, v24

    .local v5, j:I
    :goto_3
    move/from16 v0, v23

    if-gt v5, v0, :cond_19

    .line 237
    const/16 v16, 0x0

    .line 238
    .local v16, codept:I
    const/4 v13, 0x0

    .line 240
    .local v13, bm:Landroid/graphics/Bitmap;
    const/16 v17, 0x0

    .line 241
    .local v17, emojiBytes:I
    const/16 v22, 0x0

    .line 243
    .local v22, puaBuf:[I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_4

    move/from16 v0, v23

    if-ge v5, v0, :cond_4

    .line 245
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v2, :cond_f

    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI_DCM:Z

    if-nez v2, :cond_f

    .line 246
    sget-object v2, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/emoji/EmojiFactory;->quickRejectEmojiCode(C)Z

    move-result v2

    if-nez v2, :cond_4

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v2, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v16

    .line 248
    add-int/lit8 v2, v5, 0x3

    move/from16 v0, v23

    if-ge v2, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v2, v5}, Landroid/text/Layout;->isInCountryCodeTable([CI)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 249
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v22, v0

    .line 250
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v3

    aput v3, v22, v2

    .line 251
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    add-int/lit8 v7, v5, 0x2

    invoke-static {v3, v7}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v3

    aput v3, v22, v2

    .line 252
    sget-object v2, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua([I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 253
    const/16 v17, 0x8

    .line 285
    :cond_4
    :goto_4
    move/from16 v0, v23

    if-eq v5, v0, :cond_5

    const/16 v2, 0x9

    move/from16 v0, v16

    if-eq v0, v2, :cond_5

    if-eqz v13, :cond_8

    .line 286
    :cond_5
    add-float v7, p2, v19

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    if-eq v5, v2, :cond_11

    :cond_6
    const/4 v11, 0x1

    :goto_5
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v2

    add-float v19, v19, v2

    .line 289
    const/16 v2, 0x9

    move/from16 v0, v16

    if-ne v0, v2, :cond_12

    .line 290
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v3, v3

    mul-float v3, v3, v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    move-result v3

    mul-float v19, v2, v3

    .line 341
    :cond_7
    :goto_6
    add-int/lit8 v4, v5, 0x1

    .line 236
    :cond_8
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 233
    .end local v4           #segstart:I
    .end local v5           #j:I
    .end local v6           #runIsRtl:Z
    .end local v13           #bm:Landroid/graphics/Bitmap;
    .end local v16           #codept:I
    .end local v17           #emojiBytes:I
    .end local v22           #puaBuf:[I
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_2

    .restart local v4       #segstart:I
    .restart local v6       #runIsRtl:Z
    :cond_a
    move/from16 v5, v23

    .line 236
    goto/16 :goto_3

    .line 254
    .restart local v5       #j:I
    .restart local v13       #bm:Landroid/graphics/Bitmap;
    .restart local v16       #codept:I
    .restart local v17       #emojiBytes:I
    .restart local v22       #puaBuf:[I
    :cond_b
    add-int/lit8 v2, v5, 0x1

    move/from16 v0, v23

    if-ge v2, v0, :cond_c

    invoke-static/range {v16 .. v16}, Landroid/text/Layout;->isInEmojiUnicodeTable(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 255
    sget-object v2, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 256
    const/16 v17, 0x4

    goto :goto_4

    .line 257
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v2, v2, v5

    invoke-static {v2}, Landroid/text/Layout;->isInEmojiUnicodeTable(C)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 258
    sget-object v2, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 259
    const/16 v17, 0x2

    goto :goto_4

    .line 260
    :cond_d
    add-int/lit8 v2, v5, 0x1

    move/from16 v0, v23

    if-ge v2, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v2, v5}, Landroid/text/Layout;->isDiacriticalMark([CI)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 261
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v22, v0

    .line 262
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v3, v3, v5

    aput v3, v22, v2

    .line 263
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    add-int/lit8 v7, v5, 0x1

    aget-char v3, v3, v7

    aput v3, v22, v2

    .line 264
    sget-object v2, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua([I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 265
    const/16 v17, 0x4

    goto/16 :goto_4

    .line 266
    :cond_e
    const v2, 0xffff

    move/from16 v0, v16

    if-le v0, v2, :cond_4

    .line 267
    add-int/lit8 v5, v5, 0x1

    .line 268
    goto :goto_7

    .line 272
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v16, v2, v5

    .line 273
    const v2, 0xd800

    move/from16 v0, v16

    if-lt v0, v2, :cond_4

    const v2, 0xdc00

    move/from16 v0, v16

    if-ge v0, v2, :cond_4

    add-int/lit8 v2, v5, 0x1

    move/from16 v0, v23

    if-ge v2, v0, :cond_4

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v2, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v16

    .line 275
    sget v2, Landroid/text/Layout;->MIN_EMOJI:I

    move/from16 v0, v16

    if-lt v0, v2, :cond_10

    sget v2, Landroid/text/Layout;->MAX_EMOJI:I

    move/from16 v0, v16

    if-gt v0, v2, :cond_10

    .line 276
    sget-object v2, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v13

    goto/16 :goto_4

    .line 277
    :cond_10
    const v2, 0xffff

    move/from16 v0, v16

    if-le v0, v2, :cond_4

    .line 278
    add-int/lit8 v5, v5, 0x1

    .line 279
    goto/16 :goto_7

    .line 286
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 291
    :cond_12
    if-eqz v13, :cond_7

    .line 292
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/TextLine;->ascent(I)F

    move-result v14

    .line 293
    .local v14, bmAscent:F
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v12, v2

    .line 295
    .local v12, bitmapHeight:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/TextLine;->descent(I)F

    move-result v15

    .line 299
    .local v15, bmDescent:F
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v2, :cond_15

    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI_DCM:Z

    if-nez v2, :cond_15

    .line 300
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v14, v2

    .line 301
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v15, v2

    .line 302
    neg-float v2, v14

    add-float/2addr v2, v15

    div-float v26, v2, v12

    .line 303
    .local v26, scale:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v27, v2, v26

    .line 309
    .local v27, width:F
    :goto_8
    if-nez v18, :cond_13

    .line 310
    new-instance v18, Landroid/graphics/RectF;

    .end local v18           #emojiRect:Landroid/graphics/RectF;
    invoke-direct/range {v18 .. v18}, Landroid/graphics/RectF;-><init>()V

    .line 313
    .restart local v18       #emojiRect:Landroid/graphics/RectF;
    :cond_13
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v2, :cond_17

    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI_DCM:Z

    if-nez v2, :cond_17

    .line 314
    add-float v2, p2, v19

    move/from16 v0, p4

    int-to-float v3, v0

    add-float/2addr v3, v14

    add-float v7, p2, v19

    add-float v7, v7, v27

    move/from16 v0, p4

    int-to-float v8, v0

    add-float/2addr v8, v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 317
    if-eqz v6, :cond_14

    .line 318
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->sort()V

    .line 320
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mEmojiPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 321
    add-float v19, v19, v27

    .line 322
    const/4 v2, 0x4

    move/from16 v0, v17

    if-ne v0, v2, :cond_16

    .line 323
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    .line 305
    .end local v26           #scale:F
    .end local v27           #width:F
    :cond_15
    neg-float v2, v14

    div-float v26, v2, v12

    .line 306
    .restart local v26       #scale:F
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v27, v2, v26

    .restart local v27       #width:F
    goto :goto_8

    .line 324
    :cond_16
    const/16 v2, 0x8

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    .line 325
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_6

    .line 329
    :cond_17
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI_DCM:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_18

    .line 330
    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    .line 331
    add-float v2, p2, v19

    add-float v2, v2, v27

    move/from16 v0, p4

    int-to-float v3, v0

    add-float/2addr v3, v14

    add-float v7, p2, v19

    move/from16 v0, p4

    int-to-float v8, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 336
    :goto_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 337
    add-float v19, v19, v27

    .line 338
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    .line 333
    :cond_18
    add-float v2, p2, v19

    move/from16 v0, p4

    int-to-float v3, v0

    add-float/2addr v3, v14

    add-float v7, p2, v19

    add-float v7, v7, v27

    move/from16 v0, p4

    int-to-float v8, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_9

    .line 227
    .end local v12           #bitmapHeight:F
    .end local v13           #bm:Landroid/graphics/Bitmap;
    .end local v14           #bmAscent:F
    .end local v15           #bmDescent:F
    .end local v16           #codept:I
    .end local v17           #emojiBytes:I
    .end local v22           #puaBuf:[I
    .end local v26           #scale:F
    .end local v27           #width:F
    :cond_19
    add-int/lit8 v20, v20, 0x2

    goto/16 :goto_1
.end method

.method getOffsetToLeftRightOf(IZ)I
    .locals 30
    .parameter "cursor"
    .parameter "toLeft"

    .prologue
    .line 642
    const/16 v17, 0x0

    .line 643
    .local v17, lineStart:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v16, v0

    .line 644
    .local v16, lineEnd:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    const/16 v21, 0x1

    .line 645
    .local v21, paraIsRtl:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v2, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v28, v0

    .line 647
    .local v28, runs:[I
    const/16 v27, 0x0

    .local v27, runLevel:I
    move/from16 v4, v17

    .local v4, runStart:I
    move/from16 v5, v16

    .local v5, runLimit:I
    const/16 v18, -0x1

    .line 648
    .local v18, newCaret:I
    const/16 v29, 0x0

    .line 650
    .local v29, trailing:Z
    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 651
    const/4 v3, -0x2

    .line 729
    .local v3, runIndex:I
    :cond_0
    :goto_1
    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    const/4 v8, 0x1

    .line 730
    .local v8, advance:Z
    :goto_2
    if-eqz v8, :cond_10

    const/4 v2, 0x2

    :goto_3
    add-int v10, v3, v2

    .line 731
    .local v10, otherRunIndex:I
    if-ltz v10, :cond_18

    move-object/from16 v0, v28

    array-length v2, v0

    if-ge v10, v2, :cond_18

    .line 732
    aget v2, v28, v10

    add-int v11, v17, v2

    .line 733
    .local v11, otherRunStart:I
    add-int/lit8 v2, v10, 0x1

    aget v2, v28, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v12, v11, v2

    .line 735
    .local v12, otherRunLimit:I
    move/from16 v0, v16

    if-le v12, v0, :cond_1

    .line 736
    move/from16 v12, v16

    .line 738
    :cond_1
    add-int/lit8 v2, v10, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v20, v2, 0x3f

    .line 740
    .local v20, otherRunLevel:I
    and-int/lit8 v2, v20, 0x1

    if-eqz v2, :cond_11

    const/4 v13, 0x1

    .line 742
    .local v13, otherRunIsRtl:Z
    :goto_4
    move/from16 v0, p2

    if-ne v0, v13, :cond_12

    const/4 v8, 0x1

    .line 743
    :goto_5
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_15

    .line 744
    if-eqz v8, :cond_13

    move v14, v11

    :goto_6
    move-object/from16 v9, p0

    move v15, v8

    invoke-direct/range {v9 .. v15}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    .line 747
    if-eqz v8, :cond_14

    .end local v12           #otherRunLimit:I
    :goto_7
    move/from16 v0, v18

    if-ne v0, v12, :cond_16

    .line 750
    move v3, v10

    .line 751
    move/from16 v27, v20

    .line 752
    goto :goto_1

    .line 644
    .end local v3           #runIndex:I
    .end local v4           #runStart:I
    .end local v5           #runLimit:I
    .end local v8           #advance:Z
    .end local v10           #otherRunIndex:I
    .end local v11           #otherRunStart:I
    .end local v13           #otherRunIsRtl:Z
    .end local v18           #newCaret:I
    .end local v20           #otherRunLevel:I
    .end local v21           #paraIsRtl:Z
    .end local v27           #runLevel:I
    .end local v28           #runs:[I
    .end local v29           #trailing:Z
    :cond_2
    const/16 v21, 0x0

    goto :goto_0

    .line 652
    .restart local v4       #runStart:I
    .restart local v5       #runLimit:I
    .restart local v18       #newCaret:I
    .restart local v21       #paraIsRtl:Z
    .restart local v27       #runLevel:I
    .restart local v28       #runs:[I
    .restart local v29       #trailing:Z
    :cond_3
    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 653
    move-object/from16 v0, v28

    array-length v3, v0

    .restart local v3       #runIndex:I
    goto :goto_1

    .line 657
    .end local v3           #runIndex:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #runIndex:I
    :goto_8
    move-object/from16 v0, v28

    array-length v2, v0

    if-ge v3, v2, :cond_7

    .line 658
    aget v2, v28, v3

    add-int v4, v17, v2

    .line 659
    move/from16 v0, p1

    if-lt v0, v4, :cond_a

    .line 660
    add-int/lit8 v2, v3, 0x1

    aget v2, v28, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v5, v4, v2

    .line 661
    move/from16 v0, v16

    if-le v5, v0, :cond_5

    .line 662
    move/from16 v5, v16

    .line 664
    :cond_5
    move/from16 v0, p1

    if-ge v0, v5, :cond_a

    .line 665
    add-int/lit8 v2, v3, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v27, v2, 0x3f

    .line 667
    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    .line 672
    add-int/lit8 v22, p1, -0x1

    .line 673
    .local v22, pos:I
    const/16 v23, 0x0

    .local v23, prevRunIndex:I
    :goto_9
    move-object/from16 v0, v28

    array-length v2, v0

    move/from16 v0, v23

    if-ge v0, v2, :cond_7

    .line 674
    aget v2, v28, v23

    add-int v26, v17, v2

    .line 675
    .local v26, prevRunStart:I
    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_9

    .line 676
    add-int/lit8 v2, v23, 0x1

    aget v2, v28, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v25, v26, v2

    .line 678
    .local v25, prevRunLimit:I
    move/from16 v0, v25

    move/from16 v1, v16

    if-le v0, v1, :cond_6

    .line 679
    move/from16 v25, v16

    .line 681
    :cond_6
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 682
    add-int/lit8 v2, v23, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v24, v2, 0x3f

    .line 684
    .local v24, prevRunLevel:I
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 686
    move/from16 v3, v23

    .line 687
    move/from16 v27, v24

    .line 688
    move/from16 v4, v26

    .line 689
    move/from16 v5, v25

    .line 690
    const/16 v29, 0x1

    .line 707
    .end local v22           #pos:I
    .end local v23           #prevRunIndex:I
    .end local v24           #prevRunLevel:I
    .end local v25           #prevRunLimit:I
    .end local v26           #prevRunStart:I
    :cond_7
    move-object/from16 v0, v28

    array-length v2, v0

    if-eq v3, v2, :cond_0

    .line 708
    and-int/lit8 v2, v27, 0x1

    if-eqz v2, :cond_b

    const/4 v6, 0x1

    .line 709
    .local v6, runIsRtl:Z
    :goto_a
    move/from16 v0, p2

    if-ne v0, v6, :cond_c

    const/4 v8, 0x1

    .line 710
    .restart local v8       #advance:Z
    :goto_b
    if-eqz v8, :cond_d

    move v2, v5

    :goto_c
    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    move/from16 v0, v29

    if-eq v8, v0, :cond_0

    :cond_8
    move-object/from16 v2, p0

    move/from16 v7, p1

    .line 712
    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    .line 716
    if-eqz v8, :cond_e

    move v2, v5

    :goto_d
    move/from16 v0, v18

    if-eq v0, v2, :cond_0

    move/from16 v19, v18

    .line 787
    .end local v6           #runIsRtl:Z
    .end local v18           #newCaret:I
    .local v19, newCaret:I
    :goto_e
    return v19

    .line 673
    .end local v8           #advance:Z
    .end local v19           #newCaret:I
    .restart local v18       #newCaret:I
    .restart local v22       #pos:I
    .restart local v23       #prevRunIndex:I
    .restart local v26       #prevRunStart:I
    :cond_9
    add-int/lit8 v23, v23, 0x2

    goto :goto_9

    .line 657
    .end local v22           #pos:I
    .end local v23           #prevRunIndex:I
    .end local v26           #prevRunStart:I
    :cond_a
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_8

    .line 708
    :cond_b
    const/4 v6, 0x0

    goto :goto_a

    .line 709
    .restart local v6       #runIsRtl:Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_b

    .restart local v8       #advance:Z
    :cond_d
    move v2, v4

    .line 710
    goto :goto_c

    :cond_e
    move v2, v4

    .line 716
    goto :goto_d

    .line 729
    .end local v6           #runIsRtl:Z
    .end local v8           #advance:Z
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 730
    .restart local v8       #advance:Z
    :cond_10
    const/4 v2, -0x2

    goto/16 :goto_3

    .line 740
    .restart local v10       #otherRunIndex:I
    .restart local v11       #otherRunStart:I
    .restart local v12       #otherRunLimit:I
    .restart local v20       #otherRunLevel:I
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 742
    .restart local v13       #otherRunIsRtl:Z
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_13
    move v14, v12

    .line 744
    goto/16 :goto_6

    :cond_14
    move v12, v11

    .line 747
    goto/16 :goto_7

    .line 758
    :cond_15
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_16

    .line 760
    if-eqz v8, :cond_17

    move/from16 v18, v11

    .end local v11           #otherRunStart:I
    .end local v12           #otherRunLimit:I
    .end local v13           #otherRunIsRtl:Z
    .end local v20           #otherRunLevel:I
    :cond_16
    :goto_f
    move/from16 v19, v18

    .line 787
    .end local v18           #newCaret:I
    .restart local v19       #newCaret:I
    goto :goto_e

    .end local v19           #newCaret:I
    .restart local v11       #otherRunStart:I
    .restart local v12       #otherRunLimit:I
    .restart local v13       #otherRunIsRtl:Z
    .restart local v18       #newCaret:I
    .restart local v20       #otherRunLevel:I
    :cond_17
    move/from16 v18, v12

    .line 760
    goto :goto_f

    .line 765
    .end local v11           #otherRunStart:I
    .end local v12           #otherRunLimit:I
    .end local v13           #otherRunIsRtl:Z
    .end local v20           #otherRunLevel:I
    :cond_18
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_1a

    .line 769
    if-eqz v8, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v18, v2, 0x1

    .line 770
    :goto_10
    goto :goto_f

    .line 769
    :cond_19
    const/16 v18, -0x1

    goto :goto_10

    .line 781
    :cond_1a
    move/from16 v0, v18

    move/from16 v1, v16

    if-gt v0, v1, :cond_16

    .line 782
    if-eqz v8, :cond_1b

    move/from16 v18, v16

    :goto_11
    goto :goto_f

    :cond_1b
    move/from16 v18, v17

    goto :goto_11
.end method

.method measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 25
    .parameter "offset"
    .parameter "trailing"
    .parameter "fmi"

    .prologue
    .line 371
    if-eqz p2, :cond_1

    add-int/lit8 v22, p1, -0x1

    .line 372
    .local v22, target:I
    :goto_0
    if-gez v22, :cond_2

    .line 373
    const/4 v14, 0x0

    .line 560
    :cond_0
    :goto_1
    return v14

    .end local v22           #target:I
    :cond_1
    move/from16 v22, p1

    .line 371
    goto :goto_0

    .line 376
    .restart local v22       #target:I
    :cond_2
    const/4 v14, 0x0

    .line 378
    .local v14, h:F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v1, :cond_4

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_3

    .line 380
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v14

    goto :goto_1

    .line 382
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_4

    .line 383
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v14

    goto :goto_1

    .line 387
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/TextLine;->mChars:[C

    .line 388
    .local v11, chars:[C
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v1, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v21, v0

    .line 391
    .local v21, runs:[I
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI_DCM:Z

    if-nez v1, :cond_5

    .line 392
    if-eqz v11, :cond_5

    if-ltz v22, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v0, v22

    if-ge v0, v1, :cond_5

    .line 393
    add-int/lit8 v1, v22, -0x1

    invoke-static {v11, v1}, Landroid/text/Layout;->isInCountryCodeTable([CI)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 394
    add-int/lit8 v22, v22, 0x3

    .line 412
    :cond_5
    :goto_2
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    move-object/from16 v0, v21

    array-length v1, v0

    if-ge v15, v1, :cond_0

    .line 413
    aget v20, v21, v15

    .line 414
    .local v20, runStart:I
    add-int/lit8 v1, v15, 0x1

    aget v1, v21, v1

    const v3, 0x3ffffff

    and-int/2addr v1, v3

    add-int v19, v20, v1

    .line 415
    .local v19, runLimit:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v0, v19

    if-le v0, v1, :cond_6

    .line 416
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v19, v0

    .line 418
    :cond_6
    add-int/lit8 v1, v15, 0x1

    aget v1, v21, v1

    const/high16 v3, 0x400

    and-int/2addr v1, v3

    if-eqz v1, :cond_f

    const/4 v5, 0x1

    .line 420
    .local v5, runIsRtl:Z
    :goto_4
    move/from16 v2, v20

    .line 421
    .local v2, segstart:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_10

    move/from16 v4, v20

    .local v4, j:I
    :goto_5
    move/from16 v0, v19

    if-gt v4, v0, :cond_2d

    .line 422
    const/4 v12, 0x0

    .line 423
    .local v12, codept:I
    const/4 v8, 0x0

    .line 425
    .local v8, bm:Landroid/graphics/Bitmap;
    const/16 v17, 0x0

    .line 426
    .local v17, isEmoji:Z
    const/4 v13, 0x0

    .line 428
    .local v13, emojiBytes:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_7

    move/from16 v0, v19

    if-ge v4, v0, :cond_7

    .line 430
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v1, :cond_16

    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI_DCM:Z

    if-nez v1, :cond_16

    if-eqz v11, :cond_16

    .line 431
    sget-object v1, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    aget-char v3, v11, v4

    invoke-virtual {v1, v3}, Landroid/emoji/EmojiFactory;->quickRejectEmojiCode(C)Z

    move-result v1

    if-nez v1, :cond_7

    .line 432
    invoke-static {v11, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v12

    .line 433
    invoke-static {v11, v4}, Landroid/text/Layout;->isInCountryCodeTable([CI)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 434
    const/16 v17, 0x1

    .line 435
    const/16 v13, 0x8

    .line 461
    :cond_7
    :goto_6
    move/from16 v0, v19

    if-eq v4, v0, :cond_9

    const/16 v1, 0x9

    if-eq v12, v1, :cond_9

    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v1, :cond_8

    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI_DCM:Z

    if-nez v1, :cond_8

    if-nez v17, :cond_9

    :cond_8
    if-eqz v8, :cond_15

    .line 463
    :cond_9
    move/from16 v0, v22

    if-lt v0, v2, :cond_18

    move/from16 v0, v22

    if-ge v0, v4, :cond_18

    const/16 v16, 0x1

    .line 465
    .local v16, inSegment:Z
    :goto_7
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_19

    const/4 v1, 0x1

    :goto_8
    if-ne v1, v5, :cond_1a

    const/4 v7, 0x1

    .line 466
    .local v7, advance:Z
    :goto_9
    if-eqz v16, :cond_1b

    if-eqz v7, :cond_1b

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    .line 467
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v14, v1

    goto/16 :goto_1

    .line 395
    .end local v2           #segstart:I
    .end local v4           #j:I
    .end local v5           #runIsRtl:Z
    .end local v7           #advance:Z
    .end local v8           #bm:Landroid/graphics/Bitmap;
    .end local v12           #codept:I
    .end local v13           #emojiBytes:I
    .end local v15           #i:I
    .end local v16           #inSegment:Z
    .end local v17           #isEmoji:Z
    .end local v19           #runLimit:I
    .end local v20           #runStart:I
    :cond_a
    add-int/lit8 v1, v22, -0x2

    invoke-static {v11, v1}, Landroid/text/Layout;->isInCountryCodeTable([CI)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 396
    add-int/lit8 v22, v22, 0x2

    goto/16 :goto_2

    .line 397
    :cond_b
    add-int/lit8 v1, v22, -0x3

    invoke-static {v11, v1}, Landroid/text/Layout;->isInCountryCodeTable([CI)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 398
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 399
    :cond_c
    add-int/lit8 v1, v22, -0x1

    if-ltz v1, :cond_d

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v0, v22

    if-ge v0, v1, :cond_d

    add-int/lit8 v1, v22, -0x1

    invoke-static {v11, v1}, Landroid/text/Layout;->isDiacriticalMark([CI)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 400
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 401
    :cond_d
    add-int/lit8 v1, v22, -0x1

    if-ltz v1, :cond_e

    aget-char v1, v11, v22

    const v3, 0xdc00

    if-lt v1, v3, :cond_e

    aget-char v1, v11, v22

    const v3, 0xdfff

    if-gt v1, v3, :cond_e

    .line 402
    add-int/lit8 v1, v22, -0x1

    invoke-static {v11, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v12

    .line 403
    .restart local v12       #codept:I
    invoke-static {v12}, Landroid/text/Layout;->isInEmojiUnicodeTable(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 404
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 406
    .end local v12           #codept:I
    :cond_e
    aget-char v1, v11, v22

    invoke-static {v1}, Landroid/text/Layout;->isInEmojiUnicodeTable(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 407
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 418
    .restart local v15       #i:I
    .restart local v19       #runLimit:I
    .restart local v20       #runStart:I
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_4

    .restart local v2       #segstart:I
    .restart local v5       #runIsRtl:Z
    :cond_10
    move/from16 v4, v19

    .line 421
    goto/16 :goto_5

    .line 436
    .restart local v4       #j:I
    .restart local v8       #bm:Landroid/graphics/Bitmap;
    .restart local v12       #codept:I
    .restart local v13       #emojiBytes:I
    .restart local v17       #isEmoji:Z
    :cond_11
    invoke-static {v12}, Landroid/text/Layout;->isInEmojiUnicodeTable(I)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {v11, v4}, Landroid/text/Layout;->isDiacriticalMark([CI)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    add-int/lit8 v1, v4, 0x1

    move/from16 v0, v19

    if-ge v1, v0, :cond_13

    .line 437
    const/16 v17, 0x1

    .line 438
    const/4 v13, 0x4

    goto/16 :goto_6

    .line 439
    :cond_13
    aget-char v1, v11, v4

    invoke-static {v1}, Landroid/text/Layout;->isInEmojiUnicodeTable(C)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 440
    const/16 v17, 0x1

    .line 441
    const/4 v13, 0x2

    goto/16 :goto_6

    .line 442
    :cond_14
    const v1, 0xffff

    if-le v12, v1, :cond_7

    .line 443
    add-int/lit8 v4, v4, 0x1

    .line 421
    :cond_15
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 448
    :cond_16
    aget-char v12, v11, v4

    .line 449
    const v1, 0xd800

    if-lt v12, v1, :cond_7

    const v1, 0xdc00

    if-ge v12, v1, :cond_7

    add-int/lit8 v1, v4, 0x1

    move/from16 v0, v19

    if-ge v1, v0, :cond_7

    .line 450
    invoke-static {v11, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v12

    .line 451
    sget v1, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v12, v1, :cond_17

    sget v1, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v12, v1, :cond_17

    .line 452
    sget-object v1, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v1, v12}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_6

    .line 453
    :cond_17
    const v1, 0xffff

    if-le v12, v1, :cond_7

    .line 454
    add-int/lit8 v4, v4, 0x1

    .line 455
    goto :goto_a

    .line 463
    :cond_18
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 465
    .restart local v16       #inSegment:Z
    :cond_19
    const/4 v1, 0x0

    goto/16 :goto_8

    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 471
    .restart local v7       #advance:Z
    :cond_1b
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v1, :cond_24

    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI_DCM:Z

    if-nez v1, :cond_24

    if-eqz v11, :cond_24

    .line 472
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v0, v22

    if-ge v0, v1, :cond_1e

    sget-object v1, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    aget-char v3, v11, v22

    invoke-virtual {v1, v3}, Landroid/emoji/EmojiFactory;->quickRejectEmojiCode(C)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 473
    move/from16 v0, v22

    invoke-static {v11, v0}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v12

    .line 474
    invoke-static {v12}, Landroid/text/Layout;->isInEmojiUnicodeTable(I)Z

    move-result v1

    if-nez v1, :cond_1d

    aget-char v1, v11, v22

    invoke-static {v1}, Landroid/text/Layout;->isInEmojiUnicodeTable(C)Z

    move-result v1

    if-nez v1, :cond_1d

    add-int/lit8 v1, v22, 0x1

    move/from16 v0, v19

    if-ge v1, v0, :cond_1c

    move/from16 v0, v22

    invoke-static {v11, v0}, Landroid/text/Layout;->isDiacriticalMark([CI)Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_1c
    move/from16 v0, v22

    invoke-static {v11, v0}, Landroid/text/Layout;->isInCountryCodeTable([CI)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 478
    :cond_1d
    move/from16 v0, v22

    if-ne v4, v0, :cond_1e

    move/from16 v0, v19

    if-eq v4, v0, :cond_1e

    move-object/from16 v1, p0

    move v3, v4

    move-object/from16 v6, p3

    .line 479
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v14, v1

    goto/16 :goto_1

    .line 484
    :cond_1e
    move/from16 v0, v20

    if-le v4, v0, :cond_20

    .line 485
    const/16 v18, 0x0

    .line 487
    .local v18, prevIsEmoji:Z
    add-int/lit8 v1, v4, -0x3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    if-ge v1, v3, :cond_21

    add-int/lit8 v1, v4, -0x3

    invoke-static {v11, v1}, Landroid/text/Layout;->isInCountryCodeTable([CI)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 488
    const/16 v18, 0x1

    .line 499
    :cond_1f
    :goto_b
    if-nez v18, :cond_20

    move-object/from16 v1, p0

    move v3, v4

    move-object/from16 v6, p3

    .line 500
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v23

    .line 501
    .local v23, w:F
    if-eqz v7, :cond_23

    .end local v23           #w:F
    :goto_c
    add-float v14, v14, v23

    .line 510
    .end local v18           #prevIsEmoji:Z
    :cond_20
    :goto_d
    if-eqz v16, :cond_26

    .line 511
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v14, v1

    goto/16 :goto_1

    .line 490
    .restart local v18       #prevIsEmoji:Z
    :cond_21
    add-int/lit8 v1, v4, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    if-ge v1, v3, :cond_1f

    .line 491
    add-int/lit8 v1, v4, -0x1

    invoke-static {v11, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v12

    .line 492
    invoke-static {v12}, Landroid/text/Layout;->isInEmojiUnicodeTable(I)Z

    move-result v1

    if-nez v1, :cond_22

    add-int/lit8 v1, v4, -0x1

    aget-char v1, v11, v1

    invoke-static {v1}, Landroid/text/Layout;->isInEmojiUnicodeTable(C)Z

    move-result v1

    if-nez v1, :cond_22

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-ge v4, v1, :cond_1f

    add-int/lit8 v1, v4, -0x1

    invoke-static {v11, v1}, Landroid/text/Layout;->isDiacriticalMark([CI)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 495
    :cond_22
    const/16 v18, 0x1

    goto :goto_b

    .line 501
    .restart local v23       #w:F
    :cond_23
    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    goto :goto_c

    .end local v18           #prevIsEmoji:Z
    .end local v23           #w:F
    :cond_24
    move-object/from16 v1, p0

    move v3, v4

    move-object/from16 v6, p3

    .line 506
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v23

    .line 507
    .restart local v23       #w:F
    if-eqz v7, :cond_25

    .end local v23           #w:F
    :goto_e
    add-float v14, v14, v23

    goto :goto_d

    .restart local v23       #w:F
    :cond_25
    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    goto :goto_e

    .line 514
    .end local v23           #w:F
    :cond_26
    const/16 v1, 0x9

    if-ne v12, v1, :cond_27

    .line 515
    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    .line 518
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v3, v3

    mul-float/2addr v3, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    move-result v3

    mul-float v14, v1, v3

    .line 519
    move/from16 v0, v22

    if-eq v0, v4, :cond_0

    .line 524
    :cond_27
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v1, :cond_2b

    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI_DCM:Z

    if-nez v1, :cond_2b

    .line 525
    if-eqz v17, :cond_28

    move/from16 v0, p1

    if-ge v4, v0, :cond_28

    .line 526
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/TextLine;->ascent(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 527
    .local v9, bmAscent:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/TextLine;->descent(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 528
    .local v10, bmDescent:I
    neg-int v1, v9

    add-int/2addr v1, v10

    int-to-float v0, v1

    move/from16 v24, v0

    .line 530
    .local v24, wid:F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    mul-float v1, v1, v24

    add-float/2addr v14, v1

    .line 532
    .end local v9           #bmAscent:I
    .end local v10           #bmDescent:I
    .end local v24           #wid:F
    :cond_28
    const/4 v1, 0x4

    if-ne v13, v1, :cond_2a

    .line 533
    add-int/lit8 v4, v4, 0x1

    .line 555
    :cond_29
    :goto_f
    add-int/lit8 v2, v4, 0x1

    goto/16 :goto_a

    .line 534
    :cond_2a
    const/16 v1, 0x8

    if-ne v13, v1, :cond_29

    .line 535
    add-int/lit8 v4, v4, 0x3

    goto :goto_f

    .line 538
    :cond_2b
    if-eqz v8, :cond_29

    .line 540
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI_DCM:Z

    if-eqz v1, :cond_2c

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    .line 544
    :cond_2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/TextLine;->ascent(I)F

    move-result v9

    .line 545
    .local v9, bmAscent:F
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    neg-float v3, v9

    mul-float/2addr v1, v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v24, v1, v3

    .line 546
    .restart local v24       #wid:F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    mul-float v1, v1, v24

    add-float/2addr v14, v1

    .line 547
    add-int/lit8 v4, v4, 0x1

    .line 549
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI_DCM:Z

    if-eqz v1, :cond_29

    move/from16 v0, v22

    if-ne v0, v4, :cond_29

    goto/16 :goto_1

    .line 412
    .end local v7           #advance:Z
    .end local v8           #bm:Landroid/graphics/Bitmap;
    .end local v9           #bmAscent:F
    .end local v12           #codept:I
    .end local v13           #emojiBytes:I
    .end local v16           #inSegment:Z
    .end local v17           #isEmoji:Z
    .end local v24           #wid:F
    :cond_2d
    add-int/lit8 v15, v15, 0x2

    goto/16 :goto_3
.end method

.method metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 2
    .parameter "fmi"

    .prologue
    .line 354
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0
.end method

.method nextTab(F)F
    .locals 1
    .parameter "h"

    .prologue
    .line 1321
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v0

    .line 1324
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v0

    goto :goto_0
.end method

.method set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V
    .locals 9
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "limit"
    .parameter "dir"
    .parameter "directions"
    .parameter "hasTabs"
    .parameter "tabStops"

    .prologue
    .line 147
    iput-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 148
    iput-object p2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 149
    iput p3, p0, Landroid/text/TextLine;->mStart:I

    .line 150
    sub-int v7, p4, p3

    iput v7, p0, Landroid/text/TextLine;->mLen:I

    .line 151
    iput p5, p0, Landroid/text/TextLine;->mDir:I

    .line 152
    iput-object p6, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 153
    iget-object v7, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    if-nez v7, :cond_0

    .line 154
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Directions cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 156
    :cond_0
    move/from16 v0, p7

    iput-boolean v0, p0, Landroid/text/TextLine;->mHasTabs:Z

    .line 157
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 159
    const/4 v3, 0x0

    .line 160
    .local v3, hasReplacement:Z
    instance-of v7, p2, Landroid/text/Spanned;

    if-eqz v7, :cond_1

    move-object v7, p2

    .line 161
    check-cast v7, Landroid/text/Spanned;

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 162
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {v7, v8, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 163
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v7, v7, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v7, :cond_5

    const/4 v3, 0x1

    .line 166
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    if-nez p7, :cond_2

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq p6, v7, :cond_6

    :cond_2
    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    .line 168
    iget-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v7, :cond_8

    .line 169
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    array-length v7, v7

    iget v8, p0, Landroid/text/TextLine;->mLen:I

    if-ge v7, v8, :cond_4

    .line 170
    :cond_3
    iget v7, p0, Landroid/text/TextLine;->mLen:I

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v7

    new-array v7, v7, [C

    iput-object v7, p0, Landroid/text/TextLine;->mChars:[C

    .line 172
    :cond_4
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    const/4 v8, 0x0

    invoke-static {p2, p3, p4, v7, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 173
    if-eqz v3, :cond_8

    .line 179
    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    .line 180
    .local v1, chars:[C
    move v4, p3

    .local v4, i:I
    :goto_2
    if-ge v4, p4, :cond_8

    .line 181
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, p4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v5

    .line 182
    .local v5, inext:I
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, v5}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 184
    sub-int v7, v4, p3

    const v8, 0xfffc

    aput-char v8, v1, v7

    .line 185
    sub-int v7, v4, p3

    add-int/lit8 v6, v7, 0x1

    .local v6, j:I
    sub-int v2, v5, p3

    .local v2, e:I
    :goto_3
    if-ge v6, v2, :cond_7

    .line 186
    const v7, 0xfeff

    aput-char v7, v1, v6

    .line 185
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 163
    .end local v1           #chars:[C
    .end local v2           #e:I
    .end local v4           #i:I
    .end local v5           #inext:I
    .end local v6           #j:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 166
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 180
    .restart local v1       #chars:[C
    .restart local v4       #i:I
    .restart local v5       #inext:I
    :cond_7
    move v4, v5

    goto :goto_2

    .line 192
    .end local v1           #chars:[C
    .end local v4           #i:I
    .end local v5           #inext:I
    :cond_8
    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 194
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v7, :cond_9

    .line 195
    new-instance v7, Landroid/graphics/Paint;

    iget-object v8, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v7, p0, Landroid/text/TextLine;->mEmojiPaint:Landroid/graphics/Paint;

    .line 196
    iget-object v7, p0, Landroid/text/TextLine;->mEmojiPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 197
    iget-object v7, p0, Landroid/text/TextLine;->mEmojiPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 199
    :cond_9
    return-void
.end method
