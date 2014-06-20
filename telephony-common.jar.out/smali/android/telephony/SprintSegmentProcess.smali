.class public Landroid/telephony/SprintSegmentProcess;
.super Ljava/lang/Object;
.source "SprintSegmentProcess.java"


# static fields
.field public static final SEG_DASH:C = '-'

.field public static final SEG_SPACE:C = ' '


# instance fields
.field private EmailLen:I

.field public codeUnitSize:I

.field private mSegmentedString:Ljava/lang/StringBuilder;

.field private final mSmileyTexts:[Ljava/lang/String;

.field private msegmentPosInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private segInsertPos:I

.field private textLen:I


# direct methods
.method constructor <init>(II)V
    .locals 2
    .parameter "bodylen"
    .parameter "emailLen"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/telephony/SprintSegmentProcess;->mSegmentedString:Ljava/lang/StringBuilder;

    .line 19
    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/SprintSegmentProcess;->segInsertPos:I

    .line 30
    iput p1, p0, Landroid/telephony/SprintSegmentProcess;->textLen:I

    .line 31
    iput p2, p0, Landroid/telephony/SprintSegmentProcess;->EmailLen:I

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/telephony/SprintSegmentProcess;->msegmentPosInfo:Ljava/util/HashMap;

    .line 34
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    .local v0, rsrc:Landroid/content/res/Resources;
    const v1, 0x1070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/SprintSegmentProcess;->mSmileyTexts:[Ljava/lang/String;

    .line 36
    return-void
.end method

.method private checkBoundSmiley(I)I
    .locals 8
    .parameter "pos"

    .prologue
    .line 110
    move v2, p1

    .line 111
    .local v2, modifidPos:I
    const/4 v1, 0x0

    .line 112
    .local v1, lenOfSmiley:I
    const/4 v0, 0x0

    .line 114
    .local v0, cmpStPos:I
    iget-object v6, p0, Landroid/telephony/SprintSegmentProcess;->mSmileyTexts:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v5, v6, -0x1

    .local v5, smileyNum:I
    :goto_0
    if-ltz v5, :cond_2

    .line 116
    iget-object v6, p0, Landroid/telephony/SprintSegmentProcess;->mSmileyTexts:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 117
    const/4 v4, 0x1

    .local v4, smileyLen:I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 119
    sub-int v0, p1, v4

    .line 120
    iget-object v6, p0, Landroid/telephony/SprintSegmentProcess;->mSegmentedString:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int v7, v0, v1

    if-lt v6, v7, :cond_0

    .line 122
    iget-object v6, p0, Landroid/telephony/SprintSegmentProcess;->mSegmentedString:Ljava/lang/StringBuilder;

    add-int v7, v0, v1

    invoke-virtual {v6, v0, v7}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/SprintSegmentProcess;->mSmileyTexts:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 124
    sub-int v2, p1, v4

    move v3, v2

    .line 132
    .end local v2           #modifidPos:I
    .end local v4           #smileyLen:I
    .local v3, modifidPos:I
    :goto_2
    return v3

    .line 117
    .end local v3           #modifidPos:I
    .restart local v2       #modifidPos:I
    .restart local v4       #smileyLen:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 114
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .end local v4           #smileyLen:I
    :cond_2
    move v3, v2

    .line 132
    .end local v2           #modifidPos:I
    .restart local v3       #modifidPos:I
    goto :goto_2
.end method

.method public static countAsciiSeptets(Ljava/lang/CharSequence;)I
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, -0x1

    .line 79
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 80
    .local v1, msgLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 81
    sget-object v3, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 85
    .end local v1           #msgLen:I
    :cond_0
    return v1

    .line 80
    .restart local v1       #msgLen:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findSegmentIndPosition(I)Z
    .locals 9
    .parameter "segIndex"

    .prologue
    const/16 v8, 0x20

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 136
    const/4 v3, 0x0

    .line 137
    .local v3, tempInsertPos:I
    const/4 v1, 0x0

    .line 138
    .local v1, remainStringLen:I
    const/4 v0, 0x0

    .line 139
    .local v0, previousSIPos:I
    const/4 v2, 0x0

    .line 141
    .local v2, srchIdx:I
    if-nez p1, :cond_1

    .line 143
    iput v5, p0, Landroid/telephony/SprintSegmentProcess;->segInsertPos:I

    .line 144
    iget-object v5, p0, Landroid/telephony/SprintSegmentProcess;->msegmentPosInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Landroid/telephony/SprintSegmentProcess;->segInsertPos:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    :goto_0
    return v4

    .line 148
    :cond_1
    iget v6, p0, Landroid/telephony/SprintSegmentProcess;->segInsertPos:I

    invoke-virtual {p0}, Landroid/telephony/SprintSegmentProcess;->getMaxCharacterSegment()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/telephony/SprintSegmentProcess;->getMaxSegment()I

    move-result v7

    sub-int v3, v6, v7

    .line 149
    iget v0, p0, Landroid/telephony/SprintSegmentProcess;->segInsertPos:I

    .line 152
    iget-object v6, p0, Landroid/telephony/SprintSegmentProcess;->mSegmentedString:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_2

    .line 153
    iput v3, p0, Landroid/telephony/SprintSegmentProcess;->segInsertPos:I

    .line 190
    :goto_1
    iget-object v6, p0, Landroid/telephony/SprintSegmentProcess;->msegmentPosInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Landroid/telephony/SprintSegmentProcess;->segInsertPos:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget v6, p0, Landroid/telephony/SprintSegmentProcess;->textLen:I

    iget v7, p0, Landroid/telephony/SprintSegmentProcess;->segInsertPos:I

    sub-int v1, v6, v7

    .line 194
    invoke-virtual {p0}, Landroid/telephony/SprintSegmentProcess;->getMaxCharacterSegment()I

    move-result v6

    if-gt v1, v6, :cond_0

    move v4, v5

    .line 198
    goto :goto_0

    .line 155
    :cond_2
    add-int/lit8 v2, v3, -0x1

    :goto_2
    if-le v2, v0, :cond_3

    .line 159
    iget-object v6, p0, Landroid/telephony/SprintSegmentProcess;->mSegmentedString:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_6

    .line 161
    if-ne p1, v4, :cond_5

    .line 165
    iget-object v6, p0, Landroid/telephony/SprintSegmentProcess;->mSegmentedString:Ljava/lang/StringBuilder;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_4

    .line 167
    move v2, v0

    .line 183
    :cond_3
    :goto_3
    if-ne v2, v0, :cond_7

    .line 184
    invoke-direct {p0, v3}, Landroid/telephony/SprintSegmentProcess;->checkBoundSmiley(I)I

    move-result v6

    iput v6, p0, Landroid/telephony/SprintSegmentProcess;->segInsertPos:I

    goto :goto_1

    .line 171
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 176
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 178
    goto :goto_3

    .line 155
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 187
    :cond_7
    iput v2, p0, Landroid/telephony/SprintSegmentProcess;->segInsertPos:I

    goto :goto_1
.end method

.method private removeSegmentInfoAll()V
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Landroid/telephony/SprintSegmentProcess;->msegmentPosInfo:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 234
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 236
    :cond_0
    iget-object v1, p0, Landroid/telephony/SprintSegmentProcess;->msegmentPosInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, index:I
    :goto_0
    if-ltz v0, :cond_1

    .line 238
    iget-object v1, p0, Landroid/telephony/SprintSegmentProcess;->msegmentPosInfo:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 241
    :cond_1
    return-void
.end method


# virtual methods
.method public calcNeedTotalSegment(Ljava/lang/String;)I
    .locals 4
    .parameter "msgText"

    .prologue
    const/4 v3, 0x0

    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, segmentIndex:I
    iput v3, p0, Landroid/telephony/SprintSegmentProcess;->segInsertPos:I

    .line 207
    iget-object v1, p0, Landroid/telephony/SprintSegmentProcess;->mSegmentedString:Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/SprintSegmentProcess;->mSegmentedString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 208
    iget-object v1, p0, Landroid/telephony/SprintSegmentProcess;->mSegmentedString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const/4 v0, 0x0

    .line 212
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/SprintSegmentProcess;->getMaxSegment()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SprintSegmentProcess;->getMaxSegment()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 228
    .end local v0           #segmentIndex:I
    :goto_1
    return v0

    .line 217
    .restart local v0       #segmentIndex:I
    :cond_1
    invoke-direct {p0, v0}, Landroid/telephony/SprintSegmentProcess;->findSegmentIndPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getMaxCharacterCountPaginationIndicator()I
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    const-string v1, "remove_pagination_indicator"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getMaxCharacterSegment()I
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Landroid/telephony/SprintSegmentProcess;->EmailLen:I

    if-lez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/telephony/SprintSegmentProcess;->segmentLimitLen()I

    move-result v0

    iget v1, p0, Landroid/telephony/SprintSegmentProcess;->EmailLen:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    .line 74
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SprintSegmentProcess;->segmentLimitLen()I

    move-result v0

    goto :goto_0
.end method

.method public getMaxSegment()I
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0xa

    return v0
.end method

.method public makeSegmentString(II)Ljava/lang/String;
    .locals 2
    .parameter "curSeg"
    .parameter "totalSeg"

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public msegmentPosInfoGet(I)I
    .locals 2
    .parameter "segIdx"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/telephony/SprintSegmentProcess;->msegmentPosInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public msegmentPosInfoSize()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/telephony/SprintSegmentProcess;->msegmentPosInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public needSprintSegmentProcess()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, limitLen:I
    invoke-virtual {p0}, Landroid/telephony/SprintSegmentProcess;->segmentLimitLen()I

    move-result v0

    .line 58
    iget v2, p0, Landroid/telephony/SprintSegmentProcess;->textLen:I

    if-nez v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    iget v3, p0, Landroid/telephony/SprintSegmentProcess;->textLen:I

    iget v2, p0, Landroid/telephony/SprintSegmentProcess;->EmailLen:I

    if-lez v2, :cond_2

    iget v2, p0, Landroid/telephony/SprintSegmentProcess;->EmailLen:I

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/2addr v2, v3

    if-le v2, v0, :cond_0

    .line 67
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 63
    goto :goto_1
.end method

.method public segmentLimitLen()I
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, limitLen:I
    iget v1, p0, Landroid/telephony/SprintSegmentProcess;->codeUnitSize:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 42
    const/16 v0, 0xa0

    .line 46
    :goto_0
    return v0

    .line 44
    :cond_0
    const/16 v0, 0x46

    goto :goto_0
.end method
