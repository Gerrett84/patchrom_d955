.class public Lcom/android/lgesettings/quietmode/QuietModeDayPreference;
.super Landroid/preference/Preference;
.source "QuietModeDayPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private day:[I

.field private mContext:Landroid/content/Context;

.field private mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

.field private toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->day:[I

    .line 29
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->mContext:Landroid/content/Context;

    .line 30
    const v0, 0x7f040116

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->setLayoutResource(I)V

    .line 32
    return-void

    .line 24
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private SetToggleButtonListener()V
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    .local v0, days:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v1, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v1, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    return-void
.end method

.method private getToggleDayToString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v4, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 116
    .local v0, current_day:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v5, 0x7

    if-ge v3, v5, :cond_2

    .line 117
    move v0, v3

    .line 118
    :try_start_0
    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v5, v3}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 120
    .local v1, dayBtn:Landroid/widget/ToggleButton;
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->day:[I

    const/4 v6, 0x1

    aput v6, v5, v3

    .line 128
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->day:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->day:[I

    const/4 v6, 0x0

    aput v6, v5, v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 130
    .end local v1           #dayBtn:Landroid/widget/ToggleButton;
    :catch_0
    move-exception v2

    .line 131
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v5, "QuietModeDayPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Toggle button null point exception :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v5, "1111111"

    .line 134
    .end local v2           #e:Ljava/lang/NullPointerException;
    :goto_2
    return-object v5

    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method private showToggleDayChecked()V
    .locals 4

    .prologue
    .line 152
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_2

    .line 153
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v3, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 155
    .local v0, dayBtn:Landroid/widget/ToggleButton;
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->day:[I

    aget v3, v3, v1

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 157
    .local v2, isChecked:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 152
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v2           #isChecked:Z
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 162
    .end local v0           #dayBtn:Landroid/widget/ToggleButton;
    :cond_2
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 37
    const-string v2, "QuietModeDayPreference"

    const-string v3, "onBindView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 39
    const v2, 0x7f0a024d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    .line 41
    const/4 v0, 0x0

    .local v0, days:I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 42
    packed-switch v0, :pswitch_data_0

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :pswitch_0
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080b69

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 88
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->SetToggleButtonListener()V

    .line 89
    new-instance v2, Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 90
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getToggleDayToArray()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->day:[I

    .line 91
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->showToggleDayChecked()V

    .line 92
    return-void

    .line 49
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080b6a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 54
    :pswitch_2
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080b6b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 59
    :pswitch_3
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080b6c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 64
    :pswitch_4
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080b6d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 69
    :pswitch_5
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080b6e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 74
    :pswitch_6
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080b6f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->save()V

    .line 149
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->save()V

    .line 106
    return-void
.end method

.method public onResume(Lcom/android/lgesettings/quietmode/QuietModeInfo;)V
    .locals 1
    .parameter "quietModeInfo"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    if-nez v0, :cond_0

    .line 96
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    if-eqz v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->showToggleDayChecked()V

    .line 102
    :cond_1
    return-void
.end method

.method public save()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->getToggleDayToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBDays(Ljava/lang/String;)V

    .line 110
    return-void
.end method
