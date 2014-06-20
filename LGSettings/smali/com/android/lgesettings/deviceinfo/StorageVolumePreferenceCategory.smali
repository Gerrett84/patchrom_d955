.class public Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
    }
.end annotation


# static fields
.field private static mVZWTotalSpace:J

.field protected static miscForSystemData:J


# instance fields
.field private format_usb_storage_summary:Ljava/lang/String;

.field private format_usb_storage_title:Ljava/lang/String;

.field private indexOfUSBStorage:I

.field protected isExistedBUACategory:Z

.field protected isExistedHWTotalMenu:Z

.field protected isNeededToCheckUSBRefresh:Z

.field private mContext:Landroid/content/Context;

.field private mFormatPreference:Landroid/preference/Preference;

.field private mItemApps:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

.field private mItemAvailable:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

.field private mItemCache:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

.field private mItemDcim:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

.field private mItemDownloads:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

.field private mItemHWTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

.field private mItemMisc:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

.field private mItemMusic:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

.field private mItemTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

.field private mItemUserOption:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

.field private mItemUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private final mMeasure:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mReceiver:Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private mStorageLow:Landroid/preference/Preference;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mTotalSize:J

.field private mTotalSpaceSummary:Ljava/lang/String;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

.field private mUsbConnected:Z

.field private mUsbFunction:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mVolume:Landroid/os/storage/StorageVolume;

.field private mount_usb_storage_summary:Ljava/lang/String;

.field private mount_usb_storage_title:Ljava/lang/String;

.field private thisVolumePath:Ljava/lang/String;

.field private unmount_usb_storage_summary:Ljava/lang/String;

