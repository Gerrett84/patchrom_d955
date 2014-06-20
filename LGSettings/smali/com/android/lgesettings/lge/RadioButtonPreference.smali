.class public Lcom/android/lgesettings/lge/RadioButtonPreference;
.super Landroid/preference/Preference;
.source "RadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private mChecked:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mRadioPreference:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/lgesettings/lge/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const v1, 0x7f040101

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setLayoutResource(I)V

    .line 32
    sget-object v1, Lcom/android/lgesettings/R$styleable;->IconPreferenceScreen:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/lge/RadioButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 35
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/lgesettings/lge/RadioButtonPreference;->mChecked:Z

    return v0
.end method

.method public notifyDataChanged()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->notifyChanged()V

    .line 110
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 54
    const v1, 0x7f0a004e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 55
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/lge/RadioButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/lgesettings/lge/RadioButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :cond_0
    const v1, 0x7f0a0212

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/lgesettings/lge/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 60
    iget-object v1, p0, Lcom/android/lgesettings/lge/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v2, p0, Lcom/android/lgesettings/lge/RadioButtonPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 62
    const v1, 0x7f0a022a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/lge/RadioButtonPreference;->mRadioPreference:Landroid/view/View;

    .line 63
    iget-object v1, p0, Lcom/android/lgesettings/lge/RadioButtonPreference;->mRadioPreference:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/lgesettings/lge/RadioButtonPreference;->mRadioPreference:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/android/lgesettings/lge/RadioButtonPreference;->mRadioPreference:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v1, p0, Lcom/android/lgesettings/lge/RadioButtonPreference;->mRadioPreference:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 67
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a022a

    if-ne v1, v2, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 74
    .local v0, newValue:Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    .end local v0           #newValue:Z
    :cond_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "parent"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 48
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 82
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0a022a

    if-ne v3, v4, :cond_1

    .line 83
    const/16 v3, 0x42

    if-ne p2, v3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 86
    .local v0, newValue:Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/RadioButtonPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    .end local v0           #newValue:Z
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 84
    goto :goto_0

    :cond_1
    move v1, v2

    .line 92
    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/lgesettings/lge/RadioButtonPreference;->mChecked:Z

    .line 102
    iget-object v0, p0, Lcom/android/lgesettings/lge/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/lgesettings/lge/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->notifyChanged()V

    .line 106
    return-void
.end method
