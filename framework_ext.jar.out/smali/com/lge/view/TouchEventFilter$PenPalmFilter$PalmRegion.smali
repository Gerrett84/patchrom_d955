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
    .locals 3
    .parameter

    .prologue
    .line 868
    iput-object p1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 866
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    .line 869
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 870
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 872
    :cond_0
    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->init()V

    .line 873
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
    .line 883
    if-eqz p4, :cond_0

    const/16 v1, 0x190

    .line 884
    .local v1, rectSize:I
    :goto_0
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 885
    .local v0, mRect:Landroid/graphics/Rect;
    sub-int v2, p2, v1

    sub-int v3, p3, v1

    add-int v4, p2, v1

    add-int v5, p3, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 886
    return-void

    .line 883
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
    .line 889
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 890
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 891
    .local v1, mRect:Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 892
    const/4 v2, 0x1

    .line 895
    .end local v1           #mRect:Landroid/graphics/Rect;
    :goto_1
    return v2

    .line 889
    .restart local v1       #mRect:Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 895
    .end local v1           #mRect:Landroid/graphics/Rect;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 876
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 877
    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 878
    .local v1, mRect:Landroid/graphics/Rect;
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 876
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 880
    .end local v1           #mRect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 901
    .local v2, msg:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 902
    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 903
    .local v1, mRect:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 904
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

    .line 901
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 907
    .end local v1           #mRect:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
