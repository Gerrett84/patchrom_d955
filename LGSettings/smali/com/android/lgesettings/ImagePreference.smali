.class public Lcom/android/lgesettings/ImagePreference;
.super Landroid/preference/Preference;
.source "ImagePreference.java"


# instance fields
.field IsRIdImage:Z

.field RIdImage:I

.field mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/lgesettings/ImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/ImagePreference;->IsRIdImage:Z

    .line 23
    const v0, 0x7f0400a8

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/ImagePreference;->setLayoutResource(I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 37
    const v0, 0x7f0a0149

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/ImagePreference;->mImageView:Landroid/widget/ImageView;

    .line 38
    iget-boolean v0, p0, Lcom/android/lgesettings/ImagePreference;->IsRIdImage:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/ImagePreference;->mImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/lgesettings/ImagePreference;->RIdImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    :cond_0
    return-void
.end method

.method public setImage(I)V
    .locals 1
    .parameter "Setimage"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/lgesettings/ImagePreference;->RIdImage:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/ImagePreference;->IsRIdImage:Z

    .line 47
    return-void
.end method
