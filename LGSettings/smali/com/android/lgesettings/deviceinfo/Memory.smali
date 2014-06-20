.class public Lcom/android/lgesettings/deviceinfo/Memory;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/deviceinfo/Memory$ConfirmClearCacheFragment;,
        Lcom/android/lgesettings/deviceinfo/Memory$ClearCacheObserver;
    }
.end annotation


# static fields
.field protected static isCloudBUA:Z

.field protected static isVZWOperator:Z

.field private static sClickedMountPoint:Ljava/lang/String;

.field private static sLastClickedMountToggle:Landroid/preference/Preference;


# instance fields
.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResources:Landroid/content/res/Resources;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private theCountOfUSBStorageVolume:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/Memory;->isVZWOperator:Z

    .line 93
    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/Memory;->isCloudBUA:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 91
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/deviceinfo/Memory;->theCountOfUSBStorageVolume:I

    .line 220
    new-instance v0, Lcom/android/lgesettings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/Memory$1;-><init>(Lcom/android/lgesettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 383
    new-instance v0, Lcom/android/lgesettings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/Memory$2;-><init>(Lcom/android/lgesettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 673
    new-instance v0, Lcom/android/lgesettings/deviceinfo/Memory$6;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/Memory$6;-><init>(Lcom/android/lgesettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/deviceinfo/Memory;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/lgesettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/deviceinfo/Memory;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method static synthetic access$500()Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/lgesettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/deviceinfo/Memory;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->onCacheCleared()V

    return-void
.end method

.method private addCategory(Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->isNeededToCheckUSBRefresh:Z

    .line 172
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 173
    invoke-virtual {p1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 174
    return-void
.end method

.method private addCategoryForBUA(Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 179
    invoke-virtual {p1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->initForBUA()V

    .line 180
    return-void
.end method

.method private doUnmount()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 452
    sget-object v2, Lcom/android/lgesettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    const-string v3, "/storage/USBstorage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080478

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 457
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 459
    .local v1, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    sget-object v2, Lcom/android/lgesettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 460
    sget-object v2, Lcom/android/lgesettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v3, 0x7f080479

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 461
    sget-object v2, Lcom/android/lgesettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v3, 0x7f08047a

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 462
    sget-object v2, Lcom/android/lgesettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 465
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 338
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 339
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 340
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 345
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 342
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "MemorySettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 337
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isMassStorageEnabled()Z
    .locals 3

    .prologue
    .line 191
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 192
    .local v1, volumes:[Landroid/os/storage/StorageVolume;
    invoke-static {v1}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 193
    .local v0, primary:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static isUnmountable()Z
    .locals 7

    .prologue
    .line 496
    const/4 v2, 0x1

    .line 498
    .local v2, isUnmountable:Z
    const-string v0, "/sys/class/android_usb/android0/state"

    .line 499
    .local v0, STATE_PATH:Ljava/lang/String;
    const/4 v3, 0x0

    .line 501
    .local v3, state:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/android_usb/android0/state"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 505
    :goto_0
    const-string v4, "sys.usb.config"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, currentUsbMode:Ljava/lang/String;
    const-string v4, "DISCONNECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "pc_suite"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "mtp_only"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ptp_only"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "usb_enable_mtp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 516
    :cond_0
    const-string v4, "hsmodel"

    const-string v5, "Can\'t unmount SD card"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v2, 0x0

    .line 523
    :goto_1
    return v2

    .line 520
    :cond_1
    const-string v4, "hsmodel"

    const-string v5, "Can unmount SD card"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 502
    .end local v1           #currentUsbMode:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 549
    .local v0, mountService:Landroid/os/storage/IMountService;
    if-eqz v0, :cond_0

    .line 550
    :try_start_0
    sget-object v1, Lcom/android/lgesettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 557
    :goto_0
    return-void

    .line 552
    :cond_0
    const-string v1, "MemorySettings"

    const-string v2, "Mount service is null, can\'t mount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onCacheCleared()V
    .locals 3

    .prologue
    .line 560
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 561
    .local v0, category:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->onCacheCleared()V

    goto :goto_0

    .line 563
    .end local v0           #category:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 470
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/deviceinfo/Memory;->removeDialog(I)V

    .line 471
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/deviceinfo/Memory;->showDialog(I)V

    .line 472
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 529
    const-string v0, "hsmodel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClickedMountPoint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    sget-object v0, Lcom/android/lgesettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    const-string v1, "/storage/USBstorage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->doUnmount()V

    .line 544
    :goto_0
    return-void

    .line 532
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/Memory;->isUnmountable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080fef

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 537
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->doUnmount()V

    goto :goto_0
.end method


# virtual methods
.method protected cloudEnable()Z
    .locals 3

    .prologue
    .line 682
    const/4 v1, 0x0

    .line 683
    .local v1, result:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 684
    .local v0, mPackageManager:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 685
    const-string v2, "com.lge.cloudservice.enabled"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 687
    :cond_0
    return v1
.end method

.method protected isConnectedToUSBStorage(Ljava/lang/String;)Z
    .locals 5
    .parameter "pathOfStorageVolume"

    .prologue
    const/4 v1, 0x1

    .line 691
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, state:Ljava/lang/String;
    :goto_0
    const-string v2, "hsmodel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 699
    :cond_0
    :goto_1
    return v1

    .line 691
    .end local v0           #state:Ljava/lang/String;
    :cond_1
    const-string v0, "mounted"

    goto :goto_0

    .line 696
    .restart local v0       #state:Ljava/lang/String;
    :cond_2
    const-string v2, "unmounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "nofs"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "unmountable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 699
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected isVZWOperator()V
    .locals 2

    .prologue
    .line 624
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/Memory;->isVZWOperator:Z

    .line 629
    :goto_0
    return-void

    .line 627
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/Memory;->isVZWOperator:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 104
    .local v2, context:Landroid/content/Context;
    const-string v8, "usb"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/UsbManager;

    iput-object v8, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 106
    invoke-static {v2}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 107
    iget-object v8, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v9, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v8, v9}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->isVZWOperator()V

    .line 111
    const v8, 0x7f06001c

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 114
    sget-boolean v8, Lcom/android/lgesettings/deviceinfo/Memory;->isVZWOperator:Z

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->cloudEnable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 115
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/lgesettings/deviceinfo/Memory;->isCloudBUA:Z

    .line 116
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildForBUA(Landroid/content/Context;)Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/deviceinfo/Memory;->addCategoryForBUA(Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    .line 121
    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildForInternal(Landroid/content/Context;)Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/deviceinfo/Memory;->addCategory(Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 123
    iget-object v8, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 124
    .local v6, storageVolumes:[Landroid/os/storage/StorageVolume;
    move-object v0, v6

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v7, v0, v3

    .line 125
    .local v7, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v8

    if-nez v8, :cond_1

    .line 138
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/storage/USBstorage"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 139
    iget v8, p0, Lcom/android/lgesettings/deviceinfo/Memory;->theCountOfUSBStorageVolume:I

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v7, v8, v9}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildForOTG(Landroid/content/Context;Landroid/os/storage/StorageVolume;ILjava/lang/String;)Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v1

    .line 140
    .local v1, category:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    iget v8, p0, Lcom/android/lgesettings/deviceinfo/Memory;->theCountOfUSBStorageVolume:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/lgesettings/deviceinfo/Memory;->theCountOfUSBStorageVolume:I

    .line 141
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/deviceinfo/Memory;->isConnectedToUSBStorage(Ljava/lang/String;)Z

    move-result v4

    .line 142
    .local v4, isConnected:Z
    if-eqz v4, :cond_2

    .line 145
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->setVolumePath(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/Memory;->addCategory(Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 124
    .end local v1           #category:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v4           #isConnected:Z
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    .restart local v1       #category:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    .restart local v4       #isConnected:Z
    :cond_2
    iget-object v8, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->isNeededToCheckUSBRefresh:Z

    .line 153
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->setVolumePath(Ljava/lang/String;)V

    goto :goto_1

    .line 158
    .end local v1           #category:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v4           #isConnected:Z
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-nez v8, :cond_1

    .line 159
    invoke-static {v2, v7}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/lgesettings/deviceinfo/Memory;->addCategory(Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;)V

    goto :goto_1

    .line 167
    .end local v7           #volume:Landroid/os/storage/StorageVolume;
    :cond_4
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x7f08059d

    const/4 v0, 0x0

    .line 409
    packed-switch p1, :pswitch_data_0

    .line 447
    :goto_0
    return-object v0

    .line 411
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080474

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/deviceinfo/Memory$3;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/deviceinfo/Memory$3;-><init>(Lcom/android/lgesettings/deviceinfo/Memory;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080106

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080475

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 439
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080476

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080477

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 307
    const v0, 0x7f110004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 308
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 302
    :cond_0
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 303
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 318
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 333
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 320
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08047e

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 329
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 327
    :cond_0
    const-class v0, Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/lgesettings/deviceinfo/Memory;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0491
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 283
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 284
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 285
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 287
    .local v0, category:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    iget-boolean v2, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->isExistedHWTotalMenu:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->isExistedBUACategory:Z

    if-nez v2, :cond_0

    .line 288
    iget-boolean v2, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->isNeededToCheckUSBRefresh:Z

    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    goto :goto_0

    .line 295
    .end local v0           #category:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 350
    const-string v6, "cache"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 351
    invoke-static {p0}, Lcom/android/lgesettings/deviceinfo/Memory$ConfirmClearCacheFragment;->show(Lcom/android/lgesettings/deviceinfo/Memory;)V

    .line 380
    :cond_0
    :goto_0
    return v5

    .line 355
    :cond_1
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 356
    .local v0, category:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0, p2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v2

    .line 357
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 359
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-nez v6, :cond_0

    .line 360
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 366
    .local v4, volume:Landroid/os/storage/StorageVolume;
    if-eqz v4, :cond_2

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 367
    sput-object p2, Lcom/android/lgesettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    .line 368
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/lgesettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    .line 369
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, state:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "mounted_ro"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 372
    :cond_4
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->unmount()V

    goto :goto_0

    .line 374
    :cond_5
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->mount()V

    goto :goto_0

    .line 380
    .end local v0           #category:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #state:Ljava/lang/String;
    .end local v4           #volume:Landroid/os/storage/StorageVolume;
    :cond_6
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 312
    const v1, 0x7f0a0491

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 313
    .local v0, usb:Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->isMassStorageEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 314
    return-void

    .line 313
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 198
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 199
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 200
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 205
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 210
    .local v0, category:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    iget-boolean v3, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->isExistedHWTotalMenu:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->isExistedBUACategory:Z

    if-nez v3, :cond_0

    .line 211
    iget-boolean v3, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->isNeededToCheckUSBRefresh:Z

    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    goto :goto_0

    .line 218
    .end local v0           #category:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_1
    return-void
.end method
