.class public final Lcom/android/lgesettings/nfc/NfcSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "NfcSwitchPreference.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bSwitchEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->bSwitchEnable:Z

    .line 31
    const-string v0, "NFC_SWITCH_PREFERENCE"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->TAG:Ljava/lang/String;

    .line 42
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 43
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method private removeDevider(Landroid/view/View;)Z
    .locals 5
    .parameter "viewRoot"

    .prologue
    const/4 v3, 0x0

    .line 93
    const v4, 0x1020018

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 94
    .local v2, wf:Landroid/view/ViewGroup;
    if-nez v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v3

    .line 98
    :cond_1
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 99
    .local v1, sl:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, iv:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 108
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 109
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method hasSpecifiedLayout()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 58
    const v2, 0x20e007c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, checkableView:Landroid/view/View;
    const-string v2, "NFC_SWITCH_PREFERENCE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkableView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 62
    check-cast v1, Landroid/widget/Switch;

    .line 63
    .local v1, switchView:Landroid/widget/Switch;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    new-instance v2, Lcom/android/lgesettings/nfc/NfcSwitchPreference$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/NfcSwitchPreference$1;-><init>(Lcom/android/lgesettings/nfc/NfcSwitchPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .end local v1           #switchView:Landroid/widget/Switch;
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 76
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 81
    invoke-direct {p0, p1}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->removeDevider(Landroid/view/View;)Z

    .line 83
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    .line 91
    :cond_0
    return-void
.end method

.method public setEnableSwitch(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->bSwitchEnable:Z

    .line 53
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->notifyChanged()V

    .line 54
    return-void
.end method
