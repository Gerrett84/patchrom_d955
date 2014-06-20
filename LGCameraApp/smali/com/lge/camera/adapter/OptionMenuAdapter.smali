.class public Lcom/lge/camera/adapter/OptionMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OptionMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/camera/components/OptionMenu;",
        ">;"
    }
.end annotation


# instance fields
.field private adapterResId:I

.field private mContext:Landroid/content/Context;

.field private mOptionMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/components/OptionMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .parameter "context"
    .parameter "textViewResId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/components/OptionMenu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, optionMenuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/camera/components/OptionMenu;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    iput-object p1, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mOptionMenuList:Ljava/util/ArrayList;

    .line 28
    iput p2, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->adapterResId:I

    .line 29
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "index"
    .parameter "view"
    .parameter "viewgroup"

    .prologue
    const/4 v4, 0x0

    .line 41
    iget-object v5, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 63
    :goto_0
    return-object v1

    .line 45
    :cond_0
    move-object v1, p2

    .line 46
    .local v1, itemView:Landroid/view/View;
    if-nez v1, :cond_1

    .line 47
    iget-object v5, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 48
    .local v3, vi:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->adapterResId:I

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    new-instance v0, Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;

    invoke-direct {v0, p0}, Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;-><init>(Lcom/lge/camera/adapter/OptionMenuAdapter;)V

    .line 50
    .local v0, holder:Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;
    const v4, 0x7f0900fe

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 51
    const v4, 0x7f0900ff

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;->mMenuTitle:Landroid/widget/TextView;

    .line 53
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    .end local v3           #vi:Landroid/view/LayoutInflater;
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/OptionMenu;

    .line 59
    .local v2, menu:Lcom/lge/camera/components/OptionMenu;
    iget-object v4, v0, Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/lge/camera/components/OptionMenu;->getMenuIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v4, v0, Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;->mMenuTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/components/OptionMenu;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v4, v0, Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;->mMenuTitle:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 55
    .end local v0           #holder:Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;
    .end local v2           #menu:Lcom/lge/camera/components/OptionMenu;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;

    .restart local v0       #holder:Lcom/lge/camera/adapter/OptionMenuAdapter$OptionMenuViewHolder;
    goto :goto_1
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mContext:Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mOptionMenuList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mOptionMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 35
    iput-object v1, p0, Lcom/lge/camera/adapter/OptionMenuAdapter;->mOptionMenuList:Ljava/util/ArrayList;

    .line 37
    :cond_0
    return-void
.end method
