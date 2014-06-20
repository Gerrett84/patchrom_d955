.class public Lcom/android/lgesettings/wifi/TetherProgressCategory;
.super Lcom/android/lgesettings/ProgressCategoryBase;
.source "TetherProgressCategory.java"


# instance fields
.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/TetherProgressCategory;->mProgress:Z

    .line 36
    const v0, 0x7f0400fb

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/TetherProgressCategory;->setLayoutResource(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/lgesettings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 42
    const v2, 0x7f0a0219

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 43
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x7f0a021a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, progressBar:Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/lgesettings/wifi/TetherProgressCategory;->mProgress:Z

    if-eqz v2, :cond_0

    .line 46
    const v2, 0x7f080094

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 56
    :goto_0
    iget-boolean v2, p0, Lcom/android/lgesettings/wifi/TetherProgressCategory;->mProgress:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    return-void

    .line 48
    :cond_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 56
    :cond_1
    const/4 v2, 0x4

    goto :goto_1
.end method
