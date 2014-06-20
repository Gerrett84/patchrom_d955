.class public Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;
.super Landroid/widget/BaseAdapter;
.source "KeyguardAppWidgetPickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/KeyguardAppWidgetPickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AppWidgetAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsCameraEnabled:Z

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "isCameraEnabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 569
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 570
    iput-object p1, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->mContext:Landroid/content/Context;

    .line 571
    iput-object p2, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->mItems:Ljava/util/List;

    .line 572
    iput-boolean p3, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->mIsCameraEnabled:Z

    .line 573
    return-void
.end method


# virtual methods
.method public cancelAllWidgetPreviewLoaders()V
    .locals 2

    .prologue
    .line 618
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;

    invoke-virtual {v1}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->cancelLoadingWidgetPreview()V

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 593
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 600
    if-nez p2, :cond_0

    .line 601
    iget-object v3, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400b0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 604
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;

    .line 605
    .local v1, item:Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;
    const v3, 0x7f0a0135

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 606
    .local v2, textView:Landroid/widget/TextView;
    iget-object v3, v1, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    const v3, 0x7f0a004e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 608
    .local v0, iconView:Landroid/widget/ImageView;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 609
    iget-boolean v3, p0, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->mIsCameraEnabled:Z

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    .line 610
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 612
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/lgesettings/KeyguardAppWidgetPickActivity$Item;->loadWidgetPreview(Landroid/widget/ImageView;)V

    .line 614
    return-object p2
.end method
