.class public Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "QuietModeScheduledSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private mIcon:Landroid/widget/ImageView;

.field private final mListener:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;

.field private mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

.field private mSummary:Landroid/widget/TextView;

.field private mSwitch:Landroid/widget/Switch;

.field private mTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;-><init>(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mListener:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;

    .line 31
    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->activity:Landroid/app/Activity;

    .line 32
    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 58
    const v0, 0x7f0400ff

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->setLayoutResource(I)V

    .line 61
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-direct {v0, p1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 62
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->activity:Landroid/app/Activity;

    .line 63
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 64
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)Lcom/android/lgesettings/quietmode/QuietModeInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->updateNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private updateNotification()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 171
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->registerAlarmEx()V

    .line 172
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->updateTimeSetingForSchedule()Z

    .line 173
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSilentState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v0

    if-ne v1, v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->endNotification()V

    .line 175
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->startNotification()V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSilentState()Z

    move-result v0

    if-nez v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v0

    if-ne v1, v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->doQuietModeService(Z)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->doQuietModeService(Z)V

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSilentState()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->endNotification()V

    goto :goto_0
.end method


# virtual methods
.method public getSummaryString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 82
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBDays()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getSilentSummaryText(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getQuietTimeOnSummary(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->activity:Landroid/app/Activity;

    const v1, 0x7f080e50

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->activity:Landroid/app/Activity;

    const v1, 0x7f080e3b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 107
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mView:Landroid/view/View;

    .line 108
    const v1, 0x7f0a0220

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mTitle:Landroid/widget/TextView;

    .line 109
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f080e21

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 112
    :cond_0
    const v1, 0x7f0a0222

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mSummary:Landroid/widget/TextView;

    .line 113
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f080e50

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 116
    :cond_1
    const v1, 0x7f0a0221

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mIcon:Landroid/widget/ImageView;

    .line 117
    const v1, 0x7f0a0224

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, checkableView:Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 119
    check-cast v1, Landroid/widget/Checkable;

    invoke-super {p0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 121
    instance-of v1, v0, Landroid/widget/Switch;

    if-eqz v1, :cond_2

    .line 122
    check-cast v0, Landroid/widget/Switch;

    .end local v0           #checkableView:Landroid/view/View;
    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mSwitch:Landroid/widget/Switch;

    .line 123
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$2;-><init>(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mListener:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public setCheckedUpdate()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mSummary:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->setChecked(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSwitchClickable(Z)V
    .locals 1
    .parameter "isClickable"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 101
    :cond_0
    return-void
.end method
