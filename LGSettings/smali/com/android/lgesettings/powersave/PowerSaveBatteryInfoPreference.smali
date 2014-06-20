.class public Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;
.super Landroid/preference/Preference;
.source "PowerSaveBatteryInfoPreference.java"


# instance fields
.field private mBatteryLevel:Landroid/widget/TextView;

.field private mConditionSummary:Landroid/widget/TextView;

.field private mConditionTitle:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const v0, 0x7f0400d7

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setLayoutResource(I)V

    .line 53
    iput-object p1, p0, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private batteryCondition()Ljava/lang/String;
    .locals 5

    .prologue
    .line 79
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_condition"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 80
    .local v0, condition:I
    const-string v1, ""

    .line 82
    .local v1, mCondition:Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-object v1

    .line 85
    :pswitch_0
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0803ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0803ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    goto :goto_0

    .line 93
    :pswitch_2
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0803ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/16 v3, 0x8

    .line 59
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 61
    const v0, 0x7f0a01c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->mBatteryLevel:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0a01ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->mConditionTitle:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0a01cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->mConditionSummary:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->mBatteryLevel:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/lgesettings/powersave/BatterySettings;->getBatterySummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const-string v0, "true"

    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2070018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->mConditionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->mConditionSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->mConditionTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080ac3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->mConditionSummary:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->batteryCondition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
