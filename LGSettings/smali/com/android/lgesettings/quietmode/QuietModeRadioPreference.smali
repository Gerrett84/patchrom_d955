.class public Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;
.super Landroid/preference/Preference;
.source "QuietModeRadioPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$ImageButtonListener;,
        Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$OnTreeClickListener;
    }
.end annotation


# instance fields
.field private mButtonClickListener:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$ImageButtonListener;

.field private mCheckBox:Landroid/view/View;

.field private mChecked:Z

.field private mContext:Landroid/content/Context;

.field private mDisableDependentsState:Z

.field private mIntent:Landroid/content/Intent;

.field private mIshideEditIcon:Z

.field private mReplyMessage:Ljava/lang/String;

.field private mSettingsButton:Landroid/widget/ImageView;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private mTreeClickListener:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$OnTreeClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$ImageButtonListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$ImageButtonListener;-><init>(Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mButtonClickListener:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$ImageButtonListener;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mIshideEditIcon:Z

    .line 51
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mContext:Landroid/content/Context;

    .line 52
    const v0, 0x7f04011c

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->setLayoutResource(I)V

    .line 53
    const v0, 0x7f04011d

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->setWidgetLayoutResource(I)V

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;)Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$OnTreeClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mTreeClickListener:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$OnTreeClickListener;

    return-object v0
.end method


# virtual methods
.method public hideEditIcon(Z)V
    .locals 2
    .parameter "isHide"

    .prologue
    .line 115
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mSettingsButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mSettingsButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 68
    const v1, 0x7f0a020c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mCheckBox:Landroid/view/View;

    .line 69
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mCheckBox:Landroid/view/View;

    new-instance v2, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v1, 0x7f0a020d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mSettingsButton:Landroid/widget/ImageView;

    .line 79
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mTitleText:Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mReplyMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mTitleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mReplyMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mSummaryText:Landroid/widget/TextView;

    .line 85
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mButtonClickListener:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$ImageButtonListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-boolean v1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mIshideEditIcon:Z

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->hideEditIcon(Z)V

    .line 89
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, checkboxView:Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 91
    check-cast v0, Landroid/widget/Checkable;

    .end local v0           #checkboxView:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 93
    :cond_1
    return-void
.end method

.method protected onCheckBoxClicked()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->setChecked(Z)V

    .line 124
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 149
    .local v0, newValue:Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    :goto_1
    return-void

    .line 147
    .end local v0           #newValue:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 153
    .restart local v0       #newValue:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 128
    iput-boolean p1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mChecked:Z

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->persistBoolean(Z)Z

    .line 130
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->notifyDependencyChange(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->notifyChanged()V

    .line 133
    :cond_0
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mIntent:Landroid/content/Intent;

    .line 104
    return-void
.end method

.method public setOnTreeClickListener(Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$OnTreeClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mTreeClickListener:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$OnTreeClickListener;

    .line 63
    return-void
.end method

.method public setRemoveEditIcon(Z)V
    .locals 0
    .parameter "isHide"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mIshideEditIcon:Z

    .line 112
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mReplyMessage:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 141
    iget-boolean v3, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mDisableDependentsState:Z

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mChecked:Z

    .line 142
    .local v0, shouldDisable:Z
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 141
    .end local v0           #shouldDisable:Z
    :cond_2
    iget-boolean v3, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mChecked:Z

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
