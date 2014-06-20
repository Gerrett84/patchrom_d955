.class public Lcom/android/lgesettings/lge/DoubleTitlePreference;
.super Landroid/preference/Preference;
.source "DoubleTitlePreference.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mSubTitleGravity:I

.field private mSubTitleTV:Landroid/widget/TextView;

.field private mSubTitleText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/lgesettings/lge/DoubleTitlePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/lgesettings/lge/DoubleTitlePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const v1, 0x7f0400ed

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/DoubleTitlePreference;->setLayoutResource(I)V

    .line 35
    sget-object v1, Lcom/android/lgesettings/R$styleable;->IconPreferenceScreen:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/lge/DoubleTitlePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 38
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 44
    const v1, 0x7f0a004e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 45
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/lge/DoubleTitlePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/lgesettings/lge/DoubleTitlePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    :cond_0
    const v1, 0x7f0a00ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/lge/DoubleTitlePreference;->mSubTitleTV:Landroid/widget/TextView;

    .line 50
    iget-object v1, p0, Lcom/android/lgesettings/lge/DoubleTitlePreference;->mSubTitleTV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/lgesettings/lge/DoubleTitlePreference;->mSubTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, p0, Lcom/android/lgesettings/lge/DoubleTitlePreference;->mSubTitleTV:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/lgesettings/lge/DoubleTitlePreference;->mSubTitleGravity:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 52
    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/lgesettings/lge/DoubleTitlePreference;->mSubTitleText:Ljava/lang/CharSequence;

    .line 56
    return-void
.end method
