.class public Lcom/android/lgesettings/AppViewHolder;
.super Ljava/lang/Object;
.source "AppViewHolder.java"


# instance fields
.field public appIcon:Landroid/widget/ImageView;

.field public progress:Landroid/widget/ProgressBar;

.field public rootView:Landroid/view/View;

.field public text1:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/lgesettings/AppViewHolder;
    .locals 3
    .parameter "inflater"
    .parameter "convertView"

    .prologue
    .line 23
    if-nez p1, :cond_0

    .line 24
    const v1, 0x7f040054

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 28
    new-instance v0, Lcom/android/lgesettings/AppViewHolder;

    invoke-direct {v0}, Lcom/android/lgesettings/AppViewHolder;-><init>()V

    .line 29
    .local v0, holder:Lcom/android/lgesettings/AppViewHolder;
    iput-object p1, v0, Lcom/android/lgesettings/AppViewHolder;->rootView:Landroid/view/View;

    .line 30
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/lgesettings/AppViewHolder;->text1:Landroid/widget/TextView;

    .line 31
    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v0, Lcom/android/lgesettings/AppViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 32
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/lgesettings/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 33
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/lgesettings/AppViewHolder;->title:Landroid/widget/TextView;

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    .end local v0           #holder:Lcom/android/lgesettings/AppViewHolder;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/AppViewHolder;

    move-object v0, v1

    goto :goto_0
.end method
