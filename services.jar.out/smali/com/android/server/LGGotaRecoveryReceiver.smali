.class public Lcom/android/server/LGGotaRecoveryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LGGotaRecoveryReceiver.java"


# static fields
.field private static ACTION_START_GOTA:Ljava/lang/String; = null

.field private static final MISC_PATH:Ljava/lang/String; = "/dev/block/platform/msm_sdcc.1/by-name/misc"

.field private static final TAG:Ljava/lang/String; = "LGGotaRecoveryReceiver"

.field private static value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "com.lge.intent.action.GOTA_START"

    sput-object v0, Lcom/android/server/LGGotaRecoveryReceiver;->ACTION_START_GOTA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, action:Ljava/lang/String;
    const-string v8, "PACKAGE_FILENAME"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/server/LGGotaRecoveryReceiver;->value:Ljava/lang/String;

    .line 46
    sget-object v8, Lcom/android/server/LGGotaRecoveryReceiver;->value:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 78
    :goto_0
    return-void

    .line 51
    :cond_0
    :try_start_0
    sget-object v8, Lcom/android/server/LGGotaRecoveryReceiver;->ACTION_START_GOTA:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 52
    const-string v1, "boot-recovery"

    .line 53
    .local v1, command:Ljava/lang/String;
    const-string v6, "recovery"

    .line 54
    .local v6, recovery1:Ljava/lang/String;
    const-string v7, "--update_package="

    .line 55
    .local v7, recovery2:Ljava/lang/String;
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v8, "/dev/block/platform/msm_sdcc.1/by-name/misc"

    const-string v9, "rw"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    .local v5, misc:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 58
    const-wide/16 v8, 0x40

    invoke-virtual {v5, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 59
    invoke-virtual {v5, v6}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 60
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v5, v7}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 62
    sget-object v8, Lcom/android/server/LGGotaRecoveryReceiver;->value:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 63
    const-string v8, "\u0000"

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 64
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 70
    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 77
    .end local v1           #command:Ljava/lang/String;
    .end local v5           #misc:Ljava/io/RandomAccessFile;
    .end local v6           #recovery1:Ljava/lang/String;
    .end local v7           #recovery2:Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v8, "LGGotaRecoveryReceiver"

    const-string v9, "LGGotaRecoveryReceiver ACTION_GOTA_START"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    .restart local v1       #command:Ljava/lang/String;
    .restart local v5       #misc:Ljava/io/RandomAccessFile;
    .restart local v6       #recovery1:Ljava/lang/String;
    .restart local v7       #recovery2:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 66
    .local v3, fne:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v8, "LGGotaRecoveryReceiver"

    const-string v9, "LGGotaRecoveryReceiver-"

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :try_start_4
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 73
    .end local v1           #command:Ljava/lang/String;
    .end local v3           #fne:Ljava/io/FileNotFoundException;
    .end local v5           #misc:Ljava/io/RandomAccessFile;
    .end local v6           #recovery1:Ljava/lang/String;
    .end local v7           #recovery2:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 74
    .local v4, ie:Ljava/io/IOException;
    const-string v8, "LGGotaRecoveryReceiver"

    const-string v9, "LGGotaRecoveryReceiver-"

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 67
    .end local v4           #ie:Ljava/io/IOException;
    .restart local v1       #command:Ljava/lang/String;
    .restart local v5       #misc:Ljava/io/RandomAccessFile;
    .restart local v6       #recovery1:Ljava/lang/String;
    .restart local v7       #recovery2:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 68
    .local v2, e:Ljava/lang/Exception;
    :try_start_5
    const-string v8, "LGGotaRecoveryReceiver"

    const-string v9, "LGGotaRecoveryReceiver-"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 70
    :try_start_6
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    throw v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
.end method
