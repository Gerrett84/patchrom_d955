.class public Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;
.super Ljava/lang/Object;
.source "LGSmsLog.java"


# static fields
.field public static final DEBUG:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final DISABLELOG:I = 0x0

.field public static final ERROR:I = 0x10

.field public static final FLOW:I = 0x20

.field public static final INFO:I = 0x4

.field public static final PRIVACY:I = 0x40

.field private static final PROPERTY_DISABLELOG:Ljava/lang/String; = "ro.gsm.sms.disablelog"

.field private static final TAG_DEBUG:Ljava/lang/String; = "[SMS_LD]"

.field private static final TAG_ERROR:Ljava/lang/String; = "[SMS_LE]"

.field private static final TAG_FLOW:Ljava/lang/String; = "[SMS_LF]"

.field private static final TAG_INFO:Ljava/lang/String; = "[SMS_LI]"

.field private static final TAG_PRIVACY:Ljava/lang/String; = "[SMS_LP]"

.field private static final TAG_VERBOSE:Ljava/lang/String; = "[SMS_LV]"

.field private static final TAG_WARN:Ljava/lang/String; = "[SMS_LW]"

.field public static final VERBOSE:I = 0x1

.field public static final WARN:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    const-string/jumbo v0, "ro.gsm.sms.disablelog"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->DISABLELOG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 122
    if-nez p0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string v0, "[SMS_LD]"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .parameter "msg"
    .parameter "tr"

    .prologue
    const/4 v0, 0x0

    .line 133
    if-nez p0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const-string v0, "[SMS_LD]"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 188
    if-nez p0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string v0, "[SMS_LW]"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .parameter "msg"
    .parameter "tr"

    .prologue
    const/4 v0, 0x0

    .line 199
    if-nez p0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string v0, "[SMS_LE]"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 211
    if-nez p0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const-string v0, "[SMS_LF]"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 144
    if-nez p0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const-string v0, "[SMS_LI]"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .parameter "msg"
    .parameter "tr"

    .prologue
    const/4 v0, 0x0

    .line 155
    if-nez p0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 159
    :cond_1
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const-string v0, "[SMS_LI]"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static isLoggable(I)Z
    .locals 1
    .parameter "priority"

    .prologue
    .line 92
    sget v0, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->DISABLELOG:I

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static p(Ljava/lang/String;)I
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 222
    if-nez p0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    const/16 v1, 0x40

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const-string v0, "[SMS_LP]"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;)I
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 100
    if-nez p0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const-string v0, "[SMS_LV]"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .parameter "msg"
    .parameter "tr"

    .prologue
    const/4 v0, 0x0

    .line 111
    if-nez p0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const-string v0, "[SMS_LV]"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 166
    if-nez p0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const-string v0, "[SMS_LW]"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .parameter "msg"
    .parameter "tr"

    .prologue
    const/4 v0, 0x0

    .line 177
    if-nez p0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string v0, "[SMS_LW]"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method