.field private unmount_usb_storage_title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 89
    sput-wide v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVZWTotalSpace:J

    .line 90
    sput-wide v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->miscForSystemData:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;ILjava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "volume"
    .parameter "mIndexOfUSBStorage"
    .parameter "thePathOfUSB"

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    .line 87
    iput-boolean v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->isExistedBUACategory:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->isExistedHWTotalMenu:Z

    .line 97
    iput v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->indexOfUSBStorage:I

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->thisVolumePath:Ljava/lang/String;

    .line 106
    iput-boolean v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->isNeededToCheckUSBRefresh:Z

    .line 113
    new-instance v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 757
    new-instance v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    .line 776
    new-instance v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$3;-><init>(Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 174
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mContext:Landroid/content/Context;

    .line 175
    iput p3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->indexOfUSBStorage:I

    .line 176
    iput-object p2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 177
    iput-object p2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 178
    invoke-static {p1, p2}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    .line 179
    invoke-virtual {p0, p4}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->setVolumePath(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 181
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 182
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    .line 184
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 186
    return-void

    .line 184
    :cond_0
    const v0, 0x7f080598

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildForBUA(Landroid/content/Context;)Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 156
    new-instance v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v1, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildForInternal(Landroid/content/Context;)Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 142
    new-instance v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v1, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildForOTG(Landroid/content/Context;Landroid/os/storage/StorageVolume;ILjava/lang/String;)Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .parameter "context"
    .parameter "volume"
    .parameter "mIndexOfUSBStorage"
    .parameter "thePathOfUSB"

    .prologue
    .line 169
    new-instance v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 3
    .parameter "context"
    .parameter "volume"

    .prologue
    .line 150
    new-instance v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;ILjava/lang/String;)V

    return-object v0
.end method

.method private buildItem(II)Lcom/android/lgesettings/deviceinfo/StorageItemPreference;
    .locals 2
    .parameter "titleRes"
    .parameter "colorRes"

    .prologue
    .line 189
    new-instance v0, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4
    .parameter "excluding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 858
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 859
    .local v1, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 860
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 861
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 862
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 865
    :cond_1
    return-object v1
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 706
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->measure()V

    .line 707
    return-void
.end method

.method private resetPreferences()V
    .locals 3

    .prologue
    .line 418
    const/4 v0, 0x0

    .line 425
    .local v0, numberOfCategories:I
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 429
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 430
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    if-eqz v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 445
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_3

    .line 446
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 448
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    if-eqz v1, :cond_4

    .line 449
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 454
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v1, :cond_5

    .line 455
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 456
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 458
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_6

    .line 459
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 461
    :cond_6
    return-void
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .parameter
    .parameter "keys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 612
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 613
    .local v4, total:J
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 614
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    return-wide v4
.end method

.method private updatePreference(Lcom/android/lgesettings/deviceinfo/StorageItemPreference;J)V
    .locals 5
    .parameter "pref"
    .parameter "size"

    .prologue
    .line 695
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 696
    invoke-direct {p0, p2, p3}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 697
    invoke-virtual {p1}, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    .line 698
    .local v0, order:I
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 702
    .end local v0           #order:I
    :goto_0
    return-void

    .line 700
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f080473

    const v4, 0x7f08046d

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 464
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->resetPreferences()V

    .line 467
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 468
    const/4 v0, 0x0

    .line 470
    .local v0, isUSBStorage:Z
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, state:Ljava/lang/String;
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 473
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    const v3, 0x7f080460

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 474
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_2

    .line 475
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 481
    :cond_2
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 483
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 484
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08046a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080bfe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_4

    .line 487
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 490
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/storage/USBstorage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 491
    const/4 v0, 0x1

    .line 492
    iget v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->indexOfUSBStorage:I

    if-ne v2, v7, :cond_a

    .line 493
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->unmount_usb_storage_title:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->unmount_usb_storage_summary:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_5

    .line 496
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->format_usb_storage_title:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->format_usb_storage_summary:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 570
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    if-eqz v2, :cond_9

    const-string v2, "mtp"

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "ptp"

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 573
    :cond_6
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 575
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 577
    :cond_7
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 581
    :cond_8
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_9

    .line 582
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 583
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 587
    :cond_9
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 588
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/lgesettings/MDMSettingsAdapter;->setEraseSdMenu(Landroid/content/ComponentName;Landroid/preference/Preference;Landroid/os/storage/StorageVolume;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 500
    :cond_a
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->unmount_usb_storage_title:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->indexOfUSBStorage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->unmount_usb_storage_summary:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->indexOfUSBStorage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_5

    .line 503
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->format_usb_storage_title:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->indexOfUSBStorage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->format_usb_storage_summary:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->indexOfUSBStorage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 510
    :cond_b
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "nofs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 512
    :cond_c
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 513
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08046e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_d

    .line 516
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 519
    :cond_d
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f080edb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mount_usb_storage_title:Ljava/lang/String;

    .line 520
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f080edc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mount_usb_storage_summary:Ljava/lang/String;

    .line 521
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/storage/USBstorage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 522
    const/4 v0, 0x1

    .line 523
    iget v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->indexOfUSBStorage:I

    if-ne v2, v7, :cond_11

    .line 524
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mount_usb_storage_title:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mount_usb_storage_summary:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_e

    .line 527
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->format_usb_storage_title:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->format_usb_storage_summary:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 549
    :cond_e
    :goto_2
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v2, :cond_f

    if-nez v0, :cond_f

    .line 551
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mMountSDcard"

    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v10, v3, v4, v5}, Lcom/android/lgesettings/MDMSettingsAdapter;->setExternalMemoryEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)Z

    .line 556
    :cond_f
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_10

    if-eqz v0, :cond_10

    .line 557
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->setUSBHostStorageEnableMenu(Landroid/preference/Preference;)Z

    .line 562
    :cond_10
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 563
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 564
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 531
    :cond_11
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mount_usb_storage_title:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->indexOfUSBStorage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mount_usb_storage_summary:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->indexOfUSBStorage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_e

    .line 534
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->format_usb_storage_title:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->indexOfUSBStorage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->format_usb_storage_summary:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->indexOfUSBStorage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 541
    :cond_12
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_13

    .line 542
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 544
    :cond_13
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 545
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08046c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public addTotalMenu()V
    .locals 15

    .prologue
    const/4 v8, 0x3

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 372
    const v6, 0x7f080461

    invoke-direct {p0, v6, v12}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemHWTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    .line 373
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemHWTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    const/4 v7, -0x3

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;->setOrder(I)V

    .line 374
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemHWTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 377
    const-string v6, "ro.device.memory.system"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, systemMemoryToken:Ljava/lang/String;
    const-string v6, "ro.device.memory.internal"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, internalMemoryToken:Ljava/lang/String;
    const/4 v4, 0x0

    .line 380
    .local v4, systemMemory:F
    const/4 v2, 0x0

    .line 382
    .local v2, internalMemory:F
    const/4 v1, 0x0

    .line 383
    .local v1, flagSystemMemory:Z
    const/4 v0, 0x0

    .line 385
    .local v0, flagInternalMemoryFormat:Z
    if-eqz v5, :cond_0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 386
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 387
    float-to-int v6, v4

    if-eqz v6, :cond_0

    .line 388
    const/4 v1, 0x1

    .line 391
    :cond_0
    if-eqz v3, :cond_1

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 392
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 393
    float-to-int v6, v2

    int-to-float v6, v6

    cmpl-float v6, v6, v2

    if-eqz v6, :cond_1

    .line 394
    const/4 v0, 0x1

    .line 398
    :cond_1
    if-eqz v1, :cond_2

    .line 400
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemHWTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSpaceSummary:Ljava/lang/String;

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    float-to-int v10, v4

    float-to-int v11, v2

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    float-to-int v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v13

    float-to-int v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 408
    :goto_0
    add-float v6, v4, v2

    float-to-long v6, v6

    sput-wide v6, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVZWTotalSpace:J

    .line 410
    return-void

    .line 401
    :cond_2
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 403
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemHWTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSpaceSummary:Ljava/lang/String;

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-float v10, v4, v2

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 406
    :cond_3
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemHWTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-float v8, v4, v2

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f080cea

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method protected getVolumePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->thisVolumePath:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 25

    .prologue
    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 197
    .local v6, context:Landroid/content/Context;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 202
    .local v9, currentUser:Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v14

    .line 203
    .local v14, otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_2

    const/16 v17, 0x1

    .line 205
    .local v17, showUsers:Z
    :goto_0
    new-instance v19, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    const/16 v20, -0x2

    invoke-virtual/range {v19 .. v20}, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->setOrder(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 209
    const v19, 0x7f080461

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    .line 210
    const v19, 0x7f08045f

    const v20, 0x7f0c0005

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    .line 214
    sget-boolean v19, Lcom/android/lgesettings/deviceinfo/Memory;->isVZWOperator:Z

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->initForTotalMemory()V

    .line 219
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 221
    const v19, 0x7f080463

    const v20, 0x7f0c0006

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    .line 222
    const v19, 0x7f080466

    const v20, 0x7f0c0008

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    .line 223
    const v19, 0x7f080467

    const v20, 0x7f0c0009

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    .line 224
    const v19, 0x7f080465

    const v20, 0x7f0c0007

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    .line 225
    const v19, 0x7f080469

    const v20, 0x7f0c000a

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    .line 226
    const v19, 0x7f080468

    const v20, 0x7f0c000b

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "cache"

    invoke-virtual/range {v19 .. v20}, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v19

    if-eqz v19, :cond_4

    :cond_0
    const/16 v16, 0x1

    .line 231
    .local v16, showDetails:Z
    :goto_2
    if-eqz v16, :cond_6

    .line 232
    if-eqz v17, :cond_1

    .line 233
    new-instance v19, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    iget-object v0, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 236
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 243
    if-eqz v17, :cond_6

    .line 244
    new-instance v19, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    const v20, 0x7f08048c

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 246
    const/4 v7, 0x0

    .line 247
    .local v7, count:I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 248
    .local v12, info:Landroid/content/pm/UserInfo;
    add-int/lit8 v8, v7, 0x1

    .end local v7           #count:I
    .local v8, count:I
    rem-int/lit8 v19, v7, 0x2

    if-nez v19, :cond_5

    const v5, 0x7f0c000c

    .line 250
    .local v5, colorRes:I
    :goto_4
    new-instance v18, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v0, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 252
    .local v18, userPref:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v7, v8

    .line 254
    .end local v8           #count:I
    .restart local v7       #count:I
    goto :goto_3

    .line 198
    .end local v5           #colorRes:I
    .end local v7           #count:I
    .end local v9           #currentUser:Landroid/content/pm/UserInfo;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #info:Landroid/content/pm/UserInfo;
    .end local v14           #otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v16           #showDetails:Z
    .end local v17           #showUsers:Z
    .end local v18           #userPref:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;
    :catch_0
    move-exception v10

    .line 199
    .local v10, e:Landroid/os/RemoteException;
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "Failed to get current user"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 203
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v9       #currentUser:Landroid/content/pm/UserInfo;
    .restart local v14       #otherUsers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 217
    .restart local v17       #showUsers:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 230
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 248
    .restart local v8       #count:I
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #info:Landroid/content/pm/UserInfo;
    .restart local v16       #showDetails:Z
    :cond_5
    const v5, 0x7f0c000d

    goto :goto_4

    .line 258
    .end local v8           #count:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #info:Landroid/content/pm/UserInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v13

    .line 259
    .local v13, isRemovable:Z
    :goto_5
    if-eqz v13, :cond_7

    .line 260
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f08046a

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f080bfe

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 269
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v19

    if-nez v19, :cond_e

    const/4 v4, 0x1

    .line 270
    .local v4, allowFormat:Z
    :goto_6
    if-eqz v4, :cond_8

    .line 271
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f08046f

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f080bfd

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 277
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f080ed7

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->unmount_usb_storage_title:Ljava/lang/String;

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f080ed8

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->unmount_usb_storage_summary:Ljava/lang/String;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f080ed9

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->format_usb_storage_title:Ljava/lang/String;

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f080eda

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->format_usb_storage_summary:Ljava/lang/String;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v19

    const-string v20, "/storage/USBstorage"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 283
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->indexOfUSBStorage:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->unmount_usb_storage_title:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, ""

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->unmount_usb_storage_summary:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, ""

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->format_usb_storage_title:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, ""

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->format_usb_storage_summary:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, ""

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    :goto_7
    sget-boolean v19, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v19, :cond_b

    .line 296
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/lgesettings/MDMSettingsAdapter;->setUSBHostStorageEnableMenu(Landroid/preference/Preference;)Z

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 301
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 304
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 312
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-nez v19, :cond_c

    .line 313
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v15

    .line 315
    .local v15, pm:Landroid/content/pm/IPackageManager;
    :try_start_1
    invoke-interface {v15}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 316
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setOrder(I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f08047b

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f08047c

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 328
    .end local v15           #pm:Landroid/content/pm/IPackageManager;
    :cond_c
    :goto_8
    return-void

    .line 258
    .end local v4           #allowFormat:Z
    .end local v13           #isRemovable:Z
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 269
    .restart local v13       #isRemovable:Z
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 289
    .restart local v4       #allowFormat:Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->unmount_usb_storage_title:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->indexOfUSBStorage:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->unmount_usb_storage_summary:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->indexOfUSBStorage:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->format_usb_storage_title:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->indexOfUSBStorage:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->format_usb_storage_summary:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->indexOfUSBStorage:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 321
    .restart local v15       #pm:Landroid/content/pm/IPackageManager;
    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8

    .line 325
    :catch_1
    move-exception v19

    goto/16 :goto_8
.end method

.method protected initForBUA()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 331
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->isExistedBUACategory:Z

    .line 333
    new-instance v2, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    .line 334
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->setOrder(I)V

    .line 335
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 337
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const/high16 v3, 0x7f0e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 338
    .local v1, width:I
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 340
    .local v0, height:I
    const v2, 0x7f080c0c

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(I)V

    .line 343
    const v2, 0x7f080461

    invoke-direct {p0, v2, v4}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    .line 344
    const v2, 0x7f08045f

    const v3, 0x7f0c001a

    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    .line 345
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 346
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 348
    const v2, 0x7f080466

    const v3, 0x7f0c0016

    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    .line 349
    const v2, 0x7f080467

    const v3, 0x7f0c0017

    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    .line 350
    const v2, 0x7f080468

    const v3, 0x7f0c0019

    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    .line 351
    const v2, 0x7f080c0e

    invoke-direct {p0, v2, v4}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUserOption:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    .line 353
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 354
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 355
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 356
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUserOption:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 358
    return-void
.end method

.method public initForTotalMemory()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080ceb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSpaceSummary:Ljava/lang/String;

    .line 366
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->addTotalMenu()V

    .line 368
    return-void
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 4
    .parameter

    .prologue
    .line 794
    const/4 v0, 0x0

    .line 799
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    .line 800
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_2

    .line 801
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/Memory;->isUnmountable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 802
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mContext:Landroid/content/Context;

    const v2, 0x7f080ff0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 834
    :cond_0
    :goto_0
    return-object v0

    .line 804
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/lgesettings/MediaFormat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 806
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 808
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_3

    .line 809
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/lgesettings/Settings$ManageApplicationsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 812
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_4

    .line 813
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.DownloadManager.extra_sortBySize"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 815
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_5

    .line 816
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 817
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.lge.music"

    const-string v3, "com.lge.music.MusicBrowserActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 818
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 819
    const-string v1, "component"

    const-string v2, "com.lge.music"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 822
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_6

    .line 823
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 824
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.gallery3d"

    const-string v3, "com.android.gallery3d.app.Gallery"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 828
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    if-ne p1, v1, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 830
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/lgesettings/deviceinfo/MiscFilesHandler;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 831
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 742
    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 738
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 745
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v1}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 747
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 749
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MDM"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 710
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/lgesettings/deviceinfo/StorageMeasurement;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 711
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 713
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 714
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 715
    .local v0, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/MDMSettingsAdapter;->addExternalStoragePolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 717
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/MDMSettingsAdapter;->addWipeDatePolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 719
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 722
    .end local v0           #filterLGMDM:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->isNeededToCheckUSBRefresh:Z

    if-eqz v0, :cond_0

    .line 726
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 728
    :cond_0
    return-void
.end method

.method public onUsbStateChanged(ZLjava/lang/String;)V
    .locals 0
    .parameter "isUsbConnected"
    .parameter "usbFunction"

    .prologue
    .line 731
    iput-boolean p1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    .line 732
    iput-object p2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    .line 733
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 734
    return-void
.end method

.method protected setVolumePath(Ljava/lang/String;)V
    .locals 0
    .parameter "thePathOfUSB"

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->thisVolumePath:Ljava/lang/String;

    .line 870
    return-void
.end method

.method public updateApproximate(JJJ)V
    .locals 7
    .parameter "totalSize"
    .parameter "availSize"
    .parameter "reservedSize"

    .prologue
    .line 597
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p3, p4}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 600
    sub-long v2, p1, p5

    iput-wide v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    .line 602
    iget-wide v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    sub-long v0, v2, p3

    .line 604
    .local v0, usedSize:J
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->clear()V

    .line 605
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    const/4 v3, 0x0

    long-to-float v4, v0

    iget-wide v5, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    const v5, -0x777778

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 606
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->commit()V

    .line 608
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 609
    return-void
