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
    .line 455
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 456
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->setEdgeSize(I)V

    .line 457
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 459
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 460
    invoke-virtual {p0, p1}, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->setEdgeSize(I)V

    .line 461
    return-void
.end method


# virtual methods
.method public getLeftEdgeRegion()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->edgeSize:I

    return v0
.end method

.method public getRightEdgeRegion()I
    .locals 1

    .prologue
    .line 474
    invoke-static {}, Lcom/lge/view/TouchEventFilter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->validX:I

    .line 477
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->validY:I

    goto :goto_0
.end method

.method public setEdgeSize(I)V
    .locals 1
    .parameter "edge"

    .prologue
    .line 464
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->edgeSize:I

    .line 465
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->edgeSize:I

    rsub-int v0, v0, 0x438

    iput v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->validX:I

    .line 466
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->edgeSize:I

    rsub-int v0, v0, 0x780

    iput v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;->validY:I

    .line 467
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 481
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
