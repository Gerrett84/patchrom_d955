.class public Lcom/android/lgesettings/QuietTimeSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "QuietTimeSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private final mListener:Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;

.field private mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;-><init>(Lcom/android/lgesettings/QuietTimeSwitchPreference;Lcom/android/lgesettings/QuietTimeSwitchPreference$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->mListener:Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;

    .line 20
    iput-object v1, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    .line 21
    iput-object v1, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    .line 52
    const v0, 0x7f04010a

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->setWidgetLayoutResource(I)V

    .line 54
    new-instance v0, Lcom/android/lgesettings/QuietTimeInfo;

    invoke-direct {v0, p1}, Lcom/android/lgesettings/QuietTimeInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    .line 55
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    .line 56
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 57
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/QuietTimeSwitchPreference;)Lcom/android/lgesettings/QuietTimeInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    return-object v0
.end method

.method private getQuietTimeOnSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "selectDays"

    .prologue
    const v4, 0x7f080b54

    .line 115
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v1, 0x7f080b76

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSilentSummaryText(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "days"

    .prologue
    .line 135
    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v1, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 136
    .local v1, clsLocale:Ljava/util/Locale;
    const-string v8, "QuietTimeSwitchPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "language info : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v8, "iw"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v5, iwdays:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v8, "QuietTimeSwitchPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "days value : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v8, "QuietTimeSwitchPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "s value : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    const-string v7, "empty"

    .line 149
    .local v7, summary:Ljava/lang/String;
    const-string v8, "1111111"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 150
    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b75

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 260
    .end local v5           #iwdays:Ljava/lang/StringBuilder;
    .end local v7           #summary:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 151
    .restart local v5       #iwdays:Ljava/lang/StringBuilder;
    .restart local v7       #summary:Ljava/lang/String;
    :cond_0
    const-string v8, "1111110"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 153
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v10, 0x7f080b68

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v10, 0x7f080b66

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 154
    :cond_1
    const-string v8, "1111100"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 155
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v10, 0x7f080b68

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v10, 0x7f080b65

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 156
    :cond_2
    const-string v8, "0111111"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 157
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v10, 0x7f080b62

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v10, 0x7f080b67

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 158
    :cond_3
    const-string v8, "0011111"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 159
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v10, 0x7f080b63

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v10, 0x7f080b67

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 160
    :cond_4
    const-string v8, "0111110"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 161
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v10, 0x7f080b62

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v10, 0x7f080b66

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 162
    :cond_5
    const-string v8, "0000000"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 163
    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b76

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 166
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v6, s:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 168
    .local v2, count:I
    const/4 v3, 0x0

    .line 169
    .local v3, dummyDays:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    const/4 v8, 0x7

    if-ge v4, v8, :cond_f

    .line 170
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, c:Ljava/lang/String;
    const-string v8, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 172
    add-int/lit8 v2, v2, 0x1

    .line 173
    move v3, v4

    .line 175
    if-nez v4, :cond_9

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b68

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_7
    :goto_2
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 176
    :cond_9
    const/4 v8, 0x1

    if-ne v4, v8, :cond_a

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b62

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 177
    :cond_a
    const/4 v8, 0x2

    if-ne v4, v8, :cond_b

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b63

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 178
    :cond_b
    const/4 v8, 0x3

    if-ne v4, v8, :cond_c

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b64

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 179
    :cond_c
    const/4 v8, 0x4

    if-ne v4, v8, :cond_d

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b65

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 180
    :cond_d
    const/4 v8, 0x5

    if-ne v4, v8, :cond_e

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b66

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 181
    :cond_e
    const/4 v8, 0x6

    if-ne v4, v8, :cond_7

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b67

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 185
    .end local v0           #c:Ljava/lang/String;
    :cond_f
    const/4 v8, 0x1

    if-ne v2, v8, :cond_16

    .line 186
    if-nez v3, :cond_10

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b6f

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 187
    :cond_10
    const/4 v8, 0x1

    if-ne v3, v8, :cond_11

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b69

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 188
    :cond_11
    const/4 v8, 0x2

    if-ne v3, v8, :cond_12

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b6a

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 189
    :cond_12
    const/4 v8, 0x3

    if-ne v3, v8, :cond_13

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b6b

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 190
    :cond_13
    const/4 v8, 0x4

    if-ne v3, v8, :cond_14

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b6c

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 191
    :cond_14
    const/4 v8, 0x5

    if-ne v3, v8, :cond_15

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b6d

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 192
    :cond_15
    const/4 v8, 0x6

    if-ne v3, v8, :cond_29

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b6e

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 195
    :cond_16
    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 200
    .end local v2           #count:I
    .end local v3           #dummyDays:I
    .end local v4           #i:I
    .end local v5           #iwdays:Ljava/lang/StringBuilder;
    .end local v6           #s:Ljava/lang/StringBuilder;
    .end local v7           #summary:Ljava/lang/String;
    :cond_17
    const-string v8, "1111111"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 201
    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b75

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 202
    :cond_18
    const-string v8, "1111110"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 203
    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b71

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 204
    :cond_19
    const-string v8, "1111100"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 205
    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b70

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 206
    :cond_1a
    const-string v8, "0111111"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 207
    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b74

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 208
    :cond_1b
    const-string v8, "0011111"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 209
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v10, 0x7f080b64

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v10, 0x7f080b68

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 210
    .restart local v7       #summary:Ljava/lang/String;
    goto/16 :goto_0

    .line 211
    .end local v7           #summary:Ljava/lang/String;
    :cond_1c
    const-string v8, "0111110"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 212
    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b73

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 213
    :cond_1d
    const-string v8, "0000000"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 214
    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b76

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 217
    :cond_1e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .restart local v6       #s:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 219
    .restart local v2       #count:I
    const/4 v3, 0x0

    .line 220
    .restart local v3       #dummyDays:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    const/4 v8, 0x7

    if-ge v4, v8, :cond_27

    .line 221
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 222
    .restart local v0       #c:Ljava/lang/String;
    const-string v8, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 223
    add-int/lit8 v2, v2, 0x1

    .line 224
    move v3, v4

    .line 226
    if-nez v4, :cond_21

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b62

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_1f
    :goto_4
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 227
    :cond_21
    const/4 v8, 0x1

    if-ne v4, v8, :cond_22

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b63

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 228
    :cond_22
    const/4 v8, 0x2

    if-ne v4, v8, :cond_23

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b64

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 229
    :cond_23
    const/4 v8, 0x3

    if-ne v4, v8, :cond_24

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b65

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 230
    :cond_24
    const/4 v8, 0x4

    if-ne v4, v8, :cond_25

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b66

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 231
    :cond_25
    const/4 v8, 0x5

    if-ne v4, v8, :cond_26

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b67

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 232
    :cond_26
    const/4 v8, 0x6

    if-ne v4, v8, :cond_1f

    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b68

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 236
    .end local v0           #c:Ljava/lang/String;
    :cond_27
    const/4 v8, 0x1

    if-ne v2, v8, :cond_28

    .line 237
    packed-switch v3, :pswitch_data_0

    .line 253
    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 239
    :pswitch_0
    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b69

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 241
    :pswitch_1
    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b6a

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 243
    :pswitch_2
    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b6b

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 245
    :pswitch_3
    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b6c

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 247
    :pswitch_4
    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b6d

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 249
    :pswitch_5
    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b6e

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 251
    :pswitch_6
    iget-object v8, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v9, 0x7f080b6f

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 256
    :cond_28
    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .restart local v5       #iwdays:Ljava/lang/StringBuilder;
    .restart local v7       #summary:Ljava/lang/String;
    :cond_29
    move-object v7, p1

    .line 260
    goto/16 :goto_0

    .line 237
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


# virtual methods
.method public SetQuietTimeSummary()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method public getSummaryString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    const-string v0, "QuietTimeSwitchPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSummaryString] : ischecked() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietTimeInfo;->isQuietTimeState()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 73
    const-string v0, "QuietTimeSwitchPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSummaryString] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->getDBDays()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->getSilentSummaryText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->getQuietTimeOnSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBDays()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->getSilentSummaryText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->getQuietTimeOnSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->activity:Landroid/app/Activity;

    const v1, 0x7f080b7a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 85
    const v2, 0x7f0a020b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, checkableView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 87
    check-cast v2, Landroid/widget/Checkable;

    invoke-super {p0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 89
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 90
    check-cast v1, Landroid/widget/Switch;

    .line 91
    .local v1, switchView:Landroid/widget/Switch;
    new-instance v2, Lcom/android/lgesettings/QuietTimeSwitchPreference$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/QuietTimeSwitchPreference$1;-><init>(Lcom/android/lgesettings/QuietTimeSwitchPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v2, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->mListener:Lcom/android/lgesettings/QuietTimeSwitchPreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    .end local v1           #switchView:Landroid/widget/Switch;
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->SetQuietTimeSummary()V

    .line 102
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public setCheckedUpdate()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isQuietTimeState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->setChecked(Z)V

    .line 67
    return-void
.end method