.end method

.method public updateDetails(Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 16
    .parameter "details"

    .prologue
    .line 620
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    const/4 v8, 0x1

    .line 621
    .local v8, showDetails:Z
    :goto_0
    if-nez v8, :cond_2

    .line 652
    :goto_1
    return-void

    .line 620
    .end local v8           #showDetails:Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 624
    .restart local v8       #showDetails:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v12}, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->clear()V

    .line 629
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/lgesettings/deviceinfo/StorageItemPreference;J)V

    .line 631
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    sget-object v15, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v1

    .line 633
    .local v1, dcimSize:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/lgesettings/deviceinfo/StorageItemPreference;J)V

    .line 635
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    sget-object v15, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x3

    sget-object v15, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x4

    sget-object v15, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v6

    .line 638
    .local v6, musicSize:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6, v7}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/lgesettings/deviceinfo/StorageItemPreference;J)V

    .line 640
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v3

    .line 641
    .local v3, downloadsSize:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3, v4}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/lgesettings/deviceinfo/StorageItemPreference;J)V

    .line 643
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/lgesettings/deviceinfo/StorageItemPreference;J)V

    .line 644
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/lgesettings/deviceinfo/StorageItemPreference;J)V

    .line 646
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    .line 647
    .local v9, userPref:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v13, v9, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;->userHandle:I

    invoke-virtual {v12, v13}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    .line 648
    .local v10, userSize:J
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/lgesettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 651
    .end local v9           #userPref:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;
    .end local v10           #userSize:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v12}, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->commit()V

    goto/16 :goto_1
