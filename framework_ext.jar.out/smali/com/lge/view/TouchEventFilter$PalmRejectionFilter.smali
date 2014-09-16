.class Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;
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
    name = "PalmRejectionFilter"
.end annotation


# instance fields
.field private act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

.field private ignore:Z

.field private reportIdBits:I

.field final synthetic this$0:Lcom/lge/view/TouchEventFilter;


# direct methods
.method public constructor <init>(Lcom/lge/view/TouchEventFilter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 600
    iput-object p1, p0, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 601
    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;->init()V

    .line 602
    return-void
.end method


# virtual methods
.method public filtering(Landroid/view/MotionEvent;I)Z
    .locals 7
    .parameter "event"
    .parameter "tmpMask"

    .prologue
    const/4 v6, 0x1

    .line 611
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 612
    .local v0, NI:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 614
    .local v1, action:I
    const/4 v3, 0x0

    .line 617
    .local v3, isPalm:Z
    iget-boolean v5, p0, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;->ignore:Z

    if-eqz v5, :cond_0

    .line 618
    sget-object v5, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->IGNORE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    iput-object v5, p0, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 619
    const/4 v5, 0x0

    iput v5, p0, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;->reportIdBits:I

    .line 634
    :goto_0
    return v6

    .line 622
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 623
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    .line 624
    .local v4, toolType:I
    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 625
    :cond_1
    const/4 v3, 0x1

    .line 622
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 628
    .end local v4           #toolType:I
    :cond_3
    if-eqz v3, :cond_4

    .line 629
    iput-boolean v6, p0, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;->ignore:Z

    .line 630
    sget-object v5, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->CANCEL:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    iput-object v5, p0, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 632
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v5

    iput v5, p0, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;->reportIdBits:I

    goto :goto_0
.end method

.method public getAct()Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    return-object v0
.end method

.method public getReportMask()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;->reportIdBits:I

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 605
    sget-object v0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->NONE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    iput-object v0, p0, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 606
    iput v1, p0, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;->reportIdBits:I

    .line 607
    iput-boolean v1, p0, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;->ignore:Z

    .line 608
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PalmRejectionFilter: ignore["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/view/TouchEventFilter$PalmRejectionFilter;->ignore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
