.class public Lcom/android/lgesettings/lge/OverlayUtils;
.super Ljava/lang/Object;
.source "OverlayUtils.java"


# static fields
.field public static GEMINI_SIM_1:I

.field public static GEMINI_SIM_2:I

.field public static MULTI_SIM_DATA_CALL_SUBSCRIPTION:Ljava/lang/String;

.field public static SIM_SLOT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 132
    sput v0, Lcom/android/lgesettings/lge/OverlayUtils;->GEMINI_SIM_1:I

    .line 133
    sput v0, Lcom/android/lgesettings/lge/OverlayUtils;->GEMINI_SIM_2:I

    .line 134
    const-string v0, "NULL"

    sput-object v0, Lcom/android/lgesettings/lge/OverlayUtils;->SIM_SLOT:Ljava/lang/String;

    .line 135
    const-string v0, "NULL"

    sput-object v0, Lcom/android/lgesettings/lge/OverlayUtils;->MULTI_SIM_DATA_CALL_SUBSCRIPTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LgSvcCmd_getCmdValue(I)Ljava/lang/String;
    .locals 1
    .parameter "LgSvcCmdId"

    .prologue
    .line 140
    const-string v0, "NULL"

    return-object v0
.end method

.method public static LgSvcCmd_setCmdValue(ILjava/lang/String;)I
    .locals 1
    .parameter "LgSvcCmdId"
    .parameter "zero"

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public static LifeTime_NvBackup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "NULL"

    return-object v0
.end method

.method public static checkAppUninstallPolicies(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public static check_SIM_inserted(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public static getAllowTethering(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public static getAllowUsbDrive(Landroid/content/ComponentName;)Z
    .locals 2
    .parameter "who"

    .prologue
    .line 73
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbDrive(Landroid/content/ComponentName;)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAllowUsbPort(Landroid/content/ComponentName;)Z
    .locals 2
    .parameter "who"

    .prologue
    .line 86
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    invoke-static {}, Lcom/lge/cappuccino/MdmSprint;->getInstance()Lcom/lge/cappuccino/IMdmSprint;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/lge/cappuccino/IMdmSprint;->getAllowUsbPort(Landroid/content/ComponentName;)Z

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAutoProfileKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "operator"
    .parameter "mSubscription"

    .prologue
    .line 111
    const-string v0, "NULL"

    return-object v0
.end method

.method public static getBluetoothEnabled()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public static getDefaultSubscription()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public static getMultiUserEnabled()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public static getNumeric(I)Ljava/lang/String;
    .locals 1
    .parameter "mSubscription"

    .prologue
    .line 108
    const-string v0, "NULL"

    return-object v0
.end method

.method public static get_SIM_phone_number(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 120
    const-string v0, "NULL"

    return-object v0
.end method

.method public static get_SIM_state(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "sim_num"

    .prologue
    .line 129
    const-string v0, ""

    return-object v0
.end method

.method public static get_device_ID(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "mTelephonyManager"

    .prologue
    .line 161
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_mobileNetwork_state(Landroid/content/Context;Landroid/telephony/TelephonyManager;)I
    .locals 1
    .parameter "context"
    .parameter "mTelephonyManager"

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public static get_network_type(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "unknown"

    .prologue
    .line 181
    const-string v0, "common_pushed"

    return-object v0
.end method

.method public static get_operator_name(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "unknown"

    .prologue
    .line 169
    const-string v0, "common_pushed"

    return-object v0
.end method

.method public static get_roamming_state(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "mTelephonyManager"
    .parameter "sRoamming"
    .parameter "sNotRoamming"

    .prologue
    .line 189
    const-string v0, "common_pushed"

    return-object v0
.end method

.method public static get_service_state(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 185
    const/16 v0, 0x270f

    return v0
.end method

.method public static get_signal_strength_Asu(Landroid/content/Context;Lcom/android/internal/telephony/PhoneStateIntentReceiver;)I
    .locals 1
    .parameter "context"
    .parameter "mPhoneStateReceiver"

    .prologue
    .line 177
    const/16 v0, 0x270f

    return v0
.end method

.method public static get_signal_strength_Dbm(Landroid/content/Context;Lcom/android/internal/telephony/PhoneStateIntentReceiver;)I
    .locals 1
    .parameter "context"
    .parameter "mPhoneStateReceiver"

    .prologue
    .line 173
    const/16 v0, 0x270f

    return v0
.end method

.method public static initNV(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 41
    if-eqz p0, :cond_0

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.lge.NVItemClear"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static isPackageDisabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public static isSsidAllowed3LM(Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public static write_SharedPreference(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "mode"
    .parameter "value"
    .parameter "context"

    .prologue
    .line 116
    return-void
.end method
