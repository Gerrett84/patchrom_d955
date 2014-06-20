.class public Lcom/android/lgesettings/ApnSettings;
.super Landroid/preference/PreferenceActivity;
.source "ApnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/ApnSettings$4;,
        Lcom/android/lgesettings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/lgesettings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static DEFAULTAPN_URI:Landroid/net/Uri;

.field private static PREFERAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private buf_prevkey:Ljava/lang/String;

.field csActive:Z

.field private mDomesticApn:Z

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field protected mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPrevSelectedKey:Ljava/lang/String;

.field private mRestoreApnProcessHandler:Lcom/android/lgesettings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/lgesettings/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mRoamingApn:Z

.field private mRoamingApnLte:Z

.field public mSPR_IOT_MENU:Z

.field private mSelectedKey:Ljava/lang/String;

.field private mSubscription:I

.field private mTetheredSate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 129
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 79
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 143
    iput v1, p0, Lcom/android/lgesettings/ApnSettings;->mSubscription:I

    .line 151
    iput-boolean v0, p0, Lcom/android/lgesettings/ApnSettings;->mDomesticApn:Z

    .line 152
    iput-boolean v0, p0, Lcom/android/lgesettings/ApnSettings;->mRoamingApn:Z

    .line 153
    iput-boolean v0, p0, Lcom/android/lgesettings/ApnSettings;->mRoamingApnLte:Z

    .line 156
    iput v0, p0, Lcom/android/lgesettings/ApnSettings;->mTetheredSate:I

    .line 161
    iput-boolean v1, p0, Lcom/android/lgesettings/ApnSettings;->csActive:Z

    .line 164
    iput-boolean v1, p0, Lcom/android/lgesettings/ApnSettings;->mSPR_IOT_MENU:Z

    .line 169
    new-instance v0, Lcom/android/lgesettings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/ApnSettings$1;-><init>(Lcom/android/lgesettings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1161
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/lgesettings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/android/lgesettings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    sput-boolean p0, Lcom/android/lgesettings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/ApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/lgesettings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/ApnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings;->buf_prevkey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/lgesettings/ApnSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/lgesettings/ApnSettings;->buf_prevkey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/lgesettings/ApnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mPrevSelectedKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/ApnSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/lgesettings/ApnSettings;->mTetheredSate:I

    return p1
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/lgesettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/ApnSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/lgesettings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    return-void
.end method

.method private addNewApn()V
    .locals 3

    .prologue
    .line 968
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 969
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 971
    const-string v1, "SUBSCRIPTION_ID"

    iget v2, p0, Lcom/android/lgesettings/ApnSettings;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 972
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 976
    :goto_0
    return-void

    .line 974
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private fillList()V
    .locals 38

    .prologue
    .line 364
    const/4 v5, 0x0

    .line 365
    .local v5, where:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 367
    .local v27, operator:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/provider/Telephony$Carriers;->getAutoProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 369
    .local v13, autoprofileKey:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isAutoProfileNeeded()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 371
    const-string v2, "persist.lg.data.autoprof.msim"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/ApnSettings;->mSubscription:I

    invoke-static {v2}, Lcom/android/lgesettings/lge/OverlayUtils;->getNumeric(I)Ljava/lang/String;

    move-result-object v27

    .line 374
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/ApnSettings;->mSubscription:I

    move-object/from16 v0, v27

    invoke-static {v0, v2}, Lcom/android/lgesettings/lge/OverlayUtils;->getAutoProfileKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 376
    :cond_0
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Searching profiles which numeric is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and extraid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "extraid = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 394
    :goto_0
    const-string v2, "persist.lg.data.autoprof.msim"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    const-string v2, "lg.data.autoprof.msim.nslot"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_10

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and sim_slot =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/lgesettings/ApnSettings;->mSubscription:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 407
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "defaultsetting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 409
    const-string v2, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    const-string v2, "45005"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/lgesettings/ApnSettings;->setSKTSBSMAPNSkipDisplayFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 411
    .local v33, strAttach:Ljava/lang/String;
    if-eqz v33, :cond_2

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 415
    .end local v33           #strAttach:Ljava/lang/String;
    :cond_2
    const-string v2, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 416
    const-string v2, "45006"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/lgesettings/ApnSettings;->setLGUSBSMAPNSkipDisplayFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 417
    .restart local v33       #strAttach:Ljava/lang/String;
    if-eqz v33, :cond_3

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 421
    .end local v33           #strAttach:Ljava/lang/String;
    :cond_3
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "apn"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "type"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "protocol"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    const-string v7, "user"

    aput-object v7, v4, v6

    const/4 v6, 0x6

    const-string v7, "usercreatesetting"

    aput-object v7, v4, v6

    const/4 v6, 0x7

    const-string v7, "bearer"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 435
    .local v14, cursor:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 438
    .local v19, kddiCpaExist:Z
    const-string v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceGroup;

    .line 439
    .local v12, apnList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v12}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 441
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v23, mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/ApnSettings;->mTetheredSate:I

    if-nez v2, :cond_11

    .line 444
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/lgesettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 451
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/lgesettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 452
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mDomesticApn:Z

    .line 453
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mRoamingApn:Z

    .line 455
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mRoamingApnLte:Z

    .line 456
    if-eqz v14, :cond_c

    .line 458
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 459
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 460
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 461
    .local v25, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 462
    .local v10, apn:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 463
    .local v20, key:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 466
    .local v35, type:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 470
    .local v30, protocol:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 471
    .local v36, user:Ljava/lang/String;
    const/16 v17, 0x0

    .line 473
    .local v17, isKddiCpa:Z
    const/4 v2, 0x6

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 474
    .local v37, userCreateSetting:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 476
    .local v22, mBearer:Ljava/lang/String;
    new-instance v28, Lcom/android/lgesettings/ApnPreference;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/lgesettings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 478
    .local v28, pref:Lcom/android/lgesettings/ApnPreference;
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 479
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 480
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/android/lgesettings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 482
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/ApnSettings;->mTetheredSate:I

    if-nez v2, :cond_4

    .line 483
    invoke-virtual/range {v28 .. v28}, Lcom/android/lgesettings/ApnPreference;->setUnChecked()V

    .line 485
    :cond_4
    const-string v2, "VZWADMIN"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 486
    const-string v2, "ADMINISTRATIVE PDN APN"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 505
    :cond_5
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/ApnPreference;->setPersistent(Z)V

    .line 506
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 510
    if-eqz v35, :cond_6

    const-string v2, ""

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "default"

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_6
    const/16 v31, 0x1

    .line 514
    .local v31, selectable:Z
    :goto_5
    if-eqz v31, :cond_7

    const-string v2, "net.telephony.dualstack"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 515
    const-string v2, "IPV6"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 516
    const/16 v31, 0x0

    .line 521
    :cond_7
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 522
    const-string v2, "admin"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 529
    :cond_8
    :goto_6
    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/ApnPreference;->setSelectable(Z)V

    .line 530
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/ApnSettings;->mTetheredSate:I

    if-nez v2, :cond_9

    .line 531
    invoke-virtual/range {v28 .. v28}, Lcom/android/lgesettings/ApnPreference;->setUnChecked()V

    .line 533
    :cond_9
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelectedKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "selectable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    if-eqz v31, :cond_b

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 536
    invoke-virtual/range {v28 .. v28}, Lcom/android/lgesettings/ApnPreference;->setChecked()V

    .line 538
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/ApnSettings;->mTetheredSate:I

    if-nez v2, :cond_b

    .line 539
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/ApnPreference;->setEnabled(Z)V

    .line 829
    :cond_b
    :goto_7
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 831
    .end local v10           #apn:Ljava/lang/String;
    .end local v17           #isKddiCpa:Z
    .end local v20           #key:Ljava/lang/String;
    .end local v22           #mBearer:Ljava/lang/String;
    .end local v25           #name:Ljava/lang/String;
    .end local v28           #pref:Lcom/android/lgesettings/ApnPreference;
    .end local v30           #protocol:Ljava/lang/String;
    .end local v31           #selectable:Z
    .end local v35           #type:Ljava/lang/String;
    .end local v36           #user:Ljava/lang/String;
    .end local v37           #userCreateSetting:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 833
    .local v15, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " An error occurred  on fillList : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 837
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 841
    .end local v15           #e:Ljava/lang/Exception;
    :cond_c
    :goto_8
    const-string v2, "JP"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-nez v19, :cond_d

    .line 843
    new-instance v28, Lcom/android/lgesettings/ApnPreference;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/lgesettings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 844
    .restart local v28       #pref:Lcom/android/lgesettings/ApnPreference;
    const-string v2, "apn_manual"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 845
    const v2, 0x7f080d2d

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/ApnPreference;->setTitle(I)V

    .line 846
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/ApnPreference;->setSelectable(Z)V

    .line 847
    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 851
    .end local v28           #pref:Lcom/android/lgesettings/ApnPreference;
    :cond_d
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/preference/Preference;

    .line 852
    .local v29, preference:Landroid/preference/Preference;
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_9

    .line 382
    .end local v12           #apnList:Landroid/preference/PreferenceGroup;
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #kddiCpaExist:Z
    .end local v23           #mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v29           #preference:Landroid/preference/Preference;
    :cond_e
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isMultipleNumericOperator()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, v27

    invoke-static {v0, v13}, Landroid/provider/Telephony$Carriers;->isAcceptableSIM(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 384
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Searching profiles which numeric is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and extraid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "extraid = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "usercreatesetting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 389
    :cond_f
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Searching profiles which numeric is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and extraid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOpVersionExtraID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "extraid = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOpVersionExtraID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "usercreatesetting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 402
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and sim_slot =\'1\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 446
    .restart local v12       #apnList:Landroid/preference/PreferenceGroup;
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v19       #kddiCpaExist:Z
    .restart local v23       #mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/lgesettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 487
    .restart local v10       #apn:Ljava/lang/String;
    .restart local v17       #isKddiCpa:Z
    .restart local v20       #key:Ljava/lang/String;
    .restart local v22       #mBearer:Ljava/lang/String;
    .restart local v25       #name:Ljava/lang/String;
    .restart local v28       #pref:Lcom/android/lgesettings/ApnPreference;
    .restart local v30       #protocol:Ljava/lang/String;
    .restart local v35       #type:Ljava/lang/String;
    .restart local v36       #user:Ljava/lang/String;
    .restart local v37       #userCreateSetting:Ljava/lang/String;
    :cond_12
    :try_start_2
    const-string v2, "VZWAPP"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 488
    const-string v2, "APPLICATION PDN APN"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 837
    .end local v10           #apn:Ljava/lang/String;
    .end local v17           #isKddiCpa:Z
    .end local v20           #key:Ljava/lang/String;
    .end local v22           #mBearer:Ljava/lang/String;
    .end local v25           #name:Ljava/lang/String;
    .end local v28           #pref:Lcom/android/lgesettings/ApnPreference;
    .end local v30           #protocol:Ljava/lang/String;
    .end local v35           #type:Ljava/lang/String;
    .end local v36           #user:Ljava/lang/String;
    .end local v37           #userCreateSetting:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    .line 489
    .restart local v10       #apn:Ljava/lang/String;
    .restart local v17       #isKddiCpa:Z
    .restart local v20       #key:Ljava/lang/String;
    .restart local v22       #mBearer:Ljava/lang/String;
    .restart local v25       #name:Ljava/lang/String;
    .restart local v28       #pref:Lcom/android/lgesettings/ApnPreference;
    .restart local v30       #protocol:Ljava/lang/String;
    .restart local v35       #type:Ljava/lang/String;
    .restart local v36       #user:Ljava/lang/String;
    .restart local v37       #userCreateSetting:Ljava/lang/String;
    :cond_13
    :try_start_3
    const-string v2, "VZWIMS"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 490
    const-string v2, "IMS PDN APN"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 491
    :cond_14
    const-string v2, "VZWINTERNET"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 492
    const-string v2, "INTERNET PDN APN"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 494
    :cond_15
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/android/lgesettings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 497
    :cond_16
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 499
    const-string v2, "JP"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 501
    :cond_17
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/android/lgesettings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 510
    :cond_18
    const/16 v31, 0x0

    goto/16 :goto_5

    .line 523
    .restart local v31       #selectable:Z
    :cond_19
    const-string v2, "vzwapp,mms,cbs"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 524
    const-string v2, "ims"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 525
    const-string v2, "vzw800"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 527
    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 545
    :cond_1a
    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/ApnPreference;->setSelectable(Z)V

    .line 546
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 547
    .local v34, strSimOperator:Ljava/lang/String;
    const-string v2, "true"

    const-string v3, "gsm.operator.isroaming"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 548
    .local v18, isRoaming:Z
    const/16 v21, 0x0

    .line 549
    .local v21, lockable:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .line 550
    .local v26, networkMode:I
    const/16 v32, 0x0

    .line 551
    .local v32, sktDontAdd:Z
    const/4 v9, 0x0

    .line 552
    .local v9, NETWORK_MODE_WCDMA_PREF:I
    const/16 v8, 0x9

    .line 554
    .local v8, NETWORK_MODE_LTE_GSM_WCDMA:I
    const-string v2, "ro.support_mpdn"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 555
    .local v24, mpdn_enable:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "apn_onoff_setting"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 557
    .local v11, apnEditOn:I
    const-string v2, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "45005"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 558
    if-nez v18, :cond_22

    const-string v2, "lte.sktelecom.com"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 559
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mDomesticApn:Z

    if-eqz v2, :cond_1b

    .line 560
    const/16 v21, 0x1

    .line 561
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mDomesticApn:Z

    .line 737
    :cond_1b
    :goto_a
    const-string v2, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 738
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/ApnPreference;->setLockable(Z)V

    .line 741
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/ApnSettings;->mTetheredSate:I

    if-nez v2, :cond_1d

    .line 742
    invoke-virtual/range {v28 .. v28}, Lcom/android/lgesettings/ApnPreference;->setUnChecked()V

    .line 747
    :cond_1d
    const-string v2, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 748
    if-eqz v22, :cond_1e

    const-string v2, "3"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "310120"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mSPR_IOT_MENU:Z

    if-nez v2, :cond_1e

    .line 752
    const/16 v32, 0x1

    .line 753
    const-string v2, "if unlock sim, not add the apn list"

    invoke-static {v2}, Lcom/android/lgesettings/SLog;->i(Ljava/lang/String;)V

    .line 757
    :cond_1e
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelectedKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/lgesettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "selectable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    if-eqz v31, :cond_46

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 760
    invoke-virtual/range {v28 .. v28}, Lcom/android/lgesettings/ApnPreference;->setChecked()V

    .line 762
    const-string v2, "JP"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/lgesettings/ApnSettings;->mPrevSelectedKey:Ljava/lang/String;

    .line 768
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/ApnSettings;->mTetheredSate:I

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/lgesettings/ApnSettings;->csActive:Z

    if-ne v2, v3, :cond_21

    .line 769
    :cond_20
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/ApnPreference;->setEnabled(Z)V

    .line 773
    :cond_21
    if-nez v32, :cond_b

    .line 774
    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 563
    :cond_22
    if-eqz v18, :cond_23

    const-string v2, "lte.sktelecom.com"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 564
    const/16 v32, 0x1

    goto/16 :goto_a

    .line 565
    :cond_23
    if-nez v18, :cond_24

    const-string v2, "web.sktelecom.com"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 566
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mDomesticApn:Z

    if-eqz v2, :cond_1b

    .line 567
    const/16 v21, 0x1

    .line 568
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mDomesticApn:Z

    goto/16 :goto_a

    .line 570
    :cond_24
    if-eqz v18, :cond_25

    const-string v2, "web.sktelecom.com"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 571
    const/16 v32, 0x1

    goto/16 :goto_a

    .line 572
    :cond_25
    if-eqz v18, :cond_29

    const-string v2, "roaming.sktelecom.com"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 573
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mDomesticApn:Z

    if-eqz v2, :cond_26

    .line 574
    const/16 v21, 0x1

    .line 575
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mDomesticApn:Z

    .line 578
    :cond_26
    const/16 v2, 0x9

    move/from16 v0, v26

    if-ne v2, v0, :cond_27

    .line 579
    const/16 v32, 0x1

    .line 581
    :cond_27
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "batman"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "d1lsk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "cayman"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "i_skt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 583
    :cond_28
    const/16 v32, 0x0

    goto/16 :goto_a

    .line 585
    :cond_29
    if-nez v18, :cond_2a

    const-string v2, "roaming.sktelecom.com"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 586
    const/16 v32, 0x1

    goto/16 :goto_a

    .line 587
    :cond_2a
    if-eqz v18, :cond_2e

    const-string v2, "lte-roaming.sktelecom.com"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 588
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mRoamingApn:Z

    if-eqz v2, :cond_2b

    .line 589
    const/16 v21, 0x1

    .line 590
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mRoamingApn:Z

    .line 593
    :cond_2b
    if-nez v26, :cond_2c

    .line 594
    const/16 v32, 0x1

    .line 596
    :cond_2c
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "batman"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "d1lsk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "cayman"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "i_skt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 598
    :cond_2d
    const/16 v32, 0x1

    goto/16 :goto_a

    .line 600
    :cond_2e
    if-nez v18, :cond_2f

    const-string v2, "lte-roaming.sktelecom.com"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 601
    const/16 v32, 0x1

    goto/16 :goto_a

    .line 602
    :cond_2f
    const/4 v2, 0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_1b

    const-string v2, "ims"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 604
    const/16 v32, 0x1

    .line 605
    const/16 v31, 0x1

    goto/16 :goto_a

    .line 607
    :cond_30
    const-string v2, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v2, "45008"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 611
    const-string v2, "lte150.ktfwing.com"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "alwayson-r6.ktfwing.com"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "ims.ktfwing.com"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 616
    :cond_31
    if-nez v18, :cond_35

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mDomesticApn:Z

    if-eqz v2, :cond_35

    .line 617
    if-eqz v24, :cond_33

    if-eqz v35, :cond_32

    const-string v2, ""

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 618
    :cond_32
    const/16 v32, 0x1

    .line 625
    :cond_33
    :goto_b
    const/16 v21, 0x1

    .line 628
    const/4 v2, 0x1

    if-eq v11, v2, :cond_34

    const-string v2, "1"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 629
    :cond_34
    const/16 v21, 0x0

    goto/16 :goto_a

    .line 620
    :cond_35
    if-eqz v18, :cond_33

    .line 621
    if-eqz v24, :cond_33

    if-eqz v35, :cond_33

    const-string v2, ""

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 622
    const/16 v32, 0x1

    goto :goto_b

    .line 633
    :cond_36
    const-string v2, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 634
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    if-eqz v18, :cond_3c

    .line 637
    const-string v2, "wroaming.lguplus.co.kr"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 638
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mRoamingApn:Z

    if-eqz v2, :cond_37

    .line 639
    const/16 v21, 0x1

    .line 640
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mRoamingApn:Z

    .line 642
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/ApnPreference;->setLockable(Z)V

    .line 703
    :cond_37
    :goto_c
    const-string v2, "LG uplus Admin"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "LG uplus Emergency"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 704
    :cond_38
    const/16 v31, 0x1

    .line 705
    const/16 v32, 0x1

    goto/16 :goto_a

    .line 644
    :cond_39
    const-string v2, "lte-roaming.lguplus.co.kr"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 645
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mRoamingApnLte:Z

    if-eqz v2, :cond_37

    .line 646
    const/16 v21, 0x1

    .line 647
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mRoamingApnLte:Z

    .line 649
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/ApnPreference;->setLockable(Z)V

    goto :goto_c

    .line 651
    :cond_3a
    const-string v2, "sinternet.lguplus.co.kr"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 652
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mDomesticApn:Z

    if-eqz v2, :cond_3b

    .line 653
    const/16 v21, 0x1

    .line 654
    const/16 v31, 0x0

    .line 656
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mDomesticApn:Z

    .line 663
    :goto_d
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/ApnPreference;->setLockable(Z)V

    .line 664
    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/ApnPreference;->setSelectable(Z)V

    goto :goto_c

    .line 659
    :cond_3b
    const/16 v21, 0x0

    .line 660
    const/16 v31, 0x1

    goto :goto_d

    .line 667
    :cond_3c
    const-string v2, "sinternet.lguplus.co.kr"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 668
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mDomesticApn:Z

    if-eqz v2, :cond_37

    .line 669
    const/16 v21, 0x1

    .line 670
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mDomesticApn:Z

    .line 672
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/ApnPreference;->setLockable(Z)V

    goto :goto_c

    .line 674
    :cond_3d
    const-string v2, "wroaming.lguplus.co.kr"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 675
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mRoamingApn:Z

    if-eqz v2, :cond_3e

    .line 676
    const/16 v21, 0x1

    .line 677
    const/16 v31, 0x0

    .line 679
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mRoamingApn:Z

    .line 685
    :goto_e
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/ApnPreference;->setLockable(Z)V

    .line 686
    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/ApnPreference;->setSelectable(Z)V

    goto/16 :goto_c

    .line 681
    :cond_3e
    const/16 v21, 0x0

    .line 682
    const/16 v31, 0x1

    goto :goto_e

    .line 687
    :cond_3f
    const-string v2, "lte-roaming.lguplus.co.kr"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 688
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mRoamingApnLte:Z

    if-eqz v2, :cond_40

    .line 689
    const/16 v21, 0x1

    .line 690
    const/16 v31, 0x0

    .line 692
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mRoamingApnLte:Z

    .line 698
    :goto_f
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/ApnPreference;->setLockable(Z)V

    .line 699
    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/ApnPreference;->setSelectable(Z)V

    goto/16 :goto_c

    .line 694
    :cond_40
    const/16 v21, 0x0

    .line 695
    const/16 v31, 0x1

    goto :goto_f

    .line 709
    :cond_41
    const-string v2, "JP"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 711
    const-string v2, "LGCPA_"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 712
    const/16 v21, 0x0

    .line 713
    const/16 v19, 0x1

    .line 715
    :cond_42
    const-string v2, "unik.au-net.ne.jp"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "uno.au-net.ne.jp"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "unitrg.au-net.ne.jp"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "au.au-net.ne.jp"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "autrg.au-net.ne.jp"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 721
    :cond_43
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080d2d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_45

    .line 724
    const/16 v19, 0x1

    .line 725
    const/16 v21, 0x0

    .line 730
    :cond_44
    :goto_10
    const/4 v2, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/ApnSettings;->supportRestoreMenu()Z

    move-result v3

    if-ne v2, v3, :cond_1b

    .line 731
    const/16 v19, 0x1

    goto/16 :goto_a

    .line 727
    :cond_45
    const/16 v21, 0x1

    goto :goto_10

    .line 778
    :cond_46
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/ApnSettings;->mTetheredSate:I

    if-eqz v2, :cond_47

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/lgesettings/ApnSettings;->csActive:Z

    if-ne v2, v3, :cond_48

    .line 779
    :cond_47
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/ApnPreference;->setEnabled(Z)V

    .line 785
    :cond_48
    const-string v2, "ATT"

    const-string v3, "ro.build.target_operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 787
    if-eqz v35, :cond_b

    const-string v2, "entitlement"

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 789
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 793
    :cond_49
    const-string v2, "JP"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string v2, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/lgesettings/ApnSettings;->mPrevSelectedKey:Ljava/lang/String;

    goto/16 :goto_7

    .line 801
    :cond_4a
    const-string v2, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 802
    if-nez v32, :cond_b

    .line 803
    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 808
    :cond_4b
    const-string v2, "TMO"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string v2, "US"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 810
    if-eqz v35, :cond_b

    const-string v2, "dun"

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 811
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 815
    :cond_4c
    const-string v2, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string v2, "310120"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/ApnSettings;->mSPR_IOT_MENU:Z

    if-nez v2, :cond_4d

    .line 819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPR :: mBeaer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/SLog;->i(Ljava/lang/String;)V

    .line 820
    if-eqz v22, :cond_b

    const/4 v2, 0x1

    const-string v3, "3"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_b

    .line 821
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 825
    :cond_4d
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_7

    .line 837
    .end local v8           #NETWORK_MODE_LTE_GSM_WCDMA:I
    .end local v9           #NETWORK_MODE_WCDMA_PREF:I
    .end local v10           #apn:Ljava/lang/String;
    .end local v11           #apnEditOn:I
    .end local v17           #isKddiCpa:Z
    .end local v18           #isRoaming:Z
    .end local v20           #key:Ljava/lang/String;
    .end local v21           #lockable:Z
    .end local v22           #mBearer:Ljava/lang/String;
    .end local v24           #mpdn_enable:Z
    .end local v25           #name:Ljava/lang/String;
    .end local v26           #networkMode:I
    .end local v28           #pref:Lcom/android/lgesettings/ApnPreference;
    .end local v30           #protocol:Ljava/lang/String;
    .end local v31           #selectable:Z
    .end local v32           #sktDontAdd:Z
    .end local v34           #strSimOperator:Ljava/lang/String;
    .end local v35           #type:Ljava/lang/String;
    .end local v36           #user:Ljava/lang/String;
    .end local v37           #userCreateSetting:Ljava/lang/String;
    :cond_4e
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    .line 854
    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_4f
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .parameter

    .prologue
    .line 233
    const-string v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 237
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1032
    .line 1034
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1037
    if-eqz v1, :cond_1

    .line 1039
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1040
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1041
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1049
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1053
    :cond_1
    :goto_0
    return-object v3

    .line 1043
    :catch_0
    move-exception v0

    .line 1045
    :try_start_1
    const-string v2, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " An error occurred  on getSelectedApnKey : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1105
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/ApnSettings;->showDialog(I)V

    .line 1106
    sput-boolean v3, Lcom/android/lgesettings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 1108
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/lgesettings/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 1109
    new-instance v0, Lcom/android/lgesettings/ApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/lgesettings/ApnSettings;Lcom/android/lgesettings/ApnSettings$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/lgesettings/ApnSettings$RestoreApnUiHandler;

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/lgesettings/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 1126
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 1128
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1129
    new-instance v0, Lcom/android/lgesettings/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/lgesettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/lgesettings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/lgesettings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/lgesettings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/lgesettings/ApnSettings$RestoreApnProcessHandler;

    .line 1134
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/lgesettings/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_3

    .line 1135
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/lgesettings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 1137
    :cond_3
    return v3
.end method

.method private setLGUSBSMAPNSkipDisplayFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 1261
    const/4 v0, 0x0

    .line 1263
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1264
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ApnSettings] fillList strSimOperator :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1267
    const-string v0, " AND apn !=\"ims.lguplus.co.kr\""

    .line 1268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND apn !=\"stethering.lguplus.co.kr\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND apn !=\"imsv6.lguplus.co.kr\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1272
    :cond_0
    return-object v0