.end method

.method public updateDetails_vzw(Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 23
    .parameter "details"

    .prologue
    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v19

    if-eqz v19, :cond_1

    :cond_0
    const/4 v13, 0x1

    .line 655
    .local v13, showDetails:Z
    :goto_0
    if-nez v13, :cond_2

    .line 692
    :goto_1
    return-void

    .line 654
    .end local v13           #showDetails:Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 659
    .restart local v13       #showDetails:Z
    :cond_2
    sget-wide v19, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mVZWTotalSpace:J

    const-wide/16 v21, 0x400

    mul-long v19, v19, v21

    const-wide/16 v21, 0x400

    mul-long v19, v19, v21

    const-wide/16 v21, 0x400

    mul-long v14, v19, v21

    .line 660
    .local v14, totalSize:J
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->clear()V

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/lgesettings/deviceinfo/StorageItemPreference;J)V

    .line 669
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    sget-object v22, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v22, v20, v21

    const/16 v21, 0x2

    sget-object v22, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v4

    .line 671
    .local v4, dcimSize:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4, v5}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/lgesettings/deviceinfo/StorageItemPreference;J)V

    .line 673
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v22, v20, v21

    const/16 v21, 0x1

    sget-object v22, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v22, v20, v21

    const/16 v21, 0x2

    sget-object v22, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v22, v20, v21

    const/16 v21, 0x3

    sget-object v22, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v22, v20, v21

    const/16 v21, 0x4

    sget-object v22, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v9

    .line 676
    .local v9, musicSize:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v9, v10}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/lgesettings/deviceinfo/StorageItemPreference;J)V

    .line 678
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v6

    .line 679
    .local v6, downloadsSize:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6, v7}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/lgesettings/deviceinfo/StorageItemPreference;J)V

    .line 681
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    add-long v19, v19, v4

    add-long v19, v19, v9

    add-long v19, v19, v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    sub-long v19, v14, v19

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-wide/from16 v21, v0

    add-long v11, v19, v21

    .line 682
    .local v11, newMisc:J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-wide/from16 v19, v0

    sub-long v19, v11, v19

    sput-wide v19, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->miscForSystemData:J

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/lgesettings/deviceinfo/StorageItemPreference;J)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v11, v12}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/lgesettings/deviceinfo/StorageItemPreference;J)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;

    .line 688
    .local v16, userPref:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/lgesettings/deviceinfo/StorageItemPreference;->userHandle:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v17

    .line 689
    .local v17, userSize:J
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/lgesettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    .line 691
    .end local v16           #userPref:Lcom/android/lgesettings/deviceinfo/StorageItemPreference;
    .end local v17           #userSize:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/lgesettings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->commit()V

    goto/16 :goto_1
.end method
