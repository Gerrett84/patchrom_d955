.class public Lcom/lge/camera/postview/PostviewMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PostviewMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/camera/postview/PostviewMenu;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPostviewMenu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/camera/postview/PostviewMenu;",
            ">;"
        }
    .end annotation
.end field

.field private final resId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter "textViewResId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/lge/camera/postview/PostviewMenu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p3, postviewMenuList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/camera/postview/PostviewMenu;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 20
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mContext:Landroid/content/Context;

    .line 21
    iput p2, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->resId:I

    .line 22
    iput-object p3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mPostviewMenu:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 28
    move-object v2, p2

    .line 30
    .local v2, itemView:Landroid/view/View;
    if-nez v2, :cond_0

    .line 31
    iget-object v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 32
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->resId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 34
    new-instance v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;

    invoke-direct {v0, p0}, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;-><init>(Lcom/lge/camera/postview/PostviewMenuAdapter;)V

    .line 35
    .local v0, holder:Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;
    const v3, 0x7f090069

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->mImage:Landroid/widget/ImageView;

    .line 36
    const v3, 0x7f09006a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuName:Landroid/widget/TextView;

    .line 37
    const v3, 0x7f09006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuExtendName:Landroid/widget/TextView;

    .line 39
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->mImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mPostviewMenu:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostviewMenu;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-object v4, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mPostviewMenu:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mPostviewMenu:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostviewMenu;->getLabelApp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 47
    iget-object v4, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuExtendName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mPostviewMenu:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/postview/PostviewMenu;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostviewMenu;->getLabelApp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v3, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuExtendName:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    :goto_1
    return-object v2

    .line 41
    .end local v0           #holder:Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;

    .restart local v0       #holder:Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;
    goto :goto_0

    .line 51
    :cond_1
    iget-object v3, v0, Lcom/lge/camera/postview/PostviewMenuAdapter$PostviewMenuViewHolder;->menuExtendName:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mPostviewMenu:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mPostviewMenu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    iput-object v1, p0, Lcom/lge/camera/postview/PostviewMenuAdapter;->mPostviewMenu:Ljava/util/List;

    .line 69
    :cond_0
    return-void
.end method
