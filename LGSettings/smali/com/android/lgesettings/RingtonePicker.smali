.class public Lcom/android/lgesettings/RingtonePicker;
.super Landroid/app/ListFragment;
.source "RingtonePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private static mIsSatotakuRingtoneModel:Z


# instance fields
.field LAUNCHED_REQUEST_CODE:I

.field private final RIGHTS_EXPIRED:I

.field private final RIGHTS_INVALID:I

.field private final RIGHTS_NOT_ACQUIRED:I

.field private final RIGHTS_VALID:I

.field default_ringtone_position:I

.field external_ringtone_position:I

.field internal_ringtone_position:I

.field isDualSim:Z

.field isTripleSim:Z

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/RingtoneItem;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private mAudio:Landroid/media/MediaPlayer;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBuild:Landroid/os/Build;

.field mCancelButton:Landroid/widget/Button;

.field private mClickedPos:I

.field mContext:Landroid/content/Context;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mDevice:Ljava/lang/String;

.field private mDrmJob:Z

.field private mDrmRingtone:Z

.field private mDrmTask:Ljava/lang/Runnable;

.field private mExistingUri:Landroid/net/Uri;

.field private mExternalCursor:Landroid/database/Cursor;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mInternalCursor:Landroid/database/Cursor;

.field private mInternalSatoTakuCursor:Landroid/database/Cursor;

.field mOKButton:Landroid/widget/Button;

.field private mOperator:Ljava/lang/String;

.field mParentType:I

.field mRemovePos:I

.field mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

.field mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSampleRingtoneUri:Landroid/net/Uri;

.field private mSelected:Z

.field private mSilentPos:I

.field private mStaticItemCount:I

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUriForDefaultItem:Landroid/net/Uri;

.field position_uri:Landroid/net/Uri;

.field private strTargetOperator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "l1_dcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/RingtonePicker;->mIsSatotakuRingtoneModel:Z

    .line 154
    const/4 v0, 0x0

    sput-object v0, Lcom/android/lgesettings/RingtonePicker;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 121
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 142
    iput v1, p0, Lcom/android/lgesettings/RingtonePicker;->mRemovePos:I

    .line 146
    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mBuild:Landroid/os/Build;

    .line 148
    const-string v0, "l_dcm"

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mDevice:Ljava/lang/String;

    .line 149
    const-string v0, "DCM"

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mOperator:Ljava/lang/String;

    .line 150
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->strTargetOperator:Ljava/lang/String;

    .line 156
    iput v2, p0, Lcom/android/lgesettings/RingtonePicker;->RIGHTS_VALID:I

    .line 157
    iput v3, p0, Lcom/android/lgesettings/RingtonePicker;->RIGHTS_INVALID:I

    .line 158
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/lgesettings/RingtonePicker;->RIGHTS_EXPIRED:I

    .line 159
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/lgesettings/RingtonePicker;->RIGHTS_NOT_ACQUIRED:I

    .line 161
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/lgesettings/RingtonePicker;->LAUNCHED_REQUEST_CODE:I

    .line 165
    iput-object v4, p0, Lcom/android/lgesettings/RingtonePicker;->mSampleRingtoneUri:Landroid/net/Uri;

    .line 178
    iput-boolean v2, p0, Lcom/android/lgesettings/RingtonePicker;->mSelected:Z

    .line 179
    iput-boolean v3, p0, Lcom/android/lgesettings/RingtonePicker;->mDrmRingtone:Z

    .line 180
    iput-boolean v2, p0, Lcom/android/lgesettings/RingtonePicker;->mDrmJob:Z

    .line 181
    new-instance v0, Lcom/android/lgesettings/RingtonePicker$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/RingtonePicker$1;-><init>(Lcom/android/lgesettings/RingtonePicker;)V

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mDrmTask:Ljava/lang/Runnable;

    .line 202
    iput v1, p0, Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I

    .line 205
    iput v1, p0, Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtonePos:I

    .line 208
    iput v1, p0, Lcom/android/lgesettings/RingtonePicker;->mSilentPos:I

    .line 214
    iput v1, p0, Lcom/android/lgesettings/RingtonePicker;->mSampleRingtonePos:I

    .line 218
    iput v1, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    .line 226
    iput-object v4, p0, Lcom/android/lgesettings/RingtonePicker;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 1170
    new-instance v0, Lcom/android/lgesettings/RingtonePicker$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/RingtonePicker$4;-><init>(Lcom/android/lgesettings/RingtonePicker;)V

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/RingtonePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/lgesettings/RingtonePicker;->stopAnyPlayingRingtone()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/lgesettings/RingtonePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/lgesettings/RingtonePicker;->mDrmJob:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/lgesettings/RingtonePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/lgesettings/RingtonePicker;->mDrmRingtone:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/lgesettings/RingtonePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/lgesettings/RingtonePicker;->mDrmRingtone:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/lgesettings/RingtonePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/RingtonePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtonePos:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/RingtonePicker;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/RingtonePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/lgesettings/RingtonePicker;->mSilentPos:I

    return v0
.end method

