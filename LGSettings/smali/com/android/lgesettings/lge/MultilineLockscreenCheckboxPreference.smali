.class Lcom/android/lgesettings/lge/MultilineLockscreenCheckboxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "MultilineLockscreenCheckboxPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected makeMultiline(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 30
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 31
    check-cast v2, Landroid/view/ViewGroup;

    .line 32
    .local v2, vg:Landroid/view/ViewGroup;
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 33
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .local v0, tv:Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 36
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 39
    .end local v0           #tv:Landroid/widget/TextView;
    .end local v1           #v:Landroid/view/View;
    .end local v2           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/MultilineLockscreenCheckboxPreference;->makeMultiline(Landroid/view/View;)V

    .line 27
    return-void
.end method
