.class public Lcom/android/lgesettings/nfc/NfcSettings;
.super Landroid/preference/PreferenceFragment;
.source "NfcSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field static isCLFUserLockUIMUserRemoteLock:Z


# instance fields
.field private final DLG_ID_CONFIRM_ERR:I

.field private final DLG_ID_CONFIRM_PIN:I

.field private final DLG_ID_INITIALIZE_PIN:I

.field private final DLG_ID_INPUT_PIN:I

.field private final DLG_ID_NEW_PIN:I

.field private final DLG_ID_NONE:I

.field private final DLG_ID_OLD_PIN:I

.field private final DLG_ID_PIN_ERR:I

.field private final DLG_ID_PUK_ERR:I

.field private final KEY_NFC_BEAM:Ljava/lang/String;

.field private final KEY_NFC_CHANGE_PIN:Ljava/lang/String;

.field private final KEY_NFC_INIT_PIN:Ljava/lang/String;

.field private final KEY_NFC_LOCK:Ljava/lang/String;

.field private final KEY_NFC_LOCK_NUMBER:Ljava/lang/String;

.field private final KEY_NFC_P2P:Ljava/lang/String;

.field private final LOCK_SERVICE_REQUEST:I

.field private final MENU_ID_CHANGE_PIN:I

.field private final MENU_ID_INITIALIZE_PIN:I

.field private final MIN_PIN_NUMBER:I

.field private final MIN_PUK_NUMBER:I

.field private final TAG:Ljava/lang/String;

.field private mCategoryLockNumber:Landroid/preference/PreferenceCategory;

.field private mCheckBeam:Landroid/preference/CheckBoxPreference;

.field private mCheckLock:Landroid/preference/CheckBoxPreference;

.field private mCheckP2P:Landroid/preference/CheckBoxPreference;

.field private mDlg:Landroid/app/AlertDialog;

.field private mDlgID:I

.field mDlgShowListener:Landroid/content/DialogInterface$OnShowListener;

.field mINfcLock:Lcom/lge/nfclock/service/INfcLock;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field mPinTextWatcher:Landroid/text/TextWatcher;

.field mPukTextWatcher:Landroid/text/TextWatcher;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenChangePin:Landroid/preference/PreferenceScreen;

.field private mScreenInitPin:Landroid/preference/PreferenceScreen;

.field private newPin:Ljava/lang/String;

.field private oldPin:Ljava/lang/String;

