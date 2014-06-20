.class public Lcom/lge/autorun/AutorunManager;
.super Ljava/lang/Object;
.source "AutorunManager.java"


# static fields
.field public static final AUTORUN_CMD_STOP:I = 0x64

.field public static final AUTORUN_CMD_TIMER_STOP:I = 0x2

.field public static final AUTORUN_CMD_VZW_START:I = 0x1

.field private static final AUTORUN_STATE_INIT:I = 0x0

.field private static final AUTORUN_STATE_START:I = 0x1

.field private static final AUTORUN_STATE_STOP:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AUTORUN"


# instance fields
.field private final autorun_trigger:Ljava/lang/String;

.field private mAutorun:Lcom/lge/autorun/Autorun;

.field private mAutorunState:I

.field private mAutorunVZW:Z

.field private final mContext:Landroid/content/Context;

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 3
    .parameter "context"
    .parameter "mgr"

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "com.lge.android.server.autorun_enable_changed"

    iput-object v0, p0, Lcom/lge/autorun/AutorunManager;->autorun_trigger:Ljava/lang/String;

    .line 26
    iput-boolean v2, p0, Lcom/lge/autorun/AutorunManager;->mAutorunVZW:Z

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/autorun/AutorunManager;->mAutorunState:I

    .line 31
    iput-object p1, p0, Lcom/lge/autorun/AutorunManager;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/lge/autorun/AutorunManager;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 33
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] AutorunManager start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v0, "VZW"

    const-string v1, "ro.build.target_operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/autorun/AutorunManager;->mAutorunVZW:Z

    .line 40
    :goto_0
    iput v2, p0, Lcom/lge/autorun/AutorunManager;->mAutorunState:I

    .line 41
    return-void

    .line 38
    :cond_0
    iput-boolean v2, p0, Lcom/lge/autorun/AutorunManager;->mAutorunVZW:Z

    goto :goto_0
.end method


# virtual methods
.method public command(I)V
    .locals 3
    .parameter "cmd"

    .prologue
    const/16 v1, 0x64

    const/4 v2, 0x1

    .line 48
    iget-boolean v0, p0, Lcom/lge/autorun/AutorunManager;->mAutorunVZW:Z

    if-nez v0, :cond_1

    .line 49
    const-string v0, "AUTORUN"

    const-string v1, "non-vzw autorun was implemented by settings. so discard it here"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 92
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] Unknown cmd...."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :sswitch_0
    iget v0, p0, Lcom/lge/autorun/AutorunManager;->mAutorunState:I

    if-ne v0, v2, :cond_2

    .line 57
    const-string v0, "AUTORUN"

    const-string v1, "autorun already started"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/lge/autorun/AutorunManager;->mAutorun:Lcom/lge/autorun/Autorun;

    if-nez v0, :cond_4

    .line 62
    new-instance v0, Lcom/lge/autorun/Autorun_VZW;

    iget-object v1, p0, Lcom/lge/autorun/AutorunManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/autorun/Autorun_VZW;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/autorun/AutorunManager;->mAutorun:Lcom/lge/autorun/Autorun;

    .line 63
    iget-object v0, p0, Lcom/lge/autorun/AutorunManager;->mAutorun:Lcom/lge/autorun/Autorun;

    iget-object v1, p0, Lcom/lge/autorun/AutorunManager;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, v1}, Lcom/lge/autorun/Autorun;->addUsbDeviceManager(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 67
    :cond_3
    :goto_1
    iput v2, p0, Lcom/lge/autorun/AutorunManager;->mAutorunState:I

    goto :goto_0

    .line 64
    :cond_4
    iget v0, p0, Lcom/lge/autorun/AutorunManager;->mAutorunState:I

    if-ne v0, v1, :cond_3

    .line 65
    iget-object v0, p0, Lcom/lge/autorun/AutorunManager;->mAutorun:Lcom/lge/autorun/Autorun;

    invoke-virtual {v0}, Lcom/lge/autorun/Autorun;->resume()V

    goto :goto_1

    .line 72
    :sswitch_1
    iget v0, p0, Lcom/lge/autorun/AutorunManager;->mAutorunState:I

    if-ne v0, v1, :cond_5

    .line 73
    const-string v0, "AUTORUN"

    const-string v1, "autorun already stopped"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/lge/autorun/AutorunManager;->mAutorun:Lcom/lge/autorun/Autorun;

    if-eqz v0, :cond_6

    .line 78
    iget-object v0, p0, Lcom/lge/autorun/AutorunManager;->mAutorun:Lcom/lge/autorun/Autorun;

    invoke-virtual {v0}, Lcom/lge/autorun/Autorun;->distroy()V

    .line 80
    :cond_6
    iput v1, p0, Lcom/lge/autorun/AutorunManager;->mAutorunState:I

    goto :goto_0

    .line 84
    :sswitch_2
    iget v0, p0, Lcom/lge/autorun/AutorunManager;->mAutorunState:I

    if-ne v0, v2, :cond_0

    .line 85
    iget-object v0, p0, Lcom/lge/autorun/AutorunManager;->mAutorun:Lcom/lge/autorun/Autorun;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/lge/autorun/AutorunManager;->mAutorun:Lcom/lge/autorun/Autorun;

    invoke-virtual {v0}, Lcom/lge/autorun/Autorun;->autorunStopTimer()V

    goto :goto_0

    .line 53
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x64 -> :sswitch_1
    .end sparse-switch
.end method
