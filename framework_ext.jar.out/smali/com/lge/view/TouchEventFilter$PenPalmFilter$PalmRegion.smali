.class Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;
.super Ljava/lang/Object;
.source "TouchEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/view/TouchEventFilter$PenPalmFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PalmRegion"
.end annotation


# static fields
.field private static final LARGE_PALM_AREA_SIZE:I = 0x190

.field private static final PALM_AREA_SIZE:I = 0xc8


# instance fields
.field private rectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;


# direct methods
.method public constructor <init>(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 913
    iput-object p1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 911
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    .line 914
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 916
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 921
    :cond_0
    return-void
.end method


# virtual methods
.method public assignPalm(IIIZ)V
    .locals 6
    .parameter "id"
    .parameter "x"
    .parameter "y"
    .parameter "largePalm"

    .prologue
    .line 931
    if-eqz p4, :cond_0

    const/16 v1, 0x190

    .line 932
    .local v1, rectSize:I
    :goto_0
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 933
    .local v0, mRect:Landroid/graphics/Rect;
    sub-int v2, p2, v1

    sub-int v3, p3, v1

    add-int v4, p2, v1

    add-int v5, p3, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 934
    return-void

    .line 931
    .end local v0           #mRect:Landroid/graphics/Rect;
    .end local v1           #rectSize:I
    :cond_0
    const/16 v1, 0xc8

    goto :goto_0
.end method

.method public checkPalmRegion(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 937
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 938
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 939
    .local v1, mRect:Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 940
    const/4 v2, 0x1

    .line 943
    .end local v1           #mRect:Landroid/graphics/Rect;
    :goto_1
    return v2

    .line 937
    .restart local v1       #mRect:Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 943
    .end local v1           #mRect:Landroid/graphics/Rect;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public checkPalmRegion(IIJ)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "t"

    .prologue
    .line 960
    const/4 v0, 0x0

    return v0
.end method

.method public delete(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 964
    return-void
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 980
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 924
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 925
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 926
    .local v1, mRect:Landroid/graphics/Rect;
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 924
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 928
    .end local v1           #mRect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setPenUp(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 970
    return-void
.end method

.method public setPenUpTime(J)V
    .locals 0
    .parameter "t"

    .prologue
    .line 973
    return-void
.end method

.method public setUpTime(IJ)V
    .locals 0
    .parameter "id"
    .parameter "time"

    .prologue
    .line 967
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 949
    .local v2, msg:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 950
    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 951
    .local v1, mRect:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 952
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 955
    .end local v1           #mRect:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
