.class Lcom/lge/view/TouchEventFilter$SensitivityFilter;
.super Ljava/lang/Object;
.source "TouchEventFilter.java"

# interfaces
.implements Lcom/lge/view/TouchEventFilter$IEventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/view/TouchEventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensitivityFilter"
.end annotation


# instance fields
.field private final PRESSURE_LIMIT:I

.field private act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

.field private downMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

.field private reportIdBits:I

.field private reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

.field final synthetic this$0:Lcom/lge/view/TouchEventFilter;


# direct methods
.method public constructor <init>(Lcom/lge/view/TouchEventFilter;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 759
    iput-object p1, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 754
    const/16 v0, 0x28

    iput v0, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->PRESSURE_LIMIT:I

    .line 756
    new-instance v0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-direct {v0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;-><init>()V

    iput-object v0, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->downMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    .line 757
    new-instance v0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-direct {v0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;-><init>()V

    iput-object v0, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    .line 760
    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->init()V

    .line 761
    return-void
.end method


# virtual methods
.method public filtering(Landroid/view/MotionEvent;I)Z
    .locals 10
    .parameter "event"
    .parameter "tmpMask"

    .prologue
    const/4 v7, 0x1

    .line 771
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 772
    .local v0, NI:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 774
    .local v1, action:I
    iget-object v8, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearAllMask()I

    .line 776
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 777
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 778
    .local v3, id:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v8

    const/high16 v9, 0x437f

    mul-float/2addr v8, v9

    float-to-int v5, v8

    .line 779
    .local v5, pressure:I
    const/16 v8, 0x28

    if-le v5, v8, :cond_2

    move v6, v7

    .line 781
    .local v6, validPressure:Z
    :goto_1
    iget-object v8, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->downMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8, v3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->checkMask(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 782
    if-eqz v6, :cond_0

    .line 783
    iget-object v8, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->downMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8, v3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setMask(I)I

    .line 786
    :cond_0
    iget-object v8, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->downMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8, v3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->checkMask(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 787
    iget-object v8, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8, v3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setMask(I)I

    .line 776
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 779
    .end local v6           #validPressure:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 790
    .end local v3           #id:I
    .end local v5           #pressure:I
    :cond_3
    const/4 v8, 0x6

    if-eq v1, v8, :cond_4

    if-ne v1, v7, :cond_5

    .line 791
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 792
    .local v4, index:I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 793
    .restart local v3       #id:I
    iget-object v8, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->downMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8, v3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearMask(I)I

    .line 794
    iget-object v8, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8, v3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearMask(I)I

    .line 797
    .end local v3           #id:I
    .end local v4           #index:I
    :cond_5
    iget-object v8, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v8}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v8

    iput v8, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->reportIdBits:I

    .line 799
    return v7
.end method

.method public getAct()Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    return-object v0
.end method

.method public getReportMask()I
    .locals 1

    .prologue
    .line 807
    iget v0, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->reportIdBits:I

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 764
    sget-object v0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->NONE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    iput-object v0, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 765
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->reportIdBits:I

    .line 766
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->downMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearAllMask()I

    .line 767
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearAllMask()I

    .line 768
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensitivityFilter: downMask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$SensitivityFilter;->downMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
