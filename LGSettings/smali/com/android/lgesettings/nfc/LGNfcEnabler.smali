.class public Lcom/android/lgesettings/nfc/LGNfcEnabler;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;,
        Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;,
        Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;,
        Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcbeamScrPref;,
        Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;,
        Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTriggerInP2P;,
        Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTrigger;,
        Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCardTrigger;,
        Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;
    }
.end annotation


# static fields
.field public static dialog:Landroid/app/AlertDialog;

.field public static isToastForDCM:Z


# instance fields
.field private final KEY_SHOW_NFC_FIRSTCONNECT:Ljava/lang/String;

.field private airBeamSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

.field private airNfcSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

.field public firstBeam:Z

.field private final mContext:Landroid/content/Context;

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

.field mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

.field private switchVZW:Lcom/android/lgesettings/nfc/NfcSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->isToastForDCM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "nfc_first_connect"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->KEY_SHOW_NFC_FIRSTCONNECT:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->firstBeam:Z

    .line 959
    new-instance v0, Lcom/android/lgesettings/nfc/LGNfcEnabler$5;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$5;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 100
    invoke-static {}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getNfcAdapterAddon()Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    .line 102
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    if-nez v0, :cond_1

    .line 104
    :cond_0
    const-string v0, "LGNfcEnabler"

    const-string v1, "mNfcAdapter is null in LGNfcEnabler()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_1
    new-instance v0, Lcom/android/lgesettings/nfc/NfcManager;

    invoke-direct {v0, p1}, Lcom/android/lgesettings/nfc/NfcManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 3
    .parameter "context"
    .parameter "nfcSettings"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;)V

    .line 113
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

    new-instance v1, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;

    invoke-direct {v1, p0, p2}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;Landroid/preference/PreferenceScreen;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/nfc/NfcManager;->addNfcStateListener(Lcom/android/lgesettings/nfc/NfcStateListener;I)V

    .line 114
    const-string v0, "LGNfcEnabler"

    const-string v1, "LGNfcEnabler created  NFC preference screen for kddi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)V
    .locals 3
    .parameter "context"
    .parameter "switchNfc"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;)V

    .line 128
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

    new-instance v1, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;

    invoke-direct {v1, p0, p2}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/nfc/NfcManager;->addNfcStateListener(Lcom/android/lgesettings/nfc/NfcStateListener;I)V

    .line 129
    const-string v0, "LGNfcEnabler"

    const-string v1, "LGNfcEnabler created nfc switch and beam switch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/lgesettings/nfc/NfcSwitchPreference;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)V
    .locals 3
    .parameter "context"
    .parameter "switchNfc"
    .parameter "androidBeam"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;)V

    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

    new-instance v1, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;

    invoke-direct {v1, p0, p2}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSwitchPref;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/nfc/NfcManager;->addNfcStateListener(Lcom/android/lgesettings/nfc/NfcStateListener;I)V

    .line 121
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

    new-instance v1, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;

    invoke-direct {v1, p0, p3}, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamSwitchPref;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/nfc/NfcManager;->addNfcStateListener(Lcom/android/lgesettings/nfc/NfcStateListener;I)V

    .line 122
    const-string v0, "LGNfcEnabler"

    const-string v1, "LGNfcEnabler created nfc switch and beam switch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->airNfcSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/lgesettings/nfc/LGNfcEnabler;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->airNfcSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->switchVZW:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/lgesettings/nfc/LGNfcEnabler;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->switchVZW:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->airBeamSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/nfc/LGNfcEnabler;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->airBeamSwitch:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    return-object p1
.end method

