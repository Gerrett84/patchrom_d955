.class public Lcom/android/lgesettings/DataRoamingOptionRequest;
.super Landroid/content/BroadcastReceiver;
.source "DataRoamingOptionRequest.java"


# instance fields
.field private ACTION_MOBILE_DATA_ROAMING_OPTION_CANCEL:Ljava/lang/String;

.field private ACTION_MOBILE_DATA_ROAMING_OPTION_HPLMN:Ljava/lang/String;

.field private ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST:Ljava/lang/String;

.field private LogEnable:Z

.field private REQUEST_ROAMING_OPTION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/DataRoamingOptionRequest;->LogEnable:Z

    .line 61
    const-string v0, "android.intent.action.MOBILE_DATA_ROAMING_OPTION_REQUEST"

    iput-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionRequest;->ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST:Ljava/lang/String;

    .line 62
    const-string v0, "android.intent.action.MOBILE_DATA_ROAMING_OPTION_CANCEL"

    iput-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionRequest;->ACTION_MOBILE_DATA_ROAMING_OPTION_CANCEL:Ljava/lang/String;

    .line 63
    const-string v0, "android.intent.action.ENABLE_DATA_IN_HPLMN"

    iput-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionRequest;->ACTION_MOBILE_DATA_ROAMING_OPTION_HPLMN:Ljava/lang/String;

    .line 64
    const-string v0, "requestRoamingOption"

    iput-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionRequest;->REQUEST_ROAMING_OPTION:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x0

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "Data_Auto_On_Popup_Hplmn"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 73
    iget-object v2, p0, Lcom/android/lgesettings/DataRoamingOptionRequest;->ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    iget-boolean v0, p0, Lcom/android/lgesettings/DataRoamingOptionRequest;->LogEnable:Z

    if-eqz v0, :cond_0

    const-string v0, "LGE_data"

    const-string v1, "DataRoamingOptionRequest:onReceive(ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionRequest;->REQUEST_ROAMING_OPTION:Ljava/lang/String;

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 79
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 80
    const-class v2, Lcom/android/lgesettings/DataRoamingOptionDialog;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 81
    iget-object v2, p0, Lcom/android/lgesettings/DataRoamingOptionRequest;->ACTION_MOBILE_DATA_ROAMING_OPTION_REQUEST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v2, p0, Lcom/android/lgesettings/DataRoamingOptionRequest;->REQUEST_ROAMING_OPTION:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/DataRoamingOptionRequest;->ACTION_MOBILE_DATA_ROAMING_OPTION_HPLMN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 89
    iget-boolean v0, p0, Lcom/android/lgesettings/DataRoamingOptionRequest;->LogEnable:Z

    if-eqz v0, :cond_3

    const-string v0, "LGE_data"

    const-string v2, "DataRoamingOptionRequest:onReceive(ACTION_MOBILE_DATA_ROAMING_OPTION_HPLMN)"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/DataRoamingOptionRequest;->REQUEST_ROAMING_OPTION:Ljava/lang/String;

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 93
    if-nez v1, :cond_1

    .line 94
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 95
    const-class v2, Lcom/android/lgesettings/DataRoamingOptionDialog;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 96
    iget-object v2, p0, Lcom/android/lgesettings/DataRoamingOptionRequest;->ACTION_MOBILE_DATA_ROAMING_OPTION_HPLMN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v2, p0, Lcom/android/lgesettings/DataRoamingOptionRequest;->REQUEST_ROAMING_OPTION:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 103
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/DataRoamingOptionRequest;->ACTION_MOBILE_DATA_ROAMING_OPTION_CANCEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-boolean v0, p0, Lcom/android/lgesettings/DataRoamingOptionRequest;->LogEnable:Z

    if-eqz v0, :cond_1

    const-string v0, "LGE_data"

    const-string v1, "DataRoamingOptionRequest:onReceive(ACTION_MOBILE_DATA_ROAMING_OPTION_CANCEL)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
