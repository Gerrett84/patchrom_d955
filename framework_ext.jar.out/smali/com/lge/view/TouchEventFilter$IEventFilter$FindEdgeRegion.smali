.class public Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;
.super Ljava/lang/Object;
.source "TouchEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/view/TouchEventFilter$IEventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FindEdgeRegion"
.end annotation


# instance fields
.field private edgeSize:I

.field private validX:I

.field private validY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 471
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->setEdgeSize(I)V

    .line 473
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 475
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 476
    invoke-virtual {p0, p1}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->setEdgeSize(I)V

    .line 477
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "max_x"
    .parameter "max_y"
    .parameter "size"

    .prologue
    .line 483
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 484
    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->edgeSize:I

    .line 485
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->edgeSize:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->validX:I

    .line 486
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->edgeSize:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->validY:I

    .line 487
    return-void
.end method


# virtual methods
.method public getBottomRegion()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->validY:I

    return v0
.end method

.method public getLeftEdgeRegion()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->edgeSize:I

    return v0
.end method

.method public getRightEdgeRegion()I
    .locals 1

    .prologue
    .line 500
    invoke-static {}, Lcom/lge/view/TouchEventFilter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->validX:I

    .line 503
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->validY:I

    goto :goto_0
.end method

.method public getTopRegion()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->edgeSize:I

    return v0
.end method

.method public setEdgeSize(I)V
    .locals 1
    .parameter "edge"

    .prologue
    .line 490
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->edgeSize:I

    .line 491
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->edgeSize:I

    rsub-int v0, v0, 0x438

    iput v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->validX:I

    .line 492
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->edgeSize:I

    rsub-int v0, v0, 0x780

    iput v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->validY:I

    .line 493
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->getLeftEdgeRegion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->getRightEdgeRegion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