.method public static hasDirectBeam()Z
    .locals 2

    .prologue
    .line 1166
    const-string v0, "lge.nfc.handover"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "directbeam"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1168
    const/4 v0, 0x1

    .line 1170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public airplaneBeamDlg()V
    .locals 4

    .prologue
    .line 1121
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1122
    .local v0, AlertDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080286

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1123
    const v1, 0x7f080287

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1125
    const v1, 0x7f08059d

    new-instance v2, Lcom/android/lgesettings/nfc/LGNfcEnabler$15;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$15;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0812e1

    new-instance v3, Lcom/android/lgesettings/nfc/LGNfcEnabler$14;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$14;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/nfc/LGNfcEnabler$13;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$13;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1161
    return-void
.end method

.method public airplaneNfcDlg()V
    .locals 4

    .prologue
    .line 1085
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1086
    .local v0, AlertDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080286

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1087
    const v1, 0x7f080287

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1089
    const v1, 0x7f08059d

    new-instance v2, Lcom/android/lgesettings/nfc/LGNfcEnabler$12;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$12;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0812e1

    new-instance v3, Lcom/android/lgesettings/nfc/LGNfcEnabler$11;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$11;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/nfc/LGNfcEnabler$10;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$10;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1116
    return-void
.end method

.method public isUnchecked(I)I
    .locals 4
    .parameter "id"

    .prologue
    .line 985
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_first_on_check"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 986
    .local v0, isCheck:I
    const-string v1, "LGNfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NFC_FIRST_ON_CHECK = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    return v0
.end method

.method public markUnchecked(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_first_on_check"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1003
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "LGNfcEnabler"

    const-string v1, "LGNfcEnabler pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

    invoke-virtual {v0}, Lcom/android/lgesettings/nfc/NfcManager;->pause()V

    .line 161
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 139
    const-string v1, "LGNfcEnabler"

    const-string v2, "LGNfcEnabler resume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/NfcManager;->resume()V

    .line 144
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.mdm.intent.action.NFC_POLICY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, filterLGMDM:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public showBeamOffDlg()V
    .locals 4

    .prologue
    .line 940
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 941
    .local v0, AlertDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08025f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 943
    invoke-static {}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->hasDirectBeam()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 944
    const v1, 0x7f080260

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 948
    :goto_0
    const v1, 0x7f08059d

    new-instance v2, Lcom/android/lgesettings/nfc/LGNfcEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$4;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0812e1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 957
    return-void

    .line 946
    :cond_0
    const v1, 0x7f0801fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public showNfcFirstConnectOffDlg()V
    .locals 6

    .prologue
    .line 1008
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1009
    .local v0, FirstAlertDlg:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f08025f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1011
    iget-object v3, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1012
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400d0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 1013
    .local v1, dialogView:Landroid/widget/ScrollView;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1016
    const v3, 0x7f08059d

    new-instance v4, Lcom/android/lgesettings/nfc/LGNfcEnabler$8;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$8;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0812e1

    new-instance v5, Lcom/android/lgesettings/nfc/LGNfcEnabler$7;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$7;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/lgesettings/nfc/LGNfcEnabler$6;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$6;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1055
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/lgesettings/nfc/LGNfcEnabler;->dialog:Landroid/app/AlertDialog;

    .line 1056
    sget-object v3, Lcom/android/lgesettings/nfc/LGNfcEnabler;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1058
    sget-object v3, Lcom/android/lgesettings/nfc/LGNfcEnabler;->dialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1060
    new-instance v3, Lcom/android/lgesettings/nfc/LGNfcEnabler$9;

    invoke-direct {v3, p0, v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler$9;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;Landroid/widget/ScrollView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 1081
    return-void
.end method

.method public showNfcOffDlg()V
    .locals 4

    .prologue
    .line 912
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 913
    .local v0, AlertDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08025f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 914
    const v1, 0x7f0801fb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 916
    const v1, 0x7f08059d

    new-instance v2, Lcom/android/lgesettings/nfc/LGNfcEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$3;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0812e1

    new-instance v3, Lcom/android/lgesettings/nfc/LGNfcEnabler$2;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$2;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/nfc/LGNfcEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$1;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 936
    return-void
.end method
