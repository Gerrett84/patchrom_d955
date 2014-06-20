.class public Lcom/android/lgesettings/powersave/PowerSaverTips;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "PowerSaverTips.java"


# instance fields
.field private mOKBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0a01e1

    const v7, 0x7f0a01e0

    const v6, 0x7f0a01de

    const/16 v5, 0x8

    .line 37
    if-nez p2, :cond_0

    .line 38
    const/4 v2, 0x0

    .line 99
    :goto_0
    return-object v2

    .line 41
    :cond_0
    move-object v1, p1

    .line 43
    .local v1, mInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400e1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 47
    .local v2, rootView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaverTips;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 48
    :cond_1
    const v3, 0x7f0a01db

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    :cond_2
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "l_dcm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 54
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    :cond_3
    :goto_1
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    const-string v3, "ro.device.hapticfeedback"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, hapticfeedback:Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 64
    const v3, 0x7f0a01dc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    :cond_4
    const v3, 0x7f0a01da

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaverTips;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->supportEmotionalLED(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 75
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaverTips;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->supportHomeKey(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 76
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    :goto_2
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaverTips;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->isOLEDModel(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 87
    const v3, 0x7f0a01dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    :cond_5
    const v3, 0x7f0a01e2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaverTips;->mOKBtn:Landroid/widget/Button;

    .line 91
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaverTips;->mOKBtn:Landroid/widget/Button;

    new-instance v4, Lcom/android/lgesettings/powersave/PowerSaverTips$1;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/powersave/PowerSaverTips$1;-><init>(Lcom/android/lgesettings/powersave/PowerSaverTips;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 55
    .end local v0           #hapticfeedback:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportFrontTouchKeyLight()Z

    move-result v3

    if-nez v3, :cond_3

    .line 56
    const v3, 0x7f0a01df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 78
    .restart local v0       #hapticfeedback:Ljava/lang/String;
    :cond_7
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 81
    :cond_8
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method
