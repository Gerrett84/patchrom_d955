.class public Lcom/lge/camera/components/InnerListView;
.super Landroid/widget/ListView;
.source "InnerListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public getFooterViewHeight()I
    .locals 4

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, result:I
    invoke-virtual {p0}, Lcom/lge/camera/components/InnerListView;->getChildCount()I

    move-result v0

    .line 47
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/InnerListView;->getFooterViewsCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 48
    add-int v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/lge/camera/components/InnerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return v2
.end method

.method public getHeaderViewHeight()I
    .locals 3

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/InnerListView;->getHeaderViewsCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 39
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/InnerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return v1
.end method

.method public getListViewHeight()I
    .locals 3

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/InnerListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 56
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/InnerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 33
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 25
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/components/InnerListView;->getListViewHeight()I

    move-result v0

    .line 26
    .local v0, scrollRange:I
    invoke-virtual {p0}, Lcom/lge/camera/components/InnerListView;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/lge/camera/components/InnerListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
