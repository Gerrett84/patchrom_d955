.class public Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
.super Ljava/lang/Object;
.source "TouchEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/view/TouchEventFilter$PenPalmFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PenIDFinder"
.end annotation


# static fields
.field protected static final MAX_PEN_PRESSURE:I = 0x23

.field protected static final MAX_SAMPLE_COUNT:I = 0x14

.field protected static final MIN_WIDTH_MINOR:I = 0x4

.field protected static final Z_AVR_MAX_VALUE:I = 0x14

.field protected static final Z_AVR_MIN_VALUE:I = 0xf


# instance fields
.field protected cnt:I

.field protected dAvr:F

.field protected inEdgeRegion:Z

.field protected inPalmRegion:Z

.field protected pen:Z

.field protected result:F

.field final synthetic this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

.field protected zAvr:F


# direct methods
.method public constructor <init>(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 857
    iput-object p1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 858
    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->init()V

    .line 859
    return-void
.end method


# virtual methods
.method public addInfo(IIFFFZ)V
    .locals 10
    .parameter "velX"
    .parameter "velY"
    .parameter "y"
    .parameter "z"
    .parameter "w"
    .parameter "edge"

    .prologue
    .line 872
    iget v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->cnt:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->cnt:I

    .line 873
    iget v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->cnt:I

    const/16 v9, 0x14

    if-lt v8, v9, :cond_4

    const/16 v0, 0x14

    .line 875
    .local v0, count:I
    :goto_0
    int-to-float v8, p1

    int-to-float v9, p2

    mul-float v3, v8, v9

    .line 876
    .local v3, mulVel:F
    div-float v4, v3, p3

    .line 878
    .local v4, newDAvr:F
    if-lez v0, :cond_0

    .line 879
    iget v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    add-int/lit8 v9, v0, -0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    int-to-float v9, v0

    div-float/2addr v8, v9

    int-to-float v9, v0

    div-float v9, p4, v9

    add-float/2addr v8, v9

    iput v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    .line 880
    iget v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->dAvr:F

    add-int/lit8 v9, v0, -0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    int-to-float v9, v0

    div-float/2addr v8, v9

    int-to-float v9, v0

    div-float v9, v4, v9

    add-float/2addr v8, v9

    iput v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->dAvr:F

    .line 883
    :cond_0
    iget v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    const/high16 v9, 0x420c

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_1

    const/high16 v8, 0x4080

    cmpl-float v8, p5, v8

    if-lez v8, :cond_2

    .line 884
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->pen:Z

    .line 886
    :cond_2
    if-nez p6, :cond_3

    .line 887
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inEdgeRegion:Z

    .line 889
    :cond_3
    iget v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    const/high16 v9, 0x41a0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    iget v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    const/high16 v9, 0x41a0

    sub-float v1, v8, v9

    .line 890
    .local v1, deltaZ:F
    :goto_1
    mul-float v8, v1, v1

    const/high16 v9, 0x3f80

    add-float v7, v8, v9

    .line 891
    .local v7, zVal:F
    iget-boolean v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->pen:Z

    if-eqz v8, :cond_7

    const/high16 v6, 0x3f80

    .line 892
    .local v6, penVal:F
    :goto_2
    iget-boolean v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inPalmRegion:Z

    if-eqz v8, :cond_8

    const/4 v5, 0x0

    .line 893
    .local v5, palmVal:F
    :goto_3
    iget-boolean v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inEdgeRegion:Z

    if-eqz v8, :cond_9

    const/4 v2, 0x0

    .line 894
    .local v2, edgeVal:F
    :goto_4
    iget v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->dAvr:F

    mul-float/2addr v8, v6

    mul-float/2addr v8, v5

    mul-float/2addr v8, v2

    int-to-float v9, v0

    mul-float/2addr v8, v9

    div-float/2addr v8, v7

    mul-float v9, v6, v5

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    iput v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->result:F

    .line 895
    return-void

    .line 873
    .end local v0           #count:I
    .end local v1           #deltaZ:F
    .end local v2           #edgeVal:F
    .end local v3           #mulVel:F
    .end local v4           #newDAvr:F
    .end local v5           #palmVal:F
    .end local v6           #penVal:F
    .end local v7           #zVal:F
    :cond_4
    iget v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->cnt:I

    goto :goto_0

    .line 889
    .restart local v0       #count:I
    .restart local v3       #mulVel:F
    .restart local v4       #newDAvr:F
    :cond_5
    iget v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    const/high16 v9, 0x4170

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    iget v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    const/high16 v9, 0x4170

    sub-float v1, v8, v9

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 891
    .restart local v1       #deltaZ:F
    .restart local v7       #zVal:F
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 892
    .restart local v6       #penVal:F
    :cond_8
    const/high16 v5, 0x3f80

    goto :goto_3

    .line 893
    .restart local v5       #palmVal:F
    :cond_9
    const/high16 v2, 0x3f80

    goto :goto_4
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 898
    iget v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->cnt:I

    return v0
.end method

.method public getResult()F
    .locals 1

    .prologue
    .line 897
    iget v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->result:F

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 862
    iput v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->cnt:I

    .line 863
    iput v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    .line 864
    iput v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->dAvr:F

    .line 865
    iput v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->result:F

    .line 866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->pen:Z

    .line 867
    iput-boolean v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inPalmRegion:Z

    .line 868
    iput-boolean v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inEdgeRegion:Z

    .line 869
    return-void
.end method

.method public isFinger()Z
    .locals 1

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->pen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPen()Z
    .locals 2

    .prologue
    .line 899
    iget v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->cnt:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inEdgeRegion:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inPalmRegion:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->pen:Z

    goto :goto_0
.end method

.method public setEdgeRegion(Z)V
    .locals 0
    .parameter "isInEdgeRegion"

    .prologue
    .line 902
    iput-boolean p1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inEdgeRegion:Z

    return-void
.end method

.method public setPalmRegion(Z)V
    .locals 0
    .parameter "isInPalmRegion"

    .prologue
    .line 901
    iput-boolean p1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inPalmRegion:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->cnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] zAvr["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] dAvr["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->dAvr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] isPen["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->isPen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] result["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->getResult()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