.field srvConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/nfc/NfcSettings;->isCLFUserLockUIMUserRemoteLock:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 52
    const-string v0, "NFC_SETTINGS"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->TAG:Ljava/lang/String;

    .line 55
    const-string v0, "nfc_lock"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->KEY_NFC_LOCK:Ljava/lang/String;

    .line 56
    const-string v0, "nfc_p2p"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->KEY_NFC_P2P:Ljava/lang/String;

    .line 57
    const-string v0, "nfc_beam"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->KEY_NFC_BEAM:Ljava/lang/String;

    .line 58
    const-string v0, "nfc_lock_number"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->KEY_NFC_LOCK_NUMBER:Ljava/lang/String;

    .line 59
    const-string v0, "nfc_change_pin"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->KEY_NFC_CHANGE_PIN:Ljava/lang/String;

    .line 60
    const-string v0, "nfc_init_pin"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->KEY_NFC_INIT_PIN:Ljava/lang/String;

    .line 62
    iput v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->MENU_ID_CHANGE_PIN:I

    .line 63
    iput v3, p0, Lcom/android/lgesettings/nfc/NfcSettings;->MENU_ID_INITIALIZE_PIN:I

    .line 65
    iput v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->DLG_ID_NONE:I

    .line 66
    iput v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->DLG_ID_OLD_PIN:I

    .line 67
    iput v3, p0, Lcom/android/lgesettings/nfc/NfcSettings;->DLG_ID_NEW_PIN:I

    .line 68
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->DLG_ID_CONFIRM_PIN:I

    .line 69
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->DLG_ID_INITIALIZE_PIN:I

    .line 70
    iput v4, p0, Lcom/android/lgesettings/nfc/NfcSettings;->DLG_ID_INPUT_PIN:I

    .line 71
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->DLG_ID_PIN_ERR:I

    .line 72
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->DLG_ID_PUK_ERR:I

    .line 73
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->DLG_ID_CONFIRM_ERR:I

    .line 79
    iput v4, p0, Lcom/android/lgesettings/nfc/NfcSettings;->MIN_PIN_NUMBER:I

    .line 80
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->MIN_PUK_NUMBER:I

    .line 82
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->LOCK_SERVICE_REQUEST:I

    .line 107
    iput v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlgID:I

    .line 124
    new-instance v0, Lcom/android/lgesettings/nfc/NfcSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/nfc/NfcSettings$1;-><init>(Lcom/android/lgesettings/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->srvConn:Landroid/content/ServiceConnection;

    .line 150
    new-instance v0, Lcom/android/lgesettings/nfc/NfcSettings$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/nfc/NfcSettings$2;-><init>(Lcom/android/lgesettings/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    new-instance v0, Lcom/android/lgesettings/nfc/NfcSettings$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/nfc/NfcSettings$3;-><init>(Lcom/android/lgesettings/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlgShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 194
    new-instance v0, Lcom/android/lgesettings/nfc/NfcSettings$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/nfc/NfcSettings$4;-><init>(Lcom/android/lgesettings/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mPinTextWatcher:Landroid/text/TextWatcher;

    .line 236
    new-instance v0, Lcom/android/lgesettings/nfc/NfcSettings$5;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/nfc/NfcSettings$5;-><init>(Lcom/android/lgesettings/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mPukTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/nfc/NfcSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/lgesettings/nfc/NfcSettings;->handleNfcStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/nfc/NfcSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->handleNfcLockStateChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/nfc/NfcSettings;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/lgesettings/nfc/NfcSettings;->verifyLockNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/nfc/NfcSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->isNfcLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/nfc/NfcSettings;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/lgesettings/nfc/NfcSettings;->setNfcLocked(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/nfc/NfcSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getNfcLockInitNumberRemains()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/nfc/NfcSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/nfc/NfcSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->newPin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/lgesettings/nfc/NfcSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->newPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/lgesettings/nfc/NfcSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/lgesettings/nfc/NfcSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/nfc/NfcSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlgID:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/nfc/NfcSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlgID:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/lgesettings/nfc/NfcSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->oldPin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/lgesettings/nfc/NfcSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->oldPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/lgesettings/nfc/NfcSettings;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/nfc/NfcSettings;->changeNfcLockNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/nfc/NfcSettings;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/lgesettings/nfc/NfcSettings;->initNfcLockNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/lgesettings/nfc/NfcSettings;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/lgesettings/nfc/NfcSettings;->verifyNfcLockInitNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private changeNfcLockNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "oldNumber"
    .parameter "newNumber"

    .prologue
    const/4 v1, 0x0

    .line 512
    const-string v2, "NFC_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeNfcLockNumber("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v2, :cond_0

    .line 514
    const-string v2, "NFC_SETTINGS"

    const-string v3, "mINfcLock == null in changeNfcLockNumber "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :goto_0
    return v1

    .line 519
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v2, p1, p2}, Lcom/lge/nfclock/service/INfcLock;->changeNfcLockNumber(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getNfcLockInitNumberRemains()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 556
    const-string v2, "NFC_SETTINGS"

    const-string v3, "getNfcLockInitNumberRemains()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v2, :cond_0

    .line 559
    const-string v2, "NFC_SETTINGS"

    const-string v3, "mINfcLock == null in getNfcLockInitNumberRemains "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_0
    return v1

    .line 564
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v2}, Lcom/lge/nfclock/service/INfcLock;->getRetryCounterForNfcPinNumber()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getNfcLockStatus()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 357
    const-string v2, "NFC_SETTINGS"

    const-string v3, "getNfcLocked()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v2, :cond_0

    .line 359
    const-string v2, "NFC_SETTINGS"

    const-string v3, "mINfcLock == null in getNfcLocked "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    return v1

    .line 364
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v2}, Lcom/lge/nfclock/service/INfcLock;->getNfcLockStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleNfcLockStateChanged()V
    .locals 12

    .prologue
    .line 1047
    const-string v0, "NFC_SETTINGS"

    const-string v1, "handleNfcLockStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 1049
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 1051
    const/4 v0, 0x0

    .line 1053
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->isNfcRemoteLocked()Z

    move-result v2

    .line 1054
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->testSetNfcLocked()Z

    move-result v3

    .line 1055
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->isSimForNfc()Z

    move-result v4

    .line 1056
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->isExistLockFile()Z

    move-result v5

    .line 1057
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getNfcLockInitNumberRemains()I

    move-result v6

    .line 1058
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->isRemoteLockStatus()I

    move-result v7

    .line 1059
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->isUserLockStatus()I

    move-result v8

    .line 1061
    const-string v9, "NFC_SETTINGS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isAirplaneMode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isNfcLocked = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", remoteLocked = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const-string v0, "NFC_SETTINGS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nfcLockable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", SimForNfc = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isExistLockFile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remains pin init = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const-string v0, "NFC_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userLockStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNfcRemoteLockStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLockForKDDI()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1070
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->isNfcLocked()Z

    move-result v0

    .line 1071
    if-eqz v0, :cond_4

    .line 1072
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1073
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f080220

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1081
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 1114
    :goto_1
    const/4 v0, 0x1

    if-eq v7, v0, :cond_0

    const/4 v0, 0x3

    if-eq v7, v0, :cond_0

    const/4 v0, 0x4

    if-eq v7, v0, :cond_0

    const/4 v0, 0x5

    if-eq v7, v0, :cond_0

    const/4 v0, 0x6

    if-eq v7, v0, :cond_0

    const/4 v0, 0x7

    if-ne v7, v0, :cond_1

    .line 1116
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1117
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenChangePin:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1124
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenInitPin:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1127
    if-eqz v1, :cond_2

    .line 1128
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1129
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1130
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1133
    :cond_2
    if-eqz v2, :cond_3

    .line 1134
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1135
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1136
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1137
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenChangePin:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1138
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenInitPin:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1234
    :cond_3
    :goto_3
    return-void

    .line 1075
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1076
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f08021f

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 1083
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1084
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1096
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1097
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1098
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1099
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1103
    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 1104
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f081093

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1105
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1107
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1143
    :cond_6
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getNfcLockStatus()I

    move-result v0

    .line 1144
    const-string v1, "NFC_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    if-eqz v0, :cond_7

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    .line 1148
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1149
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f08024d

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1159
    :goto_4
    packed-switch v8, :pswitch_data_1

    .line 1190
    :goto_5
    const/4 v0, 0x1

    if-eq v7, v0, :cond_8

    const/4 v0, 0x3

    if-eq v7, v0, :cond_8

    const/4 v0, 0x4

    if-eq v7, v0, :cond_8

    const/4 v0, 0x5

    if-eq v7, v0, :cond_8

    const/4 v0, 0x6

    if-eq v7, v0, :cond_8

    const/4 v0, 0x7

    if-ne v7, v0, :cond_9

    .line 1192
    :cond_8
    :try_start_3
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1193
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1196
    :cond_9
    sget-boolean v0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->isToastForDCM:Z

    if-eqz v0, :cond_3

    .line 1197
    const-string v0, "NFC_SETTINGS"

    const-string v1, " Show DCM Toast popup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const/4 v0, 0x5

    if-eq v8, v0, :cond_a

    const/4 v0, 0x4

    if-eq v8, v0, :cond_a

    const/4 v0, 0x2

    if-eq v8, v0, :cond_a

    const/4 v0, 0x3

    if-eq v8, v0, :cond_a

    const/4 v0, 0x1

    if-eq v8, v0, :cond_a

    if-nez v8, :cond_e

    :cond_a
    const/4 v0, 0x4

    if-eq v7, v0, :cond_b

    const/4 v0, 0x6

    if-eq v7, v0, :cond_b

    const/4 v0, 0x7

    if-ne v7, v0, :cond_e

    .line 1201
    :cond_b
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08024a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1202
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->isToastForDCM:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 1229
    :catch_1
    move-exception v0

    .line 1230
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1152
    :cond_c
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1153
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f08024e

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 1162
    :pswitch_3
    :try_start_4
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1163
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1165
    if-eqz v5, :cond_d

    .line 1166
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenChangePin:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_5

    .line 1168
    :cond_d
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenChangePin:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_5

    .line 1175
    :pswitch_4
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1176
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1177
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1178
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1179
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenChangePin:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_5

    .line 1183
    :pswitch_5
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1184
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1185
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenChangePin:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_5

    .line 1204
    :cond_e
    const/4 v0, 0x1

    if-eq v7, v0, :cond_f

    const/4 v0, 0x3

    if-eq v7, v0, :cond_f

    const/4 v0, 0x5

    if-ne v7, v0, :cond_10

    :cond_f
    const/4 v0, 0x1

    if-eq v8, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    if-eq v7, v0, :cond_11

    const/4 v0, 0x3

    if-eq v7, v0, :cond_11

    const/4 v0, 0x5

    if-ne v7, v0, :cond_13

    :cond_11
    const/4 v0, 0x3

    if-ne v8, v0, :cond_13

    .line 1206
    :cond_12
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f081087

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1207
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->isToastForDCM:Z

    goto/16 :goto_3

    .line 1209
    :cond_13
    const/4 v0, 0x1

    if-eq v7, v0, :cond_14

    const/4 v0, 0x3

    if-eq v7, v0, :cond_14

    const/4 v0, 0x5

    if-ne v7, v0, :cond_15

    :cond_14
    const/4 v0, 0x2

    if-eq v8, v0, :cond_17

    const/4 v0, 0x4

    if-eq v8, v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    if-eq v7, v0, :cond_16

    const/4 v0, 0x3

    if-eq v7, v0, :cond_16

    const/4 v0, 0x5

    if-ne v7, v0, :cond_18

    :cond_16
    if-eqz v8, :cond_17

    const/4 v0, 0x5

    if-ne v8, v0, :cond_18

    .line 1211
    :cond_17
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f081087

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1213
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->isToastForDCM:Z

    goto/16 :goto_3

    .line 1215
    :cond_18
    const/4 v0, 0x2

    if-ne v7, v0, :cond_19

    const/4 v0, 0x2

    if-eq v8, v0, :cond_1a

    const/4 v0, 0x4

    if-eq v8, v0, :cond_1a

    :cond_19
    const/4 v0, 0x2

    if-ne v7, v0, :cond_1b

    const/4 v0, 0x3

    if-ne v8, v0, :cond_1b

    .line 1217
    :cond_1a
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f081089

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1218
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->isToastForDCM:Z

    goto/16 :goto_3

    .line 1220
    :cond_1b
    const/4 v0, 0x2

    if-ne v7, v0, :cond_1c

    const/4 v0, 0x1

    if-eq v8, v0, :cond_1d

    :cond_1c
    const/4 v0, 0x2

    if-ne v7, v0, :cond_1e

    if-eqz v8, :cond_1d

    const/4 v0, 0x5

    if-ne v8, v0, :cond_1e

    .line 1222
    :cond_1d
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08108a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1223
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/nfc/LGNfcEnabler;->isToastForDCM:Z

    goto/16 :goto_3

    .line 1225
    :cond_1e
    const-string v0, "NFC_SETTINGS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LGNfcEnabler.isToastForDCM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/lgesettings/nfc/LGNfcEnabler;->isToastForDCM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 1081
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1159
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private handleNfcStateChanged(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 969
    const-string v0, "NFC_SETTINGS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNfcStateChanged() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 979
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->isUserLockStatus()I

    .line 981
    const-string v1, "NFC_SETTINGS"

    const-string v2, "[NfcAdapter.STATE_OFF]=1,  [NfcAdapter.STATE_ON]=3,  [NfcAdapter.STATE_TURNING_ON]=2,  [NfcAdapter.STATE_TURNING_OFF]=4"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    packed-switch p1, :pswitch_data_0

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 993
    :pswitch_0
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1007
    if-eqz v0, :cond_1

    .line 1008
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1014
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1015
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1016
    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1018
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1019
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 1010
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 1023
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1024
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1025
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1026
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1027
    if-eqz v0, :cond_0

    .line 1028
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1029
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1030
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 1034
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1035
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1036
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1039
    :pswitch_3
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1040
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1041
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 991
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private initNfcLockNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "initNumber"

    .prologue
    const/4 v1, 0x0

    .line 541
    const-string v2, "NFC_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initNfcLockNumber("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v2, :cond_0

    .line 543
    const-string v2, "NFC_SETTINGS"

    const-string v3, "mINfcLock == null in initNfcLockNumber "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_0
    return v1

    .line 548
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v2, p1}, Lcom/lge/nfclock/service/INfcLock;->initializeNfcLockNumber(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isExistLockFile()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 588
    const-string v2, "NFC_SETTINGS"

    const-string v3, "isExistLockFile()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v2, :cond_0

    .line 591
    const-string v2, "NFC_SETTINGS"

    const-string v3, "mINfcLock == null in isSimForNfc "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :goto_0
    return v1

    .line 596
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v2}, Lcom/lge/nfclock/service/INfcLock;->isExistLockFile()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isNfcLocked()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 403
    const-string v3, "NFC_SETTINGS"

    const-string v4, "isNfcLocked()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v3, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v3, :cond_1

    .line 405
    const-string v2, "NFC_SETTINGS"

    const-string v3, "mINfcLock == null in isNfcLocked "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    :goto_0
    return v1

    .line 410
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v3}, Lcom/lge/nfclock/service/INfcLock;->getNfcLockStatus()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v3}, Lcom/lge/nfclock/service/INfcLock;->getNfcLockStatus()I

    move-result v3

    if-eq v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v3}, Lcom/lge/nfclock/service/INfcLock;->getNfcLockStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 415
    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isNfcRemoteLocked()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 425
    const-string v2, "NFC_SETTINGS"

    const-string v3, "isNfcRemoteLocked()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v2, :cond_1

    .line 427
    const-string v2, "NFC_SETTINGS"

    const-string v3, "mINfcLock == null in isNfcRemoteLocked "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    :goto_0
    return v1

    .line 435
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v2}, Lcom/lge/nfclock/service/INfcLock;->getNfcRemoteLockStatus()I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v3}, Lcom/lge/nfclock/service/INfcLock;->getNfcRemoteLockStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eq v2, v3, :cond_0

    .line 438
    const/4 v1, 0x1

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isRemoteLockStatus()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 449
    const-string v2, "NFC_SETTINGS"

    const-string v3, "isRemoteLockStatus()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v2, :cond_0

    .line 451
    const-string v2, "NFC_SETTINGS"

    const-string v3, "mINfcLock == null in isRemoteLockStatus "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :goto_0
    return v1

    .line 456
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v2}, Lcom/lge/nfclock/service/INfcLock;->getNfcRemoteLockStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isSimForNfc()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 572
    const-string v2, "NFC_SETTINGS"

    const-string v3, "isSimForNfc()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v2, :cond_0

    .line 575
    const-string v2, "NFC_SETTINGS"

    const-string v3, "mINfcLock == null in isSimForNfc "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :goto_0
    return v1

    .line 580
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v2}, Lcom/lge/nfclock/service/INfcLock;->isSimForNFC()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isUserLockStatus()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 388
    const-string v2, "NFC_SETTINGS"

    const-string v3, "isUserLockStatus()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v2, :cond_0

    .line 390
    const-string v2, "NFC_SETTINGS"

    const-string v3, "mINfcLock == null in isUserLockStatus "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    return v1

    .line 395
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v2}, Lcom/lge/nfclock/service/INfcLock;->getNfcLockStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setNfcLocked(Z)Z
    .locals 3
    .parameter "isLock"

    .prologue
    .line 480
    const-string v0, "NFC_SETTINGS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNfcLocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v0, :cond_0

    .line 482
    const-string v0, "NFC_SETTINGS"

    const-string v1, "mINfcLock == null in setNfcLocked "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v0, 0x0

    .line 486
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 13
    .parameter "id"

    .prologue
    const v12, 0x7f08022a

    const v11, 0x1010355

    const v10, 0x7f08059e

    const/4 v9, 0x0

    const v8, 0x7f08059d

    .line 604
    const-string v5, "NFC_SETTINGS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showDialog(id) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 606
    .local v2, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f0400d1

    invoke-virtual {v2, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 607
    .local v3, textEntryView:Landroid/view/View;
    const v5, 0x7f0a01c3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 609
    .local v1, edit:Landroid/widget/EditText;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 610
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 906
    :goto_0
    return-void

    .line 612
    :pswitch_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLockForKDDI()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 613
    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f08022c

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/lgesettings/nfc/NfcSettings$6;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/nfc/NfcSettings$6;-><init>(Lcom/android/lgesettings/nfc/NfcSettings;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    .line 630
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlgShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 631
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mPinTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 899
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/nfc/NfcSettings;->isInputPopup(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 900
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 905
    :cond_0
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 634
    :cond_1
    const v5, 0x7f080244

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080246

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/lgesettings/nfc/NfcSettings$7;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/nfc/NfcSettings$7;-><init>(Lcom/android/lgesettings/nfc/NfcSettings;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    .line 653
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlgShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 654
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mPinTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 659
    :pswitch_1
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLockForKDDI()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 660
    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f08022d

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/lgesettings/nfc/NfcSettings$8;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/nfc/NfcSettings$8;-><init>(Lcom/android/lgesettings/nfc/NfcSettings;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    .line 689
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlgShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 690
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mPinTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 693
    :cond_2
    const v5, 0x7f080244

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080247

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/lgesettings/nfc/NfcSettings$9;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/nfc/NfcSettings$9;-><init>(Lcom/android/lgesettings/nfc/NfcSettings;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    .line 724
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlgShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 725
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mPinTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_1

    .line 730
    :pswitch_2
    const v5, 0x7f08022e

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getLockNumberInitSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/lgesettings/nfc/NfcSettings$10;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/nfc/NfcSettings$10;-><init>(Lcom/android/lgesettings/nfc/NfcSettings;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    .line 754
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlgShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 755
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mPukTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_1

    .line 758
    :pswitch_3
    const v5, 0x7f080228

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080229

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/lgesettings/nfc/NfcSettings$11;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/nfc/NfcSettings$11;-><init>(Lcom/android/lgesettings/nfc/NfcSettings;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    .line 778
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlgShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 779
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mPinTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_1

    .line 784
    :pswitch_4
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLockForKDDI()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 785
    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f08022b

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/lgesettings/nfc/NfcSettings$12;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/nfc/NfcSettings$12;-><init>(Lcom/android/lgesettings/nfc/NfcSettings;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    .line 807
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlgShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 808
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mPinTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_1

    .line 811
    :cond_3
    const v5, 0x7f080244

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080245

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/lgesettings/nfc/NfcSettings$13;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/nfc/NfcSettings$13;-><init>(Lcom/android/lgesettings/nfc/NfcSettings;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    .line 834
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlgShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 835
    iget-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mPinTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_1

    .line 841
    :pswitch_5
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLockForKDDI()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 842
    const v5, 0x7f08108e

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f08108f

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/lgesettings/nfc/NfcSettings$14;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/nfc/NfcSettings$14;-><init>(Lcom/android/lgesettings/nfc/NfcSettings;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 856
    :cond_4
    const v5, 0x7f08024f

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080248

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/lgesettings/nfc/NfcSettings$15;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/nfc/NfcSettings$15;-><init>(Lcom/android/lgesettings/nfc/NfcSettings;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 873
    :pswitch_6
    const-string v4, ""

    .line 874
    .local v4, title:Ljava/lang/String;
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLockForKDDI()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 875
    const v5, 0x7f081090

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/nfc/NfcSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 879
    :goto_2
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getPukErrorSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/lgesettings/nfc/NfcSettings$16;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/nfc/NfcSettings$16;-><init>(Lcom/android/lgesettings/nfc/NfcSettings;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 877
    :cond_5
    const v5, 0x7f080232

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/nfc/NfcSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 610
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private testSetNfcLocked()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 464
    const-string v3, "NFC_SETTINGS"

    const-string v4, "testSetNfcLocked()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v3, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v3, :cond_0

    .line 466
    const-string v3, "NFC_SETTINGS"

    const-string v4, "mINfcLock == null in testSetNfcLocked "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :goto_0
    return v2

    .line 471
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->isNfcLocked()Z

    move-result v1

    .line 472
    .local v1, isLocked:Z
    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v4, v3}, Lcom/lge/nfclock/service/INfcLock;->testSetNfcLocked(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    .line 473
    .end local v1           #isLocked:Z
    :catch_0
    move-exception v0

    .line 474
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private verifyLockNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 497
    const-string v2, "NFC_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifyLockNumber("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v2, :cond_0

    .line 499
    const-string v2, "NFC_SETTINGS"

    const-string v3, "mINfcLock == null in verifyLockNumber "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_0
    return v1

    .line 504
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v2, p1}, Lcom/lge/nfclock/service/INfcLock;->verifyNfcLockNumber(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private verifyNfcLockInitNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "initNumber"

    .prologue
    const/4 v1, 0x0

    .line 527
    const-string v2, "NFC_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifyNfcLockInitNumber("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v2, :cond_0

    .line 529
    const-string v2, "NFC_SETTINGS"

    const-string v3, "mINfcLock == null in verifyNfcLockInitNumber "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :goto_0
    return v1

    .line 533
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v2, p1}, Lcom/lge/nfclock/service/INfcLock;->verifyNfcPinNumber(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method getInputText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 959
    const-string v1, "NFC_SETTINGS"

    const-string v2, "getInputText()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 961
    const-string v1, ""

    .line 965
    :goto_0
    return-object v1

    .line 964
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mDlg:Landroid/app/AlertDialog;

    const v2, 0x7f0a01c3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 965
    .local v0, edit:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getLockNumberInitSummary()Ljava/lang/String;
    .locals 6

    .prologue
    const v5, 0x7f08022f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 909
    const-string v1, "NFC_SETTINGS"

    const-string v2, "getLockNumberInitSummary()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getNfcLockInitNumberRemains()I

    move-result v0

    .line 912
    .local v0, remains:I
    if-gtz v0, :cond_0

    .line 913
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v5, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 919
    :goto_0
    return-object v1

    .line 915
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLockForKDDI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 916
    const v1, 0x7f08108d

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/nfc/NfcSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 919
    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v5, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getPukErrorSummary()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 924
    const-string v2, "NFC_SETTINGS"

    const-string v3, "getPukErrorSummary()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getNfcLockInitNumberRemains()I

    move-result v0

    .line 926
    .local v0, remains:I
    const-string v1, ""

    .line 927
    .local v1, summary:Ljava/lang/String;
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLockForKDDI()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 928
    if-gtz v0, :cond_0

    .line 929
    const v2, 0x7f081092

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/nfc/NfcSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 931
    :cond_0
    const v2, 0x7f081091

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/lgesettings/nfc/NfcSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 938
    :goto_0
    return-object v1

    .line 933
    :cond_1
    if-gtz v0, :cond_2

    .line 934
    const v2, 0x7f080237

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/nfc/NfcSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 936
    :cond_2
    const v2, 0x7f080233

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/lgesettings/nfc/NfcSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method isInputPopup(I)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 942
    const-string v0, "NFC_SETTINGS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInputPopup(id)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    packed-switch p1, :pswitch_data_0

    .line 955
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 950
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 944
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1288
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1290
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 1291
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 1292
    const-string v0, "NFC_SETTINGS"

    const-string v1, "onActivityResult = RESULT_UNLOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1293
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1294
    const-string v0, "NFC_SETTINGS"

    const-string v1, "onActivityResult = RESULT_LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1296
    :cond_2
    const-string v0, "NFC_SETTINGS"

    const-string v1, "onActivityResult = RESULT_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 265
    const-string v1, "NFC_SETTINGS"

    const-string v2, "onCreate : ON-CREATE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 268
    .local v0, activity:Landroid/app/Activity;
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLockForKDDI()Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    const v1, 0x7f080238

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 272
    :cond_0
    const v1, 0x7f060034

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->addPreferencesFromResource(I)V

    .line 274
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 275
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.lge.nfclock.LOCK_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v1, "nfc_lock"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    .line 279
    const-string v1, "nfc_p2p"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    .line 280
    const-string v1, "nfc_beam"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    .line 281
    const-string v1, "nfc_lock_number"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCategoryLockNumber:Landroid/preference/PreferenceCategory;

    .line 282
    const-string v1, "nfc_change_pin"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenChangePin:Landroid/preference/PreferenceScreen;

    .line 283
    const-string v1, "nfc_init_pin"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenInitPin:Landroid/preference/PreferenceScreen;

    .line 284
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLockForKDDI()Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenInitPin:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 287
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f08023a

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 288
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f08023b

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 289
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080240

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 290
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080241

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 292
    invoke-static {}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->hasDirectBeam()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 295
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f08026c

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 299
    :goto_0
    const-string v1, "NFC_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Docomo] Direct Beam or Android Beam : hasDirectBeam() =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->hasDirectBeam()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCategoryLockNumber:Landroid/preference/PreferenceCategory;

    const v2, 0x7f080242

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 301
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenChangePin:Landroid/preference/PreferenceScreen;

    const v2, 0x7f080243

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 302
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenChangePin:Landroid/preference/PreferenceScreen;

    const v2, 0x7f080244

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 306
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 307
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 308
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCategoryLockNumber:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceCategory;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 309
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenChangePin:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 310
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLockForKDDI()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenInitPin:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 313
    :cond_2
    return-void

    .line 297
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f08026b

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 349
    const-string v0, "NFC_SETTINGS"

    const-string v1, "onPause :ON-PAUSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 351
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->srvConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 352
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 353
    const-string v0, "NFC_SETTINGS"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1239
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1

    .line 1241
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1242
    const-string v2, "com.lge.nfclock"

    const-string v3, "com.lge.nfclock.NfcLockActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1243
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1244
    const-string v1, "NFC_SETTINGS"

    const-string v2, "Calling com.lge.nfclock.NfcLockActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_0
    :goto_0
    return v0

    .line 1246
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_4

    .line 1247
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 1248
    if-nez v1, :cond_2

    .line 1249
    const-string v1, "NFC_SETTINGS"

    const-string v2, "nfcAdapter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1253
    :cond_2
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1254
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 1255
    const-string v1, "NFC_SETTINGS"

    const-string v2, "nfcAdapter.disable()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1257
    :cond_3
    const-string v2, "NFC_SETTINGS"

    const-string v3, "nfcAdapter.enable()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1259
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 1260
    const-string v1, "NFC_SETTINGS"

    const-string v2, "nfcAdapter.enableNdefPush()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1264
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    .line 1265
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 1266
    if-nez v1, :cond_5

    .line 1267
    const-string v1, "NFC_SETTINGS"

    const-string v2, "nfcAdapter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1271
    :cond_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1272
    if-nez v0, :cond_6

    .line 1273
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 1274
    const-string v0, "NFC_SETTINGS"

    const-string v1, "nfcAdapter.disableNdefPush()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1276
    :cond_6
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 1277
    const-string v0, "NFC_SETTINGS"

    const-string v1, "nfcAdapter.enableNdefPush()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 1304
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenChangePin:Landroid/preference/PreferenceScreen;

    if-ne p1, v0, :cond_1

    .line 1305
    invoke-direct {p0, v1}, Lcom/android/lgesettings/nfc/NfcSettings;->showDialog(I)V

    .line 1310
    :cond_0
    :goto_0
    return v1

    .line 1306
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenInitPin:Landroid/preference/PreferenceScreen;

    if-ne p1, v0, :cond_0

    .line 1307
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/lgesettings/nfc/NfcSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 318
    const-string v2, "NFC_SETTINGS"

    const-string v3, "onResume : ON-REASUME"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 321
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 322
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckP2P:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 323
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mCheckBeam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 326
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLockForKDDI()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenChangePin:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 328
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenInitPin:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 334
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 336
    .local v1, nfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mINfcLock:Lcom/lge/nfclock/service/INfcLock;

    .line 339
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 340
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.lge.nfclock.service.INfcLock"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/nfc/NfcSettings;->srvConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v5}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 343
    const-string v2, "NFC_SETTINGS"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void

    .line 331
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #nfcAdapter:Landroid/nfc/NfcAdapter;
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/NfcSettings;->mScreenChangePin:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method