.end method

.method private setSKTSBSMAPNSkipDisplayFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 1236
    const/4 v0, 0x0

    .line 1238
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1239
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ApnSettings] fillList strSimOperator :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1242
    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1243
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ApnSettings] fillList isRoaming :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    if-eqz v0, :cond_1

    .line 1248
    const-string v0, " AND apn !=\"lte.sktelecom.com\""

    .line 1249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND apn !=\"web.sktelecom.com\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1258
    :cond_0
    :goto_0
    return-object v0

    .line 1252
    :cond_1
    const-string v0, " AND apn !=\"roaming.sktelecom.com\""

    goto :goto_0
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1023
    iput-object p1, p0, Lcom/android/lgesettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 1024
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1026
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1027
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/lgesettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    sget-object v2, Lcom/android/lgesettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1029
    return-void
.end method

.method private supportRestoreMenu()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1058
    .line 1059
    const-string v0, "US"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TMO"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1063
    :cond_1
    const-string v3, "usercreatesetting <> \'0\'"

    .line 1065
    const-string v0, "persist.lg.data.autoprof.msim"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1066
    const-string v0, "lg.data.autoprof.msim.nslot"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v6, :cond_4

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and sim_slot = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/lgesettings/ApnSettings;->mSubscription:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1073
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v5, "usercreatesetting"

    aput-object v5, v2, v7

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1075
    if-eqz v1, :cond_3

    .line 1077
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_5

    move v0, v6

    .line 1088
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v7, v0

    .line 1099
    :cond_3
    :goto_2
    return v7

    .line 1069
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and sim_slot =\'1\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    move v0, v7

    .line 1080
    goto :goto_1

    .line 1082
    :catch_0
    move-exception v0

    .line 1084
    :try_start_1
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " An error occurred  on getUserCreateSetting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1088
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1091
    :cond_6
    const-string v0, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/lgesettings/ApnSettings;->mSPR_IOT_MENU:Z

    if-nez v0, :cond_7

    .line 1095
    const-string v0, "sprint :: skip reset to default."

    invoke-static {v0}, Lcom/android/lgesettings/SLog;->i(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move v7, v6

    .line 1097
    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1277
    packed-switch p2, :pswitch_data_0

    .line 1287
    :goto_0
    return-void

    .line 1279
    :pswitch_0
    invoke-direct {p0}, Lcom/android/lgesettings/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 1282
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 1277
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 244
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 246
    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/ApnSettings;->addPreferencesFromResource(I)V

    .line 247
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SUBSCRIPTION_ID"

    invoke-static {}, Lcom/android/lgesettings/lge/OverlayUtils;->getDefaultSubscription()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/ApnSettings;->mSubscription:I

    .line 252
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate received sub :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/lgesettings/ApnSettings;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 254
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 258
    :cond_0
    const-string v1, "persist.lg.data.autoprof.msim"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    const-string v1, "content://telephony/carriers/restore"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/lgesettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 261
    const-string v1, "content://telephony/carriers/preferapn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/lgesettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    .line 262
    iget v1, p0, Lcom/android/lgesettings/ApnSettings;->mSubscription:I

    if-ne v1, v4, :cond_1

    .line 264
    const-string v1, "content://telephony/carriers/restore_2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/lgesettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 265
    const-string v1, "content://telephony/carriers/preferapn_2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/lgesettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    .line 270
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/lgesettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 272
    iget-object v1, p0, Lcom/android/lgesettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v1, "JP"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    iget-object v1, p0, Lcom/android/lgesettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "lge.intent.action.DATA_CPA_CONNECT_FAIL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    :cond_2
    new-instance v1, Lcom/android/lgesettings/ApnSettings$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/ApnSettings$2;-><init>(Lcom/android/lgesettings/ApnSettings;)V

    iput-object v1, p0, Lcom/android/lgesettings/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 298
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/lgesettings/ApnSettings;->mPhone:Landroid/telephony/TelephonyManager;

    .line 300
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const v1, 0x1010355

    .line 1186
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 1187
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1188
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1189
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1226
    :goto_0
    return-object v0

    .line 1193
    :cond_0
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_1

    .line 1194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1196
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0812df

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080d24

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080015

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080016

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1207
    :cond_1
    const/16 v0, 0x44c

    if-ne p1, v0, :cond_2

    .line 1208
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1210
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0804ae

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080a69

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/lgesettings/ApnSettings$3;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/ApnSettings$3;-><init>(Lcom/android/lgesettings/ApnSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1222
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1226
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 346
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 348
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 353
    :cond_0
    const-string v0, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    const-string v0, "sys.iothidden"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v0, "onDestroy :: sys.iothidden = 0"

    invoke-static {v0}, Lcom/android/lgesettings/SLog;->i(Ljava/lang/String;)V

    .line 358
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 928
    sget-boolean v1, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v1, :cond_0

    .line 929
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "apn_locked"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 963
    :goto_0
    return v0

    .line 936
    :cond_0
    iget v1, p0, Lcom/android/lgesettings/ApnSettings;->mTetheredSate:I

    if-ne v1, v0, :cond_1

    .line 938
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 959
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_5

    .line 960
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnSettings;->finish()V

    goto :goto_0

    .line 940
    :pswitch_0
    invoke-direct {p0}, Lcom/android/lgesettings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 945
    :pswitch_1
    const-string v1, "US"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "TMO"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 947
    :cond_3
    const/16 v1, 0x3ea

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 949
    :cond_4
    invoke-direct {p0}, Lcom/android/lgesettings/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 963
    :cond_5
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 938
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 333
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 336
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/lgesettings/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-static {v0, v1}, Lcom/android/lgesettings/Utils;->release_TelephonyListener(Landroid/telephony/TelephonyManager;Landroid/telephony/PhoneStateListener;)V

    .line 339
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/ApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 340
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1012
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1016
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/lgesettings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 1019
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 981
    sget-boolean v0, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v0, :cond_1

    .line 982
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "apn_locked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return v4

    .line 989
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apn_manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 990
    invoke-direct {p0}, Lcom/android/lgesettings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 994
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 995
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 997
    const-string v1, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 998
    check-cast p2, Lcom/android/lgesettings/ApnPreference;

    invoke-virtual {p2}, Lcom/android/lgesettings/ApnPreference;->getLockable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 999
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1002
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1231
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 1232
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1234
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0804ab

    const v7, 0x1080033

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 875
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 878
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 879
    const-string v1, "ro.support_mpdn"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 881
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "apn_onoff_setting"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strSimOperator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/SLog;->i(Ljava/lang/String;)V

    .line 884
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 885
    iget v3, p0, Lcom/android/lgesettings/ApnSettings;->mTetheredSate:I

    if-ne v3, v6, :cond_0

    .line 888
    const-string v3, "JP"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 913
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/ApnSettings;->supportRestoreMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/lgesettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0804b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v0, v5, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 922
    :cond_0
    return v6

    .line 890
    :cond_1
    const-string v3, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "45006"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v6, :cond_2

    if-nez v2, :cond_2

    .line 893
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v6, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 897
    :cond_2
    const-string v1, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "310120"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v6, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/lgesettings/ApnSettings;->mSPR_IOT_MENU:Z

    if-nez v0, :cond_3

    .line 902
    const-string v0, "if unlock local sim, skip the new apn menu."

    invoke-static {v0}, Lcom/android/lgesettings/SLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 907
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v6, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 304
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 306
    const-string v0, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "1"

    const-string v1, "sys.iothidden"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/ApnSettings;->mSPR_IOT_MENU:Z

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSPR_IOT_MENU = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/lgesettings/ApnSettings;->mSPR_IOT_MENU:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/SLog;->i(Ljava/lang/String;)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/lgesettings/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-static {v0, v1}, Lcom/android/lgesettings/Utils;->set_TelephonyListener(Landroid/telephony/TelephonyManager;Landroid/telephony/PhoneStateListener;)V

    .line 315
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/lgesettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/ApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 317
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/ApnSettings;->csActive:Z

    .line 324
    :goto_0
    sget-boolean v0, Lcom/android/lgesettings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_2

    .line 325
    invoke-direct {p0}, Lcom/android/lgesettings/ApnSettings;->fillList()V

    .line 329
    :goto_1
    return-void

    .line 321
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/ApnSettings;->csActive:Z

    goto :goto_0

    .line 327
    :cond_2
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/ApnSettings;->showDialog(I)V

    goto :goto_1
.end method
