.class public Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;
.super Ljava/lang/Object;
.source "TouchEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/view/TouchEventFilter$IEventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchCheckMask"
.end annotation


# instance fields
.field private count:I

.field private mask:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 489
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 490
    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearAllMask()I

    .line 491
    return-void
.end method


# virtual methods
.method public calCount()V
    .locals 3

    .prologue
    .line 532
    const/4 v1, 0x1

    .line 533
    .local v1, index:I
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->count:I

    .line 534
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 535
    iget v2, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->mask:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    .line 536
    iget v2, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->count:I

    .line 537
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 539
    :cond_1
    return-void
.end method

.method public checkMask(I)Z
    .locals 3
    .parameter "i"

    .prologue
    const/4 v0, 0x1

    .line 520
    iget v1, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->mask:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAllMask()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 514
    iput v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->mask:I

    .line 515
    invoke-virtual {p0, v0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setCount(I)V

    .line 516
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->mask:I

    return v0
.end method

.method public clearMask(I)I
    .locals 2
    .parameter "i"

    .prologue
    .line 507
    invoke-virtual {p0, p1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->checkMask(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->decCount()V

    .line 509
    :cond_0
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->mask:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->mask:I

    .line 510
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->mask:I

    return v0
.end method

.method public decCount()V
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->count:I

    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->count:I

    return v0
.end method

.method public getLastBitToID()I
    .locals 2

    .prologue
    .line 542
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 543
    invoke-virtual {p0, v0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->checkMask(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    .end local v0           #i:I
    :goto_1
    return v0

    .line 542
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getMask()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->mask:I

    return v0
.end method

.method public incCount()V
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->count:I

    return-void
.end method

.method public setAllMask(I)I
    .locals 1
    .parameter "newMask"

    .prologue
    .line 501
    iput p1, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->mask:I

    .line 502
    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->calCount()V

    .line 503
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->mask:I

    return v0
.end method

.method public setCount(I)V
    .locals 0
    .parameter "newCount"

    .prologue
    .line 530
    iput p1, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->count:I

    return-void
.end method

.method public setMask(I)I
    .locals 2
    .parameter "i"

    .prologue
    .line 494
    invoke-virtual {p0, p1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->checkMask(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->incCount()V

    .line 496
    :cond_0
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->mask:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->mask:I

    .line 497
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->mask:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .local v0, msg:Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
