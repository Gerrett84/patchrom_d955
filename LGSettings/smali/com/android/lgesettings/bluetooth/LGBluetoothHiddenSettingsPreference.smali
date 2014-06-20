.class public Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;
.super Landroid/preference/CheckBoxPreference;
.source "LGBluetoothHiddenSettingsPreference.java"


# instance fields
.field private mCheckBox:Landroid/view/View;

.field private final mFragment:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

.field private mKey:Ljava/lang/String;

.field private mSetingsButton:Landroid/widget/ImageView;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private mUseButton:Z


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Ljava/lang/String;ZZ)V
    .locals 3
    .parameter "fragment"
    .parameter "key"
    .parameter "useCheckBox"
    .parameter "useButton"

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mFragment:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    .line 40
    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mKey:Ljava/lang/String;

    .line 41
    iput-boolean p4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mUseButton:Z

    .line 42
    const v0, 0x7f040028

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setLayoutResource(I)V

    .line 43
    if-eqz p3, :cond_0

    .line 44
    const v0, 0x7f0400f3

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setWidgetLayoutResource(I)V

    .line 46
    :cond_0
    return-void
.end method

.method private enableSettingsButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 97
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->isChecked()Z

    move-result v0

    .line 99
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 100
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 101
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 102
    if-nez v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 106
    .end local v0           #checked:Z
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 112
    :cond_2
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 51
    const v1, 0x7f0a0051

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mCheckBox:Landroid/view/View;

    .line 52
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mCheckBox:Landroid/view/View;

    new-instance v2, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference$1;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v1, 0x7f0a0053

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    .line 60
    const v1, 0x7f0a0052

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, divider:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mUseButton:Z

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :goto_0
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mTitleText:Landroid/widget/TextView;

    .line 69
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    .line 70
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference$2;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->enableSettingsButton()V

    .line 78
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCheckBoxClicked()V
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 88
    .local v0, setValue:Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setChecked(Z)V

    .line 89
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mFragment:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->onCheckboxResult(Ljava/lang/String;)V

    .line 90
    return-void

    .line 87
    .end local v0           #setValue:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onSettingsButtonClicked(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mFragment:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->onSettingsButtonResult(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 83
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->enableSettingsButton()V

    .line 84
    return-void
.end method
