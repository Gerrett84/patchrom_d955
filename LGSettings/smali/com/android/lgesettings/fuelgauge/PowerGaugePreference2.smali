.class public Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;
.super Landroid/preference/ListPreference;
.source "PowerGaugePreference2.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$OnTreeClickListener;
    }
.end annotation


# instance fields
.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mForceStopButton:Landroid/widget/Button;

.field private mInfo:Lcom/android/lgesettings/fuelgauge/BatterySipper;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mPackages:[Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProgress:I

.field private mProgressText:Ljava/lang/CharSequence;

.field private mTreeClickListener:Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$OnTreeClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/lgesettings/fuelgauge/BatterySipper;)V
    .locals 1
    .parameter "context"
    .parameter "icon"
    .parameter "info"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 164
    new-instance v0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$3;-><init>(Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;)V

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    const v0, 0x7f0400dc

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->setLayoutResource(I)V

    .line 72
    invoke-virtual {p0, p2}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iput-object p3, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mInfo:Lcom/android/lgesettings/fuelgauge/BatterySipper;

    .line 74
    iput-object p1, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->killProcesses()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;)Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$OnTreeClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mTreeClickListener:Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$OnTreeClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private checkForceStop()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mInfo:Lcom/android/lgesettings/fuelgauge/BatterySipper;

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mInfo:Lcom/android/lgesettings/fuelgauge/BatterySipper;

    iget-object v0, v0, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 199
    :goto_0
    return-void

    .line 176
    :cond_1
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 176
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 182
    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_4

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 185
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x20

    and-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 186
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mPackages:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mInfo:Lcom/android/lgesettings/fuelgauge/BatterySipper;

    iget-object v3, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    const-string v0, "android.intent.extra.user_handle"

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mInfo:Lcom/android/lgesettings/fuelgauge/BatterySipper;

    iget-object v3, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 189
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 182
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private killProcesses()V
    .locals 5

    .prologue
    .line 146
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mPackages:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 162
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 151
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mPackages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 152
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mPackages:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mPackages:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "com.lge.music"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    const-string v2, "PowerGaugePreference2"

    const-string v3, "stop SystemUI Music controller"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lge.music.saveNoDisplay"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    :cond_2
    invoke-direct {p0}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->checkForceStop()V

    goto :goto_0
.end method


# virtual methods
.method getInfo()Lcom/android/lgesettings/fuelgauge/BatterySipper;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mInfo:Lcom/android/lgesettings/fuelgauge/BatterySipper;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 103
    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 104
    .local v0, progress:Landroid/widget/ProgressBar;
    iget v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mProgress:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 106
    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 107
    .local v1, text1:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mProgressText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mPm:Landroid/content/pm/PackageManager;

    .line 111
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 113
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mInfo:Lcom/android/lgesettings/fuelgauge/BatterySipper;

    iget-object v2, v2, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mInfo:Lcom/android/lgesettings/fuelgauge/BatterySipper;

    iget-object v3, v3, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mPackages:[Ljava/lang/String;

    .line 118
    :cond_0
    const v2, 0x7f0a01d4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mForceStopButton:Landroid/widget/Button;

    .line 119
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mInfo:Lcom/android/lgesettings/fuelgauge/BatterySipper;

    iget-object v2, v2, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mInfo:Lcom/android/lgesettings/fuelgauge/BatterySipper;

    iget-object v2, v2, Lcom/android/lgesettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_1

    .line 121
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mForceStopButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$1;-><init>(Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :goto_0
    const v2, 0x7f0a01d3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mLayout:Landroid/widget/LinearLayout;

    .line 134
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$2;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$2;-><init>(Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-direct {p0}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->checkForceStop()V

    .line 143
    return-void

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 203
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mTreeClickListener:Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$OnTreeClickListener;

    invoke-interface {v0, p0}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$OnTreeClickListener;->onTreeClick(Landroid/preference/Preference;)V

    .line 206
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOnTreeClickListener(Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$OnTreeClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mTreeClickListener:Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$OnTreeClickListener;

    .line 80
    return-void
.end method

.method public setPercent(DD)V
    .locals 6
    .parameter "percentOfMax"
    .parameter "percentOfTotal"

    .prologue
    .line 84
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mProgress:I

    .line 85
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08084a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mProgressText:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->notifyChanged()V

    .line 88
    return-void
.end method
