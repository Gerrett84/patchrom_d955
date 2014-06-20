.class public Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
.super Ljava/lang/Object;
.source "VibratePatternInfo.java"


# static fields
.field public static final VIBRATE_NAME:[Ljava/lang/String;

.field public static final VIBRATE_NAME_SPR:[Ljava/lang/String;

.field public static final VIBRATE_PATTERN:[Ljava/lang/String;

.field public static final VIBRATE_TYPE:[Ljava/lang/String;

.field private static isItemSelected:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field public mHaptic_value:I

.field private mParentType:I

.field private mPrefsLGPatternMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private mPrefsUserPatternMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field public mUserPatternManager:Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;

.field private mVibrateLGPatternPref:Landroid/content/SharedPreferences;

.field private mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mVibrateUserPatternPref:Landroid/content/SharedPreferences;

.field private task:Ljava/util/TimerTask;

.field private timer:Ljava/util/Timer;

.field vibrate_name:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field vibrate_pattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field vibrate_type_entry:[Ljava/lang/String;

.field vibrate_type_value:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "distinctive_vibration_incoming_calls"

    aput-object v1, v0, v3

    const-string v1, "distinctive_vibration_sub_incoming_calls"

    aput-object v1, v0, v4

    const-string v1, "distinctive_vibration_messaging"

    aput-object v1, v0, v5

    const-string v1, "distinctive_vibration_email"

    aput-object v1, v0, v6

    const-string v1, "distinctive_vibration_alarm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "distinctive_vibration_calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "distinctive_vibration_third_incoming_calls"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_NAME_SPR:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "default_vibrate_name"

    aput-object v1, v0, v3

    const-string v1, "default_sub_vibrate_name"

    aput-object v1, v0, v4

    const-string v1, "default_message_vibrate_name"

    aput-object v1, v0, v5

    const-string v1, "default_email_vibrate_name"

    aput-object v1, v0, v6

    const-string v1, "default_alarm_vibrate_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "default_calendar_vibrate_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "default_third_vibrate_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_NAME:[Ljava/lang/String;

    .line 67
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "default_vibrate_pattern"

    aput-object v1, v0, v3

    const-string v1, "default_sub_vibrate_pattern"

    aput-object v1, v0, v4

    const-string v1, "default_message_vibrate_pattern"

    aput-object v1, v0, v5

    const-string v1, "default_email_vibrate_pattern"

    aput-object v1, v0, v6

    const-string v1, "default_alarm_vibrate_pattern"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "default_calendar_vibrate_pattern"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "default_third_vibrate_pattern"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_PATTERN:[Ljava/lang/String;

    .line 79
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 0"

    aput-object v1, v0, v3

    const-string v1, "0, 400, 600, 400, 600, 400, 600, 0"

    aput-object v1, v0, v4

    const-string v1, "0, 960, 320, 960, 320, 960, 320, 0"

    aput-object v1, v0, v5

    const-string v1, "0, 2000, 200, 0"

    aput-object v1, v0, v6

    const-string v1, "0, 150, 850, 150, 850, 150, 850, 150, 850, 0"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_TYPE:[Ljava/lang/String;

    .line 89
    sput-boolean v3, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->isItemSelected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "parent_type"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mHaptic_value:I

    .line 91
    iput v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mParentType:I

    .line 94
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    .line 95
    iput p2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mParentType:I

    .line 98
    const-string v0, "lg_vibrate_pattern"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateLGPatternPref:Landroid/content/SharedPreferences;

    .line 99
    const-string v0, "user_vibrate_pattern"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateUserPatternPref:Landroid/content/SharedPreferences;

    .line 100
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mUserPatternManager:Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;

    .line 102
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_entry:[Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_value:[Ljava/lang/String;

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->defaultVibrateSet()V

    .line 108
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->UpdateUserPatternInfo()V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mHaptic_value:I

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private defaultVibrateSet()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateLGPatternPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 135
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_entry:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_value:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getVibratePatterns(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_entry:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_value:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getVibratePatterns(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_entry:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_value:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getVibratePatterns(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_entry:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_value:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getVibratePatterns(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_entry:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_value:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getVibratePatterns(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_entry:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_value:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getVibratePatterns(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_entry:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_value:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getVibratePatterns(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    const-string v0, "VibratePatternInfo"

    const-string v1, "Shardpreference empty case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080dd4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_TYPE:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->removeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080dd5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_TYPE:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->removeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080dd6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_TYPE:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->removeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080dd7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_TYPE:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->removeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080dd8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_TYPE:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->removeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 145
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private getDefaultVibrateType(I)I
    .locals 6
    .parameter "parent_type"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 719
    if-nez p1, :cond_1

    .line 740
    :cond_0
    :goto_0
    return v0

    .line 722
    :cond_1
    if-eq p1, v4, :cond_0

    .line 725
    const/4 v5, 0x6

    if-eq p1, v5, :cond_0

    .line 728
    if-ne p1, v1, :cond_2

    move v0, v1

    .line 729
    goto :goto_0

    .line 731
    :cond_2
    if-ne p1, v3, :cond_3

    move v0, v2

    .line 732
    goto :goto_0

    .line 734
    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    move v0, v3

    .line 735
    goto :goto_0

    .line 737
    :cond_4
    if-ne p1, v2, :cond_0

    move v0, v4

    .line 738
    goto :goto_0
.end method

.method public static getItemSelected()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->isItemSelected:Z

    return v0
.end method

.method private getLGPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "vibrateName"

    .prologue
    .line 278
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateLGPatternPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getShardPreference(Landroid/content/SharedPreferences;)V

    .line 279
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateLGPatternPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsLGPatternMap:Ljava/util/Map;

    .line 280
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsLGPatternMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 284
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    const-string v3, "VibratePatternInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getLGpattern] matching vibrate - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :goto_0
    return-object v2

    :cond_1
    const-string v2, "empty"

    goto :goto_0
.end method

.method private getLongIntArray(I)[J
    .locals 7
    .parameter "resid"

    .prologue
    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, ar:[I
    const/4 v3, 0x0

    .line 635
    .local v3, out:[J
    :try_start_0
    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 636
    if-nez v0, :cond_0

    .line 637
    const/4 v4, 0x0

    .line 648
    :goto_0
    return-object v4

    .line 639
    :cond_0
    array-length v4, v0

    new-array v3, v4, [J

    .line 640
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 641
    aget v4, v0, v2

    int-to-long v4, v4

    aput-wide v4, v3, v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 644
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 645
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "VibratePatternInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getLongIntArray] NullPointerEception :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 646
    goto :goto_0

    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v2       #i:I
    :cond_1
    move-object v4, v3

    .line 648
    goto :goto_0
.end method

.method private getPositionbyName(ILjava/lang/String;)I
    .locals 2
    .parameter "parent_type"
    .parameter "name"

    .prologue
    .line 421
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_entry:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_entry:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    .end local v0           #i:I
    :goto_1
    return v0

    .line 421
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDefaultVibrateType(I)I

    move-result v0

    goto :goto_1
.end method

.method private getShardPreference(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "mShardPreferences"

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateLGPatternPref:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    const-string v1, "lg_vibrate_pattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateLGPatternPref:Landroid/content/SharedPreferences;

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateUserPatternPref:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    const-string v1, "user_vibrate_pattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateUserPatternPref:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method private getUserPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "vibrateName"

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateUserPatternPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getShardPreference(Landroid/content/SharedPreferences;)V

    .line 300
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateUserPatternPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsUserPatternMap:Ljava/util/Map;

    .line 301
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsUserPatternMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 305
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    const-string v3, "VibratePatternInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getUserPattern] matching vibrate - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :goto_0
    return-object v2

    :cond_1
    const-string v2, "empty"

    goto :goto_0
.end method

.method private getVibratePatterns(I)Ljava/lang/String;
    .locals 8
    .parameter "vibrateType"

    .prologue
    .line 652
    const/4 v3, 0x0

    .line 654
    .local v3, resid:I
    packed-switch p1, :pswitch_data_0

    .line 677
    const v3, 0x7f0900dc

    .line 682
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getLongIntArray(I)[J

    move-result-object v2

    .line 683
    .local v2, patterns:[J
    const-string v4, ""

    .line 684
    .local v4, retStr:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 685
    array-length v1, v2

    .line 686
    .local v1, length:I
    if-eqz v1, :cond_0

    .line 687
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 688
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 689
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 656
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #patterns:[J
    .end local v4           #retStr:Ljava/lang/String;
    :pswitch_0
    const v3, 0x7f0900dc

    .line 657
    goto :goto_0

    .line 659
    :pswitch_1
    const v3, 0x7f0900dd

    .line 660
    goto :goto_0

    .line 662
    :pswitch_2
    const v3, 0x7f0900de

    .line 663
    goto :goto_0

    .line 665
    :pswitch_3
    const v3, 0x7f0900df

    .line 666
    goto :goto_0

    .line 668
    :pswitch_4
    const v3, 0x7f0900e0

    .line 669
    goto :goto_0

    .line 671
    :pswitch_5
    const v3, 0x7f0900e1

    .line 672
    goto :goto_0

    .line 674
    :pswitch_6
    const v3, 0x7f0900e2

    .line 675
    goto :goto_0

    .line 694
    .restart local v2       #patterns:[J
    .restart local v4       #retStr:Ljava/lang/String;
    :cond_0
    return-object v4

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getVibrateType(I)I
    .locals 5
    .parameter "parent_type"

    .prologue
    const/4 v4, 0x1

    .line 705
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_NAME_SPR:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 706
    .local v1, type:I
    const/4 v0, 0x1

    .line 707
    .local v0, temp_type:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 715
    .end local v1           #type:I
    :goto_0
    return v1

    .line 710
    .restart local v1       #type:I
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->typeIntegrityCheck(I)Z

    move-result v2

    if-ne v4, v2, :cond_1

    .line 711
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 714
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDefaultVibrateType(I)I

    move-result v0

    move v1, v0

    .line 715
    goto :goto_0
.end method

.method private removeToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pattern"

    .prologue
    .line 403
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 404
    return-object p1
.end method

.method public static setItemSelected(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 121
    sput-boolean p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->isItemSelected:Z

    .line 122
    return-void
.end method

.method private setVibrateType(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "parent_type"
    .parameter "type"
    .parameter "name"
    .parameter "pattern"

    .prologue
    const/4 v1, 0x1

    .line 431
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mUserPatternManager:Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;

    invoke-static {p3, p1, v1}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->updateVibrateUserPatternDefault(Ljava/lang/String;II)Z

    .line 434
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_NAME_SPR:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->typeIntegrityCheck(I)Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_NAME_SPR:[Ljava/lang/String;

    aget-object v1, v1, p1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 438
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_entry:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setDBVibrateName(ILjava/lang/String;)V

    .line 439
    invoke-direct {p0, p2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getVibratePatterns(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setDBVibratePattern(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private typeIntegrityCheck(I)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 698
    if-lt p1, v0, :cond_0

    const/16 v1, 0x8

    if-ge p1, v1, :cond_0

    .line 701
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public UpdateUserPatternInfo()V
    .locals 5

    .prologue
    .line 159
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateUserPatternPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 160
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mUserPatternManager:Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;

    invoke-virtual {v2}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->getUserPatternCount()I

    move-result v1

    .line 163
    .local v1, nCount:I
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mUserPatternManager:Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;

    invoke-virtual {v2}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->getAllUserPatternName()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_name:Ljava/util/ArrayList;

    .line 164
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mUserPatternManager:Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;

    invoke-virtual {v2}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->getAllUserPattern()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_pattern:Ljava/util/ArrayList;

    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 166
    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_name:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_pattern:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    const-string v3, "VibratePatternInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultUserVibrateSet : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_name:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_pattern:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0           #i:I
    .end local v1           #nCount:I
    :catch_0
    move-exception v2

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    const-string v2, "VibratePatternInfo"

    const-string v3, "Shardpreference empty case"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public checkedLGVibrateName(ILjava/lang/String;)V
    .locals 5
    .parameter "simType"
    .parameter "pattern"

    .prologue
    .line 177
    invoke-virtual {p0, p2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->isLGPattern(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->defaultVibrateSet()V

    .line 179
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateLGPatternPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getShardPreference(Landroid/content/SharedPreferences;)V

    .line 180
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateLGPatternPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsLGPatternMap:Ljava/util/Map;

    .line 181
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsLGPatternMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    const-string v3, "VibratePatternInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkedLGVibrateName] matching vibrate - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setDBVibrateName(ILjava/lang/String;)V

    goto :goto_0

    .line 193
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public getAllPatternName_LG()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v2, patternNameList_LG:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateLGPatternPref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsLGPatternMap:Ljava/util/Map;

    .line 366
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsLGPatternMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 368
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 371
    return-object v2
.end method

.method public getAllPatternName_User()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mUserPatternManager:Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;

    invoke-virtual {v3}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->getAllUserPatternName()Ljava/util/ArrayList;

    move-result-object v2

    .line 385
    :goto_0
    return-object v2

    .line 378
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v2, patternNameList_User:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateUserPatternPref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsUserPatternMap:Ljava/util/Map;

    .line 380
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsUserPatternMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 382
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 384
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getAllpatternName()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v0, patternList_All:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getAllPatternName_LG()Ljava/util/ArrayList;

    move-result-object v1

    .line 347
    .local v1, patternList_LG:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getAllPatternName_User()Ljava/util/ArrayList;

    move-result-object v2

    .line 349
    .local v2, patternList_User:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->isUserPatternEmply()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 360
    :goto_0
    return-object v0

    .line 353
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080dd9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 355
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080dda

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getDBMyVibrationCount()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 520
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_vibration_conut"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 523
    :goto_0
    return v1

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setDBMyVibrationCount(I)V

    goto :goto_0
.end method

.method public getDBMyVibrationCountString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 528
    const-string v0, "%05d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBMyVibrationCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDBVibrateName(I)Ljava/lang/String;
    .locals 6
    .parameter "parent_type"

    .prologue
    const v5, 0x7f080dd6

    .line 455
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    invoke-direct {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getVibrateType(I)I

    move-result v1

    .line 457
    .local v1, type:I
    const/4 v0, 0x0

    .line 458
    .local v0, name:Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_entry:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 464
    :goto_0
    if-nez v0, :cond_1

    .line 466
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_entry:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDefaultVibrateType(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setDBVibrateName(ILjava/lang/String;)V

    .line 467
    const-string v2, "VibratePatternInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDBVibrateName() name : null -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_entry:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDefaultVibrateType(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_entry:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDefaultVibrateType(I)I

    move-result v3

    aget-object v0, v2, v3

    .line 482
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #type:I
    :goto_1
    return-object v0

    .line 461
    .restart local v0       #name:Ljava/lang/String;
    .restart local v1       #type:I
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mUserPatternManager:Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;

    invoke-static {p1}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->queryUserPatternDefaultName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 470
    :cond_1
    const-string v2, "VibratePatternInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDBVibrateName() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 474
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #type:I
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_NAME:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .restart local v0       #name:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 477
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setDBVibrateName(ILjava/lang/String;)V

    .line 478
    const-string v2, "VibratePatternInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDBVibrateName() name : null -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 481
    :cond_3
    const-string v2, "VibratePatternInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDBVibrateName() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public getDBVibratePattern(I)Ljava/lang/String;
    .locals 5
    .parameter "parent_type"

    .prologue
    const/4 v4, 0x2

    .line 487
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 488
    invoke-direct {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getVibrateType(I)I

    move-result v1

    .line 489
    .local v1, type:I
    const/4 v0, 0x0

    .line 490
    .local v0, pattern:Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 491
    invoke-direct {p0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getVibratePatterns(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->removeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 510
    .end local v1           #type:I
    :goto_1
    return-object v2

    .line 494
    .restart local v1       #type:I
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mUserPatternManager:Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;

    invoke-static {p1}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->queryUserPatternDefaultPattern(I)Ljava/lang/String;

    move-result-object v0

    .line 495
    if-nez v0, :cond_0

    .line 496
    invoke-direct {p0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getVibratePatterns(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 503
    .end local v0           #pattern:Ljava/lang/String;
    .end local v1           #type:I
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_PATTERN:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    .restart local v0       #pattern:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 505
    const-string v2, "VibratePatternInfo"

    const-string v3, "getDBVibratePattern() name null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    sget-object v2, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_TYPE:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p0, p1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setDBVibratePattern(ILjava/lang/String;)V

    .line 507
    sget-object v2, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_TYPE:[Ljava/lang/String;

    aget-object v2, v2, v4

    goto :goto_1

    .line 509
    :cond_3
    const-string v2, "VibratePatternInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDBVibratePattern() : type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-direct {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->removeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getHaptic_value()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mHaptic_value:I

    return v0
.end method

.method public getPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "vibrateName"

    .prologue
    .line 220
    const-string v0, "empty"

    .line 221
    .local v0, pattern:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getLGPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    const-string v1, "empty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 231
    :goto_0
    return-object v1

    .line 226
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getUserPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    const-string v1, "empty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    .line 228
    goto :goto_0

    .line 231
    :cond_1
    const-string v1, "empty"

    goto :goto_0
.end method

.method public getTypeDefaultName(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeDefaultPattern(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 571
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibratePattern(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPatternCount()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateUserPatternPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getShardPreference(Landroid/content/SharedPreferences;)V

    .line 294
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateUserPatternPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsUserPatternMap:Ljava/util/Map;

    .line 295
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsUserPatternMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public hapticFeedbackOff([J)V
    .locals 4
    .parameter "pattern"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->task:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 612
    :cond_1
    new-instance v0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo$1;-><init>(Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;)V

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->task:Ljava/util/TimerTask;

    .line 618
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->timer:Ljava/util/Timer;

    .line 620
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 621
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->task:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 622
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->task:Ljava/util/TimerTask;

    invoke-virtual {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->sumVibrateTime([J)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 624
    :cond_2
    return-void
.end method

.method public isAllSpace(Ljava/lang/String;)Z
    .locals 5
    .parameter "name"

    .prologue
    .line 532
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 533
    .local v2, length:I
    const/4 v1, 0x1

    .line 534
    .local v1, isAllSpace:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 535
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 536
    const/4 v1, 0x1

    .line 534
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 539
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 542
    :cond_1
    return v1
.end method

.method public isDuplicateName(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->isLGName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->isUserName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLGName(Ljava/lang/String;)Z
    .locals 5
    .parameter "vibrateName"

    .prologue
    .line 239
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateLGPatternPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getShardPreference(Landroid/content/SharedPreferences;)V

    .line 240
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateLGPatternPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsLGPatternMap:Ljava/util/Map;

    .line 241
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsLGPatternMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 244
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    const-string v3, "VibratePatternInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isLGName] matching vibrate - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v2, 0x1

    .line 249
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLGPattern(Ljava/lang/String;)Z
    .locals 5
    .parameter "pattern"

    .prologue
    .line 314
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateLGPatternPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getShardPreference(Landroid/content/SharedPreferences;)V

    .line 315
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateLGPatternPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsLGPatternMap:Ljava/util/Map;

    .line 316
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsLGPatternMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 320
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    const-string v2, "VibratePatternInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isLGPattern] matching vibrate - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v2, 0x1

    .line 325
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isUserName(Ljava/lang/String;)Z
    .locals 5
    .parameter "vibrateName"

    .prologue
    .line 264
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateUserPatternPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getShardPreference(Landroid/content/SharedPreferences;)V

    .line 265
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateUserPatternPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsUserPatternMap:Ljava/util/Map;

    .line 266
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mPrefsUserPatternMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 269
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    const-string v3, "VibratePatternInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isUserName] matching vibrate - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v2, 0x1

    .line 274
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isUserPatternEmply()Z
    .locals 3

    .prologue
    .line 253
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateUserPatternPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getShardPreference(Landroid/content/SharedPreferences;)V

    .line 254
    const/4 v1, 0x1

    .line 256
    .local v1, isEmpty:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateUserPatternPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 260
    :goto_0
    return v2

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public iskeyBlank(Ljava/lang/String;)Z
    .locals 1
    .parameter "saveName"

    .prologue
    .line 546
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public patternTokenizer(Ljava/lang/String;)[J
    .locals 6
    .parameter "pattern"

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->removeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 391
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .local v1, stk:Ljava/util/StringTokenizer;
    const-string v3, "VibratePatternInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[token] token count :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [J

    .line 394
    .local v2, vibratePattern:[J
    const/4 v0, 0x0

    .line 395
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_0
    return-object v2
.end method

.method public removeVibrateNameOthers(Ljava/lang/String;)V
    .locals 3
    .parameter "vibrateName"

    .prologue
    .line 582
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_NAME:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 583
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_entry:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDefaultVibrateType(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setDBVibrateName(ILjava/lang/String;)V

    .line 586
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->vibrate_type_value:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDefaultVibrateType(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setDBVibratePattern(ILjava/lang/String;)V

    .line 582
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080dd6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setDBVibrateName(ILjava/lang/String;)V

    .line 589
    sget-object v1, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_TYPE:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setDBVibratePattern(ILjava/lang/String;)V

    goto :goto_1

    .line 593
    :cond_2
    return-void
.end method

.method public removeVibratePattern(Ljava/lang/String;)V
    .locals 1
    .parameter "vibrateName"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateUserPatternPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getShardPreference(Landroid/content/SharedPreferences;)V

    .line 207
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateUserPatternPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 208
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    return-void
.end method

.method public renameVibrateNameOthers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "oldName"
    .parameter "newName"

    .prologue
    .line 574
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_NAME:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 575
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {p0, v0, p2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setDBVibrateName(ILjava/lang/String;)V

    .line 574
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 579
    :cond_1
    return-void
.end method

.method public saveSelectVibrate(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "parent_type"
    .parameter "name"
    .parameter "pattern"

    .prologue
    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setDBVibrateName(ILjava/lang/String;)V

    .line 409
    invoke-virtual {p0, p1, p3}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setDBVibratePattern(ILjava/lang/String;)V

    .line 410
    return-void
.end method

.method public saveSelectVibrate(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "parent_type"
    .parameter "name"
    .parameter "pattern"
    .parameter "position"

    .prologue
    .line 412
    invoke-virtual {p0, p2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->isUserName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setVibrateType(IILjava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getPositionbyName(ILjava/lang/String;)I

    move-result v0

    .line 416
    .local v0, pos:I
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setVibrateType(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveVibratePattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "vibrateName"
    .parameter "pattern"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibrateUserPatternPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 197
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mVibratePrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mUserPatternManager:Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;

    invoke-static {p1, p2}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->insertVibrateUserPattern(Ljava/lang/String;Ljava/lang/String;)Z

    .line 201
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->UpdateUserPatternInfo()V

    .line 203
    :cond_0
    return-void
.end method

.method public setDBMyVibrationCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_vibration_conut"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 516
    return-void
.end method

.method public setDBVibrateName(ILjava/lang/String;)V
    .locals 2
    .parameter "parent_type"
    .parameter "name"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 448
    return-void
.end method

.method public setDBVibratePattern(ILjava/lang/String;)V
    .locals 2
    .parameter "parent_type"
    .parameter "pattern"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->VIBRATE_PATTERN:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 452
    return-void
.end method

.method public sumVibrateTime([J)I
    .locals 7
    .parameter "pattern"

    .prologue
    .line 596
    const-wide/16 v3, 0x0

    .line 597
    .local v3, result:J
    array-length v5, p1

    int-to-long v1, v5

    .line 598
    .local v1, length:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    int-to-long v5, v0

    cmp-long v5, v5, v1

    if-gez v5, :cond_0

    .line 599
    aget-wide v5, p1, v0

    add-long/2addr v3, v5

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    :cond_0
    long-to-int v5, v3

    return v5
.end method
