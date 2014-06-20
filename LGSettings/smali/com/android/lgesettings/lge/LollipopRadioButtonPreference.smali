.class public Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;
.super Landroid/preference/Preference;
.source "LollipopRadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lge/LollipopRadioButtonPreference$OnImageButtonClickListener;
    }
.end annotation


# instance fields
.field private buttonImage:Landroid/widget/ImageView;

.field private buttonImageId:I

.field private contentDesc:Ljava/lang/String;

.field private dashImageId:I

.field private iconImageId:I

.field private mChecked:Z

.field private mImageButtonClickListener:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference$OnImageButtonClickListener;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mRadioPreference:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->mImageButtonClickListener:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference$OnImageButtonClickListener;

    .line 46
    const v0, 0x7f0400f5

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->setLayoutResource(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 62
    const v2, 0x7f0a0213

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 63
    .local v1, iconImage:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 64
    iget v2, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->iconImageId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    :cond_0
    const v2, 0x7f0a0214

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 68
    .local v0, dashImage:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 69
    iget v2, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->dashImageId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 72
    :cond_1
    const v2, 0x7f0a0215

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->buttonImage:Landroid/widget/ImageView;

    .line 73
    iget-object v2, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->buttonImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->buttonImage:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->buttonImageId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object v2, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->buttonImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->contentDesc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->buttonImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_2
    const v2, 0x7f0a0212

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 80
    iget-object v2, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v3, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->mChecked:Z

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 82
    const v2, 0x7f0a0211

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->mRadioPreference:Landroid/view/View;

    .line 83
    iget-object v2, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->mRadioPreference:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->mRadioPreference:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    .line 84
    iget-object v2, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->mRadioPreference:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->mRadioPreference:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 87
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 91
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0211

    if-ne v1, v2, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 94
    .local v0, newValue:Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    .end local v0           #newValue:Z
    :cond_0
    :goto_1
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0215

    if-ne v1, v2, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->mImageButtonClickListener:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference$OnImageButtonClickListener;

    invoke-interface {v1}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference$OnImageButtonClickListener;->onImageButtonClickListener()V

    goto :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 107
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0a0211

    if-ne v3, v4, :cond_1

    .line 108
    const/16 v3, 0x42

    if-ne p2, v3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 111
    .local v0, newValue:Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    .end local v0           #newValue:Z
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 109
    goto :goto_0

    :cond_1
    move v1, v2

    .line 117
    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->mChecked:Z

    .line 126
    iget-object v0, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 129
    :cond_0
    return-void
.end method

.method public setContentDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "contentDesc"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->contentDesc:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setIconImage(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 132
    iput p1, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->iconImageId:I

    .line 133
    return-void
.end method

.method public setOnImageButtonClickListener(Lcom/android/lgesettings/lge/LollipopRadioButtonPreference$OnImageButtonClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->mImageButtonClickListener:Lcom/android/lgesettings/lge/LollipopRadioButtonPreference$OnImageButtonClickListener;

    .line 153
    return-void
.end method

.method public setbuttonImage(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 136
    iput p1, p0, Lcom/android/lgesettings/lge/LollipopRadioButtonPreference;->buttonImageId:I

    .line 137
    return-void
.end method