.method private confirmDialog()V
    .locals 3

    .prologue
    .line 1058
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080bfa

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/RingtonePicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08059d

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/RingtonePicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/RingtonePicker$3;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/RingtonePicker$3;-><init>(Lcom/android/lgesettings/RingtonePicker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08059e

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/RingtonePicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/RingtonePicker$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/RingtonePicker$2;-><init>(Lcom/android/lgesettings/RingtonePicker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080cbb

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/RingtonePicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1082
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1083
    return-void
.end method

.method private do_InitCancelOkBtn(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1377
    const v0, 0x7f0a006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mCancelButton:Landroid/widget/Button;

    .line 1378
    const v0, 0x7f0a004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mOKButton:Landroid/widget/Button;

    .line 1381
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mOperator:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/lgesettings/RingtonePicker;->strTargetOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/lgesettings/RingtonePicker$6;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/RingtonePicker$6;-><init>(Lcom/android/lgesettings/RingtonePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1395
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mOKButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/lgesettings/RingtonePicker$7;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/RingtonePicker$7;-><init>(Lcom/android/lgesettings/RingtonePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1472
    return-void
.end method

.method private do_InitDefalutSetting()V
    .locals 4

    .prologue
    const/16 v2, 0x10

    const/4 v3, 0x1

    .line 1475
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1477
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1478
    if-eqz v0, :cond_0

    .line 1479
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1480
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1486
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mHandler:Landroid/os/Handler;

    .line 1487
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1488
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mAudioManager:Landroid/media/AudioManager;

    .line 1489
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_1

    .line 1490
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "storage"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 1491
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 1493
    :cond_1
    const-string v0, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1495
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    invoke-virtual {v2, v0}, Lcom/android/lgesettings/RingtonePickerInfo;->setIncludeDrm(Z)V

    .line 1497
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    .line 1499
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v0, :cond_2

    .line 1500
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    .line 1502
    :cond_2
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 1504
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mExistingUri:Landroid/net/Uri;

    .line 1506
    const-string v0, "RingtonePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExistingUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    return-void
.end method

.method private do_InitSIMDependancyMenu()V
    .locals 3

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1350
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/lgesettings/RingtonePicker;->isDualSim:Z

    .line 1351
    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/lgesettings/RingtonePicker;->isTripleSim:Z

    .line 1352
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1353
    invoke-direct {p0}, Lcom/android/lgesettings/RingtonePicker;->do_InitTitleName()V

    .line 1356
    :cond_0
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    const/16 v2, 0x80

    if-ne v1, v2, :cond_3

    .line 1360
    :cond_1
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/RingtonePicker;->mHasSilentItem:Z

    .line 1367
    :goto_0
    iget v0, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1369
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v1, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 1370
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/RingtonePickerInfo;->setFilterColumnsList()V

    .line 1373
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 1374
    return-void

    .line 1364
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/RingtonePicker;->mHasSilentItem:Z

    goto :goto_0
.end method

.method private do_InitTitleName()V
    .locals 5

    .prologue
    const v4, 0x7f020346

    const/4 v3, 0x1

    const v2, 0x7f02034a

    .line 1303
    iget v0, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    if-ne v0, v3, :cond_0

    .line 1304
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 1305
    iget-boolean v0, p0, Lcom/android/lgesettings/RingtonePicker;->isDualSim:Z

    if-ne v3, v0, :cond_7

    .line 1306
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f08036d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1312
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1313
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setIcon(I)V

    .line 1314
    iget-boolean v0, p0, Lcom/android/lgesettings/RingtonePicker;->isDualSim:Z

    if-ne v3, v0, :cond_8

    .line 1315
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f080370

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1325
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1326
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 1327
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f08036e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1329
    :cond_2
    iget v0, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 1330
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setIcon(I)V

    .line 1331
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f080371

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1333
    :cond_3
    iget v0, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_4

    .line 1334
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 1335
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f08036f

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1337
    :cond_4
    iget v0, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_5

    .line 1338
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setIcon(I)V

    .line 1339
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f080372

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1341
    :cond_5
    iget v0, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    .line 1342
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 1343
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f080c5d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1345
    :cond_6
    return-void

    .line 1309
    :cond_7
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f080341

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    .line 1318
    :cond_8
    const-string v0, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1319
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f080f6e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    .line 1321
    :cond_9
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f080b06

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1
.end method

.method private getListPosition(I)I
    .locals 1
    .parameter "ringtoneManagerPos"

    .prologue
    .line 277
    if-gez p1, :cond_0

    .line 281
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget v0, p0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private initRingtoneList()V
    .locals 17

    .prologue
    .line 368
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;

    .line 370
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    .line 372
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/lgesettings/RingtonePickerInfo;->getCursor(I)Landroid/database/Cursor;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    .line 373
    sget-boolean v11, Lcom/android/lgesettings/RingtonePicker;->mIsSatotakuRingtoneModel:Z

    if-eqz v11, :cond_0

    .line 374
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Lcom/android/lgesettings/RingtonePickerInfo;->getCursor(I)Landroid/database/Cursor;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    .line 377
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/android/lgesettings/RingtonePickerInfo;->getCursor(I)Landroid/database/Cursor;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    .line 379
    const-string v5, ""

    .line 380
    .local v5, my_ring_category:Ljava/lang/String;
    const-string v4, ""

    .line 381
    .local v4, lg_ring_category:Ljava/lang/String;
    const-string v10, ""

    .line 382
    .local v10, ts_ring_category:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/16 v12, 0x40

    if-eq v11, v12, :cond_1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/16 v12, 0x20

    if-ne v11, v12, :cond_3

    .line 386
    :cond_1
    const v11, 0x7f080b33

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/lgesettings/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 387
    const v11, 0x7f080b34

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/lgesettings/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 388
    sget-boolean v11, Lcom/android/lgesettings/RingtonePicker;->mIsSatotakuRingtoneModel:Z

    if-eqz v11, :cond_2

    .line 389
    const v11, 0x7f080dc6

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/lgesettings/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 401
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    if-eqz v11, :cond_5

    .line 402
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_5

    .line 403
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 404
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneSectionItem;

    invoke-direct {v12, v5}, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneSectionItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    .line 409
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-ge v2, v11, :cond_5

    .line 410
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    const/16 v16, 0x2

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 409
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 393
    .end local v2           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/16 v12, 0x10

    if-eq v11, v12, :cond_4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/16 v12, 0x80

    if-ne v11, v12, :cond_2

    .line 396
    :cond_4
    const v11, 0x7f080b35

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/lgesettings/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 397
    const v11, 0x7f080b36

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/lgesettings/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 418
    :cond_5
    sget-boolean v11, Lcom/android/lgesettings/RingtonePicker;->mIsSatotakuRingtoneModel:Z

    if-eqz v11, :cond_d

    .line 419
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    .line 420
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneSectionItem;

    invoke-direct {v12, v10}, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneSectionItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    .line 424
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/lgesettings/RingtonePicker;->mHasDefaultItem:Z

    if-eqz v11, :cond_6

    .line 425
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtonePos:I

    .line 427
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mExistingUri:Landroid/net/Uri;

    invoke-static {v11}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 428
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtonePos:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I

    .line 432
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/lgesettings/RingtonePicker;->mHasSilentItem:Z

    if-eqz v11, :cond_7

    .line 433
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/lgesettings/RingtonePicker;->mSilentPos:I

    .line 436
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mExistingUri:Landroid/net/Uri;

    if-nez v11, :cond_7

    .line 437
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mSilentPos:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I

    .line 441
    :cond_7
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_8

    .line 442
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/RingtonePicker;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/lgesettings/RingtonePicker;->getListPosition(I)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I

    .line 446
    :cond_8
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_a

    .line 447
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    if-eqz v11, :cond_a

    .line 448
    const/4 v8, -0x1

    .line 449
    .local v8, nIdexDefaultRingtone:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 450
    .local v7, nCount:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    const-string v12, "_display_name"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 452
    .local v6, nColumeIndex:I
    const/4 v11, -0x1

    if-eq v6, v11, :cond_c

    .line 453
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 455
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    invoke-virtual {v11}, Lcom/android/lgesettings/RingtonePickerInfo;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, defaultPath:Ljava/lang/String;
    const-string v11, "RingtonePicker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "defaultPath = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mHasSilentItem = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/lgesettings/RingtonePicker;->mHasSilentItem:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v3, 0x0

    .local v3, index:I
    :goto_2
    if-ge v3, v7, :cond_9

    .line 459
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 460
    .local v9, pathName:Ljava/lang/String;
    const-string v11, "RingtonePicker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pathName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 462
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/lgesettings/RingtonePicker;->getListPosition(I)I

    move-result v8

    .line 467
    .end local v9           #pathName:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I

    .line 473
    .end local v1           #defaultPath:Ljava/lang/String;
    .end local v3           #index:I
    .end local v6           #nColumeIndex:I
    .end local v7           #nCount:I
    .end local v8           #nIdexDefaultRingtone:I
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    if-eqz v11, :cond_d

    .line 474
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 475
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-ge v2, v11, :cond_d

    .line 476
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    const/16 v16, 0x2

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 465
    .end local v2           #i:I
    .restart local v1       #defaultPath:Ljava/lang/String;
    .restart local v3       #index:I
    .restart local v6       #nColumeIndex:I
    .restart local v7       #nCount:I
    .restart local v8       #nIdexDefaultRingtone:I
    .restart local v9       #pathName:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 458
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 469
    .end local v1           #defaultPath:Ljava/lang/String;
    .end local v3           #index:I
    .end local v9           #pathName:Ljava/lang/String;
    :cond_c
    const-string v11, "RingtonePicker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onPrepareListView() MediaStore.Audio.Media.DISPLAY_NAME colume is error!!! nColumeIndex "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 484
    .end local v6           #nColumeIndex:I
    .end local v7           #nCount:I
    .end local v8           #nIdexDefaultRingtone:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_e

    .line 485
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneSectionItem;

    invoke-direct {v12, v4}, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneSectionItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    .line 492
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/lgesettings/RingtonePicker;->mHasDefaultItem:Z

    if-eqz v11, :cond_f

    .line 493
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtonePos:I

    .line 495
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mExistingUri:Landroid/net/Uri;

    invoke-static {v11}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 496
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtonePos:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I

    .line 500
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/lgesettings/RingtonePicker;->mHasSilentItem:Z

    if-eqz v11, :cond_10

    .line 501
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/lgesettings/RingtonePicker;->mSilentPos:I

    .line 502
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;

    const v13, 0x7f080dc2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/lgesettings/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    .line 504
    const-string v11, "RingtonePicker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mHasSilentItem staticcount = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mExistingUri:Landroid/net/Uri;

    if-nez v11, :cond_10

    .line 507
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mSilentPos:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I

    .line 511
    :cond_10
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_11

    .line 512
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/RingtonePicker;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/lgesettings/RingtonePicker;->getListPosition(I)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I

    .line 516
    :cond_11
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_13

    .line 517
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    if-eqz v11, :cond_13

    .line 518
    const/4 v8, -0x1

    .line 519
    .restart local v8       #nIdexDefaultRingtone:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 520
    .restart local v7       #nCount:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    const-string v12, "_display_name"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 522
    .restart local v6       #nColumeIndex:I
    const/4 v11, -0x1

    if-eq v6, v11, :cond_15

    .line 523
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 525
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    invoke-virtual {v11}, Lcom/android/lgesettings/RingtonePickerInfo;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    .line 526
    .restart local v1       #defaultPath:Ljava/lang/String;
    const-string v11, "RingtonePicker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "defaultPath = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mHasSilentItem = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/lgesettings/RingtonePicker;->mHasSilentItem:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v3, 0x0

    .restart local v3       #index:I
    :goto_5
    if-ge v3, v7, :cond_12

    .line 529
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 530
    .restart local v9       #pathName:Ljava/lang/String;
    const-string v11, "RingtonePicker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pathName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 532
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/lgesettings/RingtonePicker;->getListPosition(I)I

    move-result v8

    .line 537
    .end local v9           #pathName:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I

    .line 544
    .end local v1           #defaultPath:Ljava/lang/String;
    .end local v3           #index:I
    .end local v6           #nColumeIndex:I
    .end local v7           #nCount:I
    .end local v8           #nIdexDefaultRingtone:I
    :cond_13
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    if-eqz v11, :cond_16

    .line 545
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 546
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-ge v2, v11, :cond_16

    .line 547
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    const/16 v16, 0x2

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 546
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 535
    .end local v2           #i:I
    .restart local v1       #defaultPath:Ljava/lang/String;
    .restart local v3       #index:I
    .restart local v6       #nColumeIndex:I
    .restart local v7       #nCount:I
    .restart local v8       #nIdexDefaultRingtone:I
    .restart local v9       #pathName:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 528
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 539
    .end local v1           #defaultPath:Ljava/lang/String;
    .end local v3           #index:I
    .end local v9           #pathName:Ljava/lang/String;
    :cond_15
    const-string v11, "RingtonePicker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onPrepareListView() MediaStore.Audio.Media.DISPLAY_NAME colume is error!!! nColumeIndex "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 553
    .end local v6           #nColumeIndex:I
    .end local v7           #nCount:I
    .end local v8           #nIdexDefaultRingtone:I
    :cond_16
    return-void
.end method

.method private initRingtoneUI()V
    .locals 4

    .prologue
    .line 557
    new-instance v0, Lcom/android/lgesettings/RingtoneEntryAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x109000f

    iget-object v3, p0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/lgesettings/RingtoneEntryAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 560
    .local v0, adapter:Lcom/android/lgesettings/RingtoneEntryAdapter;
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/RingtonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 562
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/RingtonePicker;->listView:Landroid/widget/ListView;

    .line 563
    iget-object v1, p0, Lcom/android/lgesettings/RingtonePicker;->listView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 564
    iget-object v1, p0, Lcom/android/lgesettings/RingtonePicker;->listView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 585
    invoke-direct {p0}, Lcom/android/lgesettings/RingtonePicker;->onPrepareUI()V

    .line 587
    return-void
.end method

.method private onPrepareUI()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 591
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/RingtonePickerInfo;->getURI()Landroid/net/Uri;

    move-result-object v1

    .line 592
    .local v1, ringtone_uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/RingtonePickerInfo;->getDefaultPhoneRingtone()Landroid/net/Uri;

    move-result-object v0

    .line 594
    .local v0, default_ringtone_uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 595
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    iget-object v3, p0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v1, v3}, Lcom/android/lgesettings/RingtonePickerInfo;->getRingtoneUriPosition(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/RingtonePicker;->internal_ringtone_position:I

    .line 599
    :cond_0
    iget v2, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    if-ne v2, v5, :cond_1

    sget-boolean v2, Lcom/android/lgesettings/RingtonePicker;->mIsSatotakuRingtoneModel:Z

    if-eqz v2, :cond_1

    .line 600
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 601
    iget v2, p0, Lcom/android/lgesettings/RingtonePicker;->internal_ringtone_position:I

    if-ne v2, v6, :cond_7

    .line 602
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    iget-object v3, p0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v1, v3}, Lcom/android/lgesettings/RingtonePickerInfo;->getRingtoneUriPosition(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/RingtonePicker;->internal_ringtone_position:I

    .line 612
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 613
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    iget-object v3, p0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v1, v3}, Lcom/android/lgesettings/RingtonePickerInfo;->getRingtoneUriPosition(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/RingtonePicker;->external_ringtone_position:I

    .line 618
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    .line 619
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    iget-object v3, p0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v0, v3}, Lcom/android/lgesettings/RingtonePickerInfo;->getRingtoneUriPosition(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/RingtonePicker;->default_ringtone_position:I

    .line 626
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_b

    .line 627
    const-string v2, "RingtonePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "internal_ringtone_position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/lgesettings/RingtonePicker;->internal_ringtone_position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget v2, p0, Lcom/android/lgesettings/RingtonePicker;->external_ringtone_position:I

    if-ne v2, v6, :cond_a

    .line 633
    iget v2, p0, Lcom/android/lgesettings/RingtonePicker;->internal_ringtone_position:I

    if-ne v2, v6, :cond_9

    .line 634
    if-nez v1, :cond_8

    iget-boolean v2, p0, Lcom/android/lgesettings/RingtonePicker;->mHasSilentItem:Z

    if-eqz v2, :cond_8

    .line 635
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iget v4, p0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 636
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iget v4, p0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 680
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_4

    .line 681
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 683
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_5

    .line 684
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 686
    :cond_5
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_6

    .line 687
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 691
    :cond_6
    return-void

    .line 606
    :cond_7
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    iget-object v3, p0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v1, v3}, Lcom/android/lgesettings/RingtonePickerInfo;->getRingtoneUriPosition(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/lgesettings/RingtonePicker;->internal_ringtone_position:I

    goto/16 :goto_0

    .line 638
    :cond_8
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->default_ringtone_position:I

    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 640
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->default_ringtone_position:I

    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 644
    :cond_9
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->internal_ringtone_position:I

    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 646
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->internal_ringtone_position:I

    iget-object v4, p0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 653
    :cond_a
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->external_ringtone_position:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 654
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->external_ringtone_position:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_1

    .line 661
    :cond_b
    iget v2, p0, Lcom/android/lgesettings/RingtonePicker;->internal_ringtone_position:I

    if-ne v2, v6, :cond_d

    .line 662
    if-nez v1, :cond_c

    iget-boolean v2, p0, Lcom/android/lgesettings/RingtonePicker;->mHasSilentItem:Z

    if-eqz v2, :cond_c

    .line 663
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 664
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_1

    .line 666
    :cond_c
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->default_ringtone_position:I

    iget v4, p0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 667
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->default_ringtone_position:I

    iget v4, p0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_1

    .line 670
    :cond_d
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->internal_ringtone_position:I

    iget v4, p0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 671
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->internal_ringtone_position:I

    iget v4, p0, Lcom/android/lgesettings/RingtonePicker;->mStaticItemCount:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_1
.end method

.method private playRingtone(Landroid/net/Uri;I)V
    .locals 3
    .parameter "uri"
    .parameter "delayMs"

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 834
    iput-object p1, p0, Lcom/android/lgesettings/RingtonePicker;->mSampleRingtoneUri:Landroid/net/Uri;

    .line 835
    iget v0, p0, Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I

    iput v0, p0, Lcom/android/lgesettings/RingtonePicker;->mSampleRingtonePos:I

    .line 836
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 837
    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mSampleRingtoneUri:Landroid/net/Uri;

    .line 960
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1

    .line 965
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 967
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1090
    iget v0, p0, Lcom/android/lgesettings/RingtonePicker;->LAUNCHED_REQUEST_CODE:I

    if-ne p1, v0, :cond_7

    .line 1091
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 1092
    const-string v0, "RingtonePicker"

    const-string v1, "resultCode != RESULT_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1158
    invoke-direct {p0}, Lcom/android/lgesettings/RingtonePicker;->do_InitTitleName()V

    .line 1167
    :cond_0
    :goto_1
    return-void

    .line 1095
    :cond_1
    const-string v0, "RingtonePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data.getExtras() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1097
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1098
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1100
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1104
    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    if-eq v3, v8, :cond_2

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/16 v4, 0x40

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1109
    :cond_2
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1110
    const-string v4, "is_ringtone"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1135
    :cond_3
    :goto_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data"

    aput-object v3, v2, v8

    const-string v3, "title"

    aput-object v3, v2, v7

    .line 1139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1140
    iget-object v3, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v2, v1, v6, v6}, Lcom/android/lgesettings/RingtonePickerInfo;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1144
    iget-object v2, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    invoke-virtual {v2, v0, v3}, Lcom/android/lgesettings/RingtonePickerInfo;->do_setURI(Landroid/net/Uri;I)V

    .line 1146
    if-eqz v1, :cond_4

    .line 1147
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1151
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto/16 :goto_0

    .line 1119
    :cond_5
    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    if-eq v3, v7, :cond_6

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    const/16 v4, 0x80

    if-ne v3, v4, :cond_3

    .line 1123
    :cond_6
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1124
    const-string v4, "is_notification"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1127
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 1164
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 1113
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/RingtonePicker;->setHasOptionsMenu(Z)V

    .line 237
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 973
    const v0, 0x7f110003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 975
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 242
    const-string v3, "RingtonePicker"

    const-string v4, "onCreateView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v3, Lcom/android/lgesettings/RingtonePickerInfo;

    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/lgesettings/RingtonePickerInfo;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    .line 246
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 247
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    .line 248
    iget v3, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    if-ne v3, v5, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "RINGTONE_PARENT"

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 250
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v3, "android.intent.extra.ringtone.TYPE"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    .line 253
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    iget v4, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/RingtonePickerInfo;->setParentType(I)V

    .line 256
    invoke-direct {p0}, Lcom/android/lgesettings/RingtonePicker;->do_InitDefalutSetting()V

    .line 258
    invoke-direct {p0}, Lcom/android/lgesettings/RingtonePicker;->do_InitSIMDependancyMenu()V

    .line 262
    const v3, 0x7f06004a

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 263
    .local v2, row:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/lgesettings/RingtonePicker;->do_InitCancelOkBtn(Landroid/view/View;)V

    .line 265
    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 358
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 360
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/lgesettings/RingtonePicker;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 364
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 11
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 697
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 702
    :try_start_0
    iget v8, p0, Lcom/android/lgesettings/RingtonePicker;->mSilentPos:I

    if-ne p3, v8, :cond_1

    .line 703
    const-string v8, "RingtonePicker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "silent position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iput p3, p0, Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I

    .line 706
    const/4 v8, 0x0

    const/16 v9, 0x12c

    invoke-direct {p0, v8, v9}, Lcom/android/lgesettings/RingtonePicker;->playRingtone(Landroid/net/Uri;I)V

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/lgesettings/RingtoneItem;

    invoke-interface {v8}, Lcom/android/lgesettings/RingtoneItem;->isSection()Z

    move-result v8

    if-nez v8, :cond_0

    .line 710
    const-string v8, "RingtonePicker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iput p3, p0, Lcom/android/lgesettings/RingtonePicker;->mClickedPos:I

    .line 717
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/lgesettings/RingtonePicker;->mSelected:Z

    .line 718
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/lgesettings/RingtonePicker;->mDrmRingtone:Z

    .line 722
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;

    .line 724
    .local v4, item:Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;
    iget-object v8, v4, Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;->uri:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->position_uri:Landroid/net/Uri;

    .line 726
    const-string v8, "RingtonePicker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "position_uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/lgesettings/RingtonePicker;->position_uri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->mOperator:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/lgesettings/RingtonePicker;->strTargetOperator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 732
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    iget-object v9, p0, Lcom/android/lgesettings/RingtonePicker;->position_uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/lgesettings/RingtonePickerInfo;->GetFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 733
    .local v7, path:Ljava/lang/String;
    const/4 v0, 0x0

    .line 734
    .local v0, bCanHandle:Z
    const-string v8, "RingtonePicker"

    const-string v9, "~~~31> creating DrmManagerClient. "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    sget-object v8, Lcom/android/lgesettings/RingtonePicker;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v8, :cond_2

    .line 736
    const-string v8, "RingtonePicker"

    const-string v9, "~~~31> mDrmStore is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    new-instance v8, Landroid/drm/DrmManagerClient;

    iget-object v9, p0, Lcom/android/lgesettings/RingtonePicker;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/android/lgesettings/RingtonePicker;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 739
    :cond_2
    if-eqz v7, :cond_0

    .line 742
    :try_start_1
    const-string v8, "RingtonePicker"

    const-string v9, "~~~31> check. mDrmManagerClient.canHandle()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    sget-object v8, Lcom/android/lgesettings/RingtonePicker;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    const-string v9, "audio/mp4"

    invoke-virtual {v8, v7, v9}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 744
    const-string v8, "RingtonePicker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "~~~31> nCanHandle is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 749
    :goto_1
    const/4 v8, 0x1

    if-ne v0, v8, :cond_3

    .line 753
    const/4 v1, 0x1

    .line 754
    .local v1, canbeplayed:Z
    :try_start_2
    const-string v8, "RingtonePicker"

    const-string v9, "~~~31> checkRightsStatus()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    sget-object v8, Lcom/android/lgesettings/RingtonePicker;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v9, 0x2

    invoke-virtual {v8, v7, v9}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v6

    .line 758
    .local v6, nDrmStatus:I
    packed-switch v6, :pswitch_data_0

    .line 799
    const-string v8, "RingtonePicker"

    const-string v9, "~~~31> default"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f080cba

    invoke-virtual {p0, v9}, Lcom/android/lgesettings/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 802
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setClickable(Z)V

    .line 803
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 806
    .end local v6           #nDrmStatus:I
    :catch_0
    move-exception v3

    .line 807
    .local v3, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v8, "RingtonePicker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "~~~31> exception is occured whiling check nDrmStatus"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 825
    .end local v0           #bCanHandle:Z
    .end local v1           #canbeplayed:Z
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v4           #item:Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;
    .end local v7           #path:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 826
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 745
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v0       #bCanHandle:Z
    .restart local v4       #item:Lcom/android/lgesettings/RingtoneEntryAdapter$RingtoneEntryItem;
    .restart local v7       #path:Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 746
    .restart local v3       #ex:Ljava/lang/Exception;
    :try_start_4
    const-string v8, "RingtonePicker"

    const-string v9, "~~~31> exception is occured during checking canHandle"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 760
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v1       #canbeplayed:Z
    .restart local v6       #nDrmStatus:I
    :pswitch_0
    :try_start_5
    const-string v8, "RingtonePicker"

    const-string v9, "~~~31>  mDrmStore.RightsStatus.RIGHTS_EXPIRED "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :pswitch_1
    const-string v8, "RingtonePicker"

    const-string v9, "~~~31>  mDrmStore.RightsStatus.RIGHTS_INVALID"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :pswitch_2
    const-string v8, "RingtonePicker"

    const-string v9, "~~~31>  mDrmStore.RightsStatus.RIGHTS_NOT_ACQUIRED "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f080cba

    invoke-virtual {p0, v9}, Lcom/android/lgesettings/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 766
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setClickable(Z)V

    .line 767
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 770
    :pswitch_3
    const-string v8, "RingtonePicker"

    const-string v9, "~~~31>  mDrmStore.RightsStatus.RIGHTS_VALID"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setClickable(Z)V

    .line 772
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    .line 774
    :try_start_6
    const-string v8, "RingtonePicker"

    const-string v9, "~~~31> mAudio =  new MediaPlayer(); "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v8, Landroid/media/MediaPlayer;

    invoke-direct {v8}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->mAudio:Landroid/media/MediaPlayer;

    .line 776
    const-string v8, "RingtonePicker"

    const-string v9, "~~~31> int mStreamType = AudioManager.STREAM_MUSIC "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const/4 v5, 0x3

    .line 778
    .local v5, mStreamType:I
    const-string v8, "RingtonePicker"

    const-string v9, "~~~31> mAudio.setDataSource(this, position_uri) "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/lgesettings/RingtonePicker;->position_uri:Landroid/net/Uri;

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 780
    const-string v8, "RingtonePicker"

    const-string v9, "~~~31> mAudio.setAudioStreamType(mStreamType) "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v8, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 782
    const-string v8, "RingtonePicker"

    const-string v9, "~~~31> mAudio.prepare() "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->prepare()V

    .line 784
    const-string v8, "RingtonePicker"

    const-string v9, "~~~31> finished try catch"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->position_uri:Landroid/net/Uri;

    const/16 v9, 0x12c

    invoke-direct {p0, v8, v9}, Lcom/android/lgesettings/RingtonePicker;->playRingtone(Landroid/net/Uri;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 786
    .end local v5           #mStreamType:I
    :catch_3
    move-exception v3

    .line 787
    .restart local v3       #ex:Ljava/lang/Exception;
    :try_start_7
    const-string v8, "RingtonePicker"

    const-string v9, "~~~31> Play exception is occured."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f080cba

    invoke-virtual {p0, v9}, Lcom/android/lgesettings/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 790
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setClickable(Z)V

    .line 791
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    .line 792
    const/4 v1, 0x0

    .line 797
    goto/16 :goto_0

    .line 810
    .end local v1           #canbeplayed:Z
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v6           #nDrmStatus:I
    :cond_3
    :try_start_8
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setClickable(Z)V

    .line 811
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 812
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->position_uri:Landroid/net/Uri;

    const/16 v9, 0x12c

    invoke-direct {p0, v8, v9}, Lcom/android/lgesettings/RingtonePicker;->playRingtone(Landroid/net/Uri;I)V

    goto/16 :goto_0

    .line 822
    .end local v0           #bCanHandle:Z
    .end local v7           #path:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->position_uri:Landroid/net/Uri;

    const/16 v9, 0x12c

    invoke-direct {p0, v8, v9}, Lcom/android/lgesettings/RingtonePicker;->playRingtone(Landroid/net/Uri;I)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 758
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/high16 v12, 0x6400

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 982
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    move v8, v10

    .line 1051
    :goto_0
    return v8

    .line 984
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "settings_style"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 985
    .local v6, settingStyle:I
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v11, "activity"

    invoke-virtual {v8, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 986
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 988
    .local v4, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 989
    .local v7, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    .end local v7           #topActivity:Landroid/content/ComponentName;
    :goto_1
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 995
    .local v1, baseActivityClassName:Ljava/lang/String;
    if-ne v6, v9, :cond_2

    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 997
    const-string v8, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.android.lgesettings.Settings"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 999
    :cond_0
    const-string v8, "soosin"

    const-string v10, "onBackPressed"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->onBackPressed()V

    move v8, v9

    .line 1001
    goto :goto_0

    .line 990
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 991
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 1003
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v1       #baseActivityClassName:Ljava/lang/String;
    :cond_1
    const-string v8, "soosin"

    const-string v10, "intent action - SOUND_SETTINGS"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1005
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1006
    const-string v8, "com.android.lgesettings.SOUND_SETTINGS"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/RingtonePicker;->startActivity(Landroid/content/Intent;)V

    .line 1008
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    move v8, v9

    .line 1009
    goto/16 :goto_0

    .line 1012
    .end local v3           #i:Landroid/content/Intent;
    :cond_2
    const-string v8, "com.android.lgesettings.Settings"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1013
    const-string v8, "soosin"

    const-string v10, "onBackPressed"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->onBackPressed()V

    move v8, v9

    .line 1015
    goto/16 :goto_0

    .line 1018
    :cond_3
    const-string v8, "soosin"

    const-string v10, "intent action - SOUND_SETTINGS"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1020
    .restart local v3       #i:Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1021
    const-string v8, "com.android.lgesettings.SOUND_SETTINGS"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1022
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/RingtonePicker;->startActivity(Landroid/content/Intent;)V

    .line 1023
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    move v8, v9

    .line 1024
    goto/16 :goto_0

    .line 1035
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v6           #settingStyle:I
    :sswitch_1
    iget-object v8, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    invoke-virtual {v8}, Lcom/android/lgesettings/RingtonePickerInfo;->appIsEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1037
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1038
    .local v5, intent:Landroid/content/Intent;
    const-string v8, "com.lge.music"

    const-string v9, "com.lge.music.MusicPicker"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    const-string v8, "android.intent.action.GET_CONTENT"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    const-string v8, "com.lge.lgdrm.extra.ACTION"

    const/4 v9, 0x2

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1043
    iget v8, p0, Lcom/android/lgesettings/RingtonePicker;->LAUNCHED_REQUEST_CODE:I

    invoke-virtual {p0, v5, v8}, Lcom/android/lgesettings/RingtonePicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1051
    .end local v5           #intent:Landroid/content/Intent;
    :goto_2
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    goto/16 :goto_0

    .line 1047
    :cond_4
    invoke-direct {p0}, Lcom/android/lgesettings/RingtonePicker;->confirmDialog()V

    goto :goto_2

    .line 982
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0a0490 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 325
    invoke-direct {p0}, Lcom/android/lgesettings/RingtonePicker;->stopAnyPlayingRingtone()V

    .line 326
    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 328
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->mInternalSatoTakuCursor:Landroid/database/Cursor;

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/RingtonePicker;->items:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_1
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 300
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 302
    invoke-direct {p0}, Lcom/android/lgesettings/RingtonePicker;->initRingtoneList()V

    .line 303
    invoke-direct {p0}, Lcom/android/lgesettings/RingtonePicker;->initRingtoneUI()V

    .line 304
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 295
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 309
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 319
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 341
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 342
    invoke-direct {p0}, Lcom/android/lgesettings/RingtonePicker;->stopAnyPlayingRingtone()V

    .line 344
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 345
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 347
    iget-object v1, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/RingtonePickerInfo;->isExpiredDrm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    const-string v1, "RingtonePicker"

    const-string v2, "!!!!!it is expired uri change to default!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v1, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/RingtonePickerInfo;->getDefaultPhoneRingtone()Landroid/net/Uri;

    move-result-object v0

    .line 350
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    iget v2, p0, Lcom/android/lgesettings/RingtonePicker;->mParentType:I

    invoke-virtual {v1, v0, v2}, Lcom/android/lgesettings/RingtonePickerInfo;->do_setURI(Landroid/net/Uri;I)V

    .line 353
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 842
    iget v5, p0, Lcom/android/lgesettings/RingtonePicker;->mSampleRingtonePos:I

    iget v6, p0, Lcom/android/lgesettings/RingtonePicker;->mSilentPos:I

    if-ne v5, v6, :cond_1

    .line 846
    invoke-direct {p0}, Lcom/android/lgesettings/RingtonePicker;->stopAnyPlayingRingtone()V

    .line 851
    iput-boolean v9, p0, Lcom/android/lgesettings/RingtonePicker;->mSelected:Z

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    iget-boolean v5, p0, Lcom/android/lgesettings/RingtonePicker;->mDrmJob:Z

    if-eqz v5, :cond_2

    .line 858
    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/lgesettings/RingtonePicker;->mDrmTask:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 859
    iput-boolean v9, p0, Lcom/android/lgesettings/RingtonePicker;->mDrmJob:Z

    .line 867
    :cond_2
    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v5}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 868
    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v5}, Landroid/media/Ringtone;->stop()V

    .line 869
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 872
    :cond_3
    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker;->mSampleRingtoneUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 876
    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/RingtonePicker;->mSampleRingtoneUri:Landroid/net/Uri;

    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 878
    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v5, :cond_4

    .line 880
    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    iget-object v6, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v6}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 884
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 886
    .local v3, ringtone:Landroid/media/Ringtone;
    if-eqz v3, :cond_9

    .line 891
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v5, :cond_7

    .line 892
    const/4 v1, 0x0

    .line 893
    .local v1, nStatus:I
    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    iget-object v6, p0, Lcom/android/lgesettings/RingtonePicker;->mSampleRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/lgesettings/RingtonePickerInfo;->GetFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v2, v10, v9, v9}, Lcom/lge/lgdrm/DrmFwExt;->checkDRMRingtone(Landroid/content/Context;Ljava/lang/String;ZZZ)I

    move-result v1

    .line 897
    if-ne v1, v10, :cond_6

    .line 898
    iget-boolean v5, p0, Lcom/android/lgesettings/RingtonePicker;->mSelected:Z

    if-eqz v5, :cond_5

    .line 900
    iput-boolean v9, p0, Lcom/android/lgesettings/RingtonePicker;->mDrmRingtone:Z

    .line 902
    invoke-virtual {p0}, Lcom/android/lgesettings/RingtonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080cba

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 907
    :cond_5
    iput-boolean v9, p0, Lcom/android/lgesettings/RingtonePicker;->mSelected:Z

    goto :goto_0

    .line 912
    :cond_6
    if-eqz v2, :cond_7

    .line 913
    invoke-static {v2}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v0

    .line 914
    .local v0, mDrmFile:I
    const/16 v5, 0x501

    if-eq v0, v5, :cond_7

    const/16 v5, 0x1800

    if-eq v0, v5, :cond_7

    const/16 v5, 0x31

    if-eq v0, v5, :cond_7

    .line 915
    const/4 v5, 0x2

    if-ne v1, v5, :cond_7

    .line 917
    iput-boolean v10, p0, Lcom/android/lgesettings/RingtonePicker;->mDrmJob:Z

    .line 918
    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/lgesettings/RingtonePicker;->mDrmTask:Ljava/lang/Runnable;

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 931
    .end local v0           #mDrmFile:I
    .end local v1           #nStatus:I
    .end local v2           #path:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v5

    if-ne v5, v10, :cond_8

    .line 933
    const/4 v4, 0x2

    .line 934
    .local v4, streamType:I
    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v5, :cond_8

    .line 935
    iget-object v5, p0, Lcom/android/lgesettings/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v5}, Landroid/media/RingtoneManager;->inferStreamType()I

    .line 938
    .end local v4           #streamType:I
    :cond_8
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    .line 945
    :cond_9
    sget-boolean v5, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-eqz v5, :cond_0

    .line 946
    iput-boolean v9, p0, Lcom/android/lgesettings/RingtonePicker;->mSelected:Z

    goto/16 :goto_0
.end method
