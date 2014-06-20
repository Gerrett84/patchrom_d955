.class public Lcom/android/lgesettings/users/UserSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final USER_DRAWABLES:[I


# instance fields
.field private mAddedUserId:I

.field private mAddingUser:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsOwner:Z

.field private mMePreference:Landroid/preference/Preference;

.field private mNicknamePreference:Lcom/android/lgesettings/SelectableEditTextPreference;

.field private mProfileExists:Z

.field private mRemovingUserId:I

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mUserListCategory:Landroid/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;

.field private ownerInfo:Lcom/android/lgesettings/users/MultiUserCheckBoxAndSettingsPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/lgesettings/users/UserSettings;->USER_DRAWABLES:[I

    return-void

    :array_0
    .array-data 0x4
        0x25t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
        0x29t 0x0t 0x2t 0x7ft
        0x2at 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
        0x2ct 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 114
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/lgesettings/users/UserSettings;->mRemovingUserId:I

    .line 115
    iput v0, p0, Lcom/android/lgesettings/users/UserSettings;->mAddedUserId:I

    .line 119
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    .line 121
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    .line 122
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/lgesettings/users/UserSettings;->mIsOwner:Z

    .line 125
    new-instance v0, Lcom/android/lgesettings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/users/UserSettings$1;-><init>(Lcom/android/lgesettings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Lcom/android/lgesettings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/users/UserSettings$2;-><init>(Lcom/android/lgesettings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/users/UserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/lgesettings/users/UserSettings;->updateUserList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/users/UserSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/lgesettings/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/users/UserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/lgesettings/users/UserSettings;->addUserNow()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/users/UserSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/lgesettings/users/UserSettings;->mAddedUserId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/users/UserSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/lgesettings/users/UserSettings;->switchUserNow(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/users/UserSettings;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/lgesettings/users/UserSettings;Landroid/content/pm/UserInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/lgesettings/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/lgesettings/users/UserSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/lgesettings/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/users/UserSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/lgesettings/users/UserSettings;->mRemovingUserId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/users/UserSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/lgesettings/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/users/UserSettings;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/users/UserSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/users/UserSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/lgesettings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/users/UserSettings;)Landroid/os/UserManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/users/UserSettings;Landroid/content/pm/UserInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/lgesettings/users/UserSettings;->assignProfilePhoto(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/lgesettings/users/UserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/lgesettings/users/UserSettings;->getProfileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/lgesettings/users/UserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/lgesettings/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method private addUserNow()V
    .locals 2

    .prologue
    .line 451
    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 452
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/lgesettings/users/UserSettings;->mAddingUser:Z

    .line 453
    invoke-direct {p0}, Lcom/android/lgesettings/users/UserSettings;->updateUserList()V

    .line 454
    new-instance v0, Lcom/android/lgesettings/users/UserSettings$8;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/users/UserSettings$8;-><init>(Lcom/android/lgesettings/users/UserSettings;)V

    invoke-virtual {v0}, Lcom/android/lgesettings/users/UserSettings$8;->start()V

    .line 470
    monitor-exit v1

    .line 471
    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private assignDefaultPhoto(Landroid/content/pm/UserInfo;)V
    .locals 5
    .parameter "user"

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/users/UserSettings;->USER_DRAWABLES:[I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object v4, Lcom/android/lgesettings/users/UserSettings;->USER_DRAWABLES:[I

    array-length v4, v4

    rem-int/2addr v3, v4

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 581
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 582
    return-void
.end method

.method private assignProfilePhoto(Landroid/content/pm/UserInfo;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/lgesettings/Utils;->copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    invoke-direct {p0, p1}, Lcom/android/lgesettings/users/UserSettings;->assignDefaultPhoto(Landroid/content/pm/UserInfo;)V

    .line 568
    :cond_0
    return-void
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 4
    .parameter "profileName"

    .prologue
    .line 327
    iget-object v3, p0, Lcom/android/lgesettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v3, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 328
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 329
    .local v2, myUserId:I
    iget-object v3, p0, Lcom/android/lgesettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 330
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 331
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 332
    .local v1, d:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/lgesettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 333
    iget-object v3, p0, Lcom/android/lgesettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 335
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private getProfileName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 571
    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/lgesettings/Utils;->getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 573
    iput-boolean v2, p0, Lcom/android/lgesettings/users/UserSettings;->mProfileExists:Z

    .line 575
    :cond_0
    return-object v0
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 1
    .parameter "user"

    .prologue
    .line 631
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, missingIcons:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/lgesettings/users/UserSettings$9;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/users/UserSettings$9;-><init>(Lcom/android/lgesettings/users/UserSettings;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/users/UserSettings$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 563
    return-void
.end method

.method private loadProfile()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 307
    iput-boolean v1, p0, Lcom/android/lgesettings/users/UserSettings;->mProfileExists:Z

    .line 308
    new-instance v0, Lcom/android/lgesettings/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/users/UserSettings$3;-><init>(Lcom/android/lgesettings/users/UserSettings;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/users/UserSettings$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 324
    return-void
.end method

.method private onAddUserClicked()V
    .locals 3

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_0
    iget v0, p0, Lcom/android/lgesettings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/lgesettings/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_0

    .line 340
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/users/UserSettings;->showDialog(I)V

    .line 342
    :cond_0
    monitor-exit v1

    .line 343
    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onRemoveUserClicked(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 347
    :try_start_0
    iget v0, p0, Lcom/android/lgesettings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/lgesettings/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_0

    .line 348
    iput p1, p0, Lcom/android/lgesettings/users/UserSettings;->mRemovingUserId:I

    .line 349
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/users/UserSettings;->showDialog(I)V

    .line 351
    :cond_0
    monitor-exit v1

    .line 352
    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUserCreated(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 355
    iput p1, p0, Lcom/android/lgesettings/users/UserSettings;->mAddedUserId:I

    .line 356
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/users/UserSettings;->showDialog(I)V

    .line 357
    return-void
.end method

.method private removeThisUser()V
    .locals 3

    .prologue
    .line 442
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 443
    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "UserSettings"

    const-string v2, "Unable to remove self user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeUserNow()V
    .locals 2

    .prologue
    .line 426
    iget v0, p0, Lcom/android/lgesettings/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 427
    invoke-direct {p0}, Lcom/android/lgesettings/users/UserSettings;->removeThisUser()V

    .line 438
    :goto_0
    return-void

    .line 429
    :cond_0
    new-instance v0, Lcom/android/lgesettings/users/UserSettings$7;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/users/UserSettings$7;-><init>(Lcom/android/lgesettings/users/UserSettings;)V

    invoke-virtual {v0}, Lcom/android/lgesettings/users/UserSettings$7;->start()V

    goto :goto_0
.end method

.method private setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 3
    .parameter "pref"
    .parameter "user"

    .prologue
    .line 585
    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 586
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 589
    :cond_0
    return-void
.end method

.method private setUserName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mNicknamePreference:Lcom/android/lgesettings/SelectableEditTextPreference;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/SelectableEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 594
    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 595
    return-void
.end method

.method private switchUserNow(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 475
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateUserList()V
    .locals 13

    .prologue
    const v12, 0x7f020025

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 482
    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v10}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v9

    .line 485
    .local v9, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 486
    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v11}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 489
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->isSupportMultiUser()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 490
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/MDMSettingsAdapter;->checkAllowMultiUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v7, missingIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 499
    .local v8, user:Landroid/content/pm/UserInfo;
    iget v1, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-ne v1, v3, :cond_5

    .line 500
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    .line 501
    .local v0, pref:Landroid/preference/Preference;
    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mNicknamePreference:Lcom/android/lgesettings/SelectableEditTextPreference;

    iget-object v3, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/SelectableEditTextPreference;->setText(Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mNicknamePreference:Lcom/android/lgesettings/SelectableEditTextPreference;

    iget-object v3, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/SelectableEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 517
    :cond_4
    :goto_2
    iget-object v1, v8, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 518
    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v3, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 519
    iget v1, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_1

    .line 504
    .end local v0           #pref:Landroid/preference/Preference;
    :cond_5
    new-instance v0, Lcom/android/lgesettings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_7

    move v4, v10

    :goto_3
    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V

    .line 506
    .restart local v0       #pref:Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 509
    iget v1, v8, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_6

    .line 510
    const v1, 0x7f080868

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 512
    :cond_6
    iget-object v1, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 513
    invoke-direct {p0, v8}, Lcom/android/lgesettings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 514
    const v1, 0x7f080867

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2

    .end local v0           #pref:Landroid/preference/Preference;
    :cond_7
    move v4, v11

    .line 504
    goto :goto_3

    .line 522
    .restart local v0       #pref:Landroid/preference/Preference;
    :cond_8
    invoke-direct {p0, v0, v8}, Lcom/android/lgesettings/users/UserSettings;->setPhotoId(Landroid/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_1

    .line 527
    .end local v0           #pref:Landroid/preference/Preference;
    .end local v8           #user:Landroid/content/pm/UserInfo;
    :cond_9
    iget-boolean v1, p0, Lcom/android/lgesettings/users/UserSettings;->mAddingUser:Z

    if-eqz v1, :cond_a

    .line 528
    new-instance v0, Lcom/android/lgesettings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v3, -0xa

    move v4, v11

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V

    .line 530
    .restart local v0       #pref:Landroid/preference/Preference;
    invoke-virtual {v0, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 531
    const v1, 0x7f080873

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 532
    const v1, 0x7f080878

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 533
    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setIcon(I)V

    .line 534
    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 536
    .end local v0           #pref:Landroid/preference/Preference;
    :cond_a
    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 539
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 540
    invoke-direct {p0, v7}, Lcom/android/lgesettings/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 668
    const v0, 0x7f08088c

    return v0
.end method

.method protected isProfileExisted()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 672
    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 673
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 676
    .local v7, profile:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 677
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 678
    .local v6, count:I
    if-lez v6, :cond_0

    .line 679
    iput-boolean v9, p0, Lcom/android/lgesettings/users/UserSettings;->mProfileExists:Z

    .line 686
    .end local v6           #count:I
    :goto_0
    iget-boolean v1, p0, Lcom/android/lgesettings/users/UserSettings;->mProfileExists:Z

    return v1

    .line 681
    .restart local v6       #count:I
    :cond_0
    iput-boolean v8, p0, Lcom/android/lgesettings/users/UserSettings;->mProfileExists:Z

    goto :goto_0

    .line 684
    .end local v6           #count:I
    :cond_1
    iput-boolean v8, p0, Lcom/android/lgesettings/users/UserSettings;->mProfileExists:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 636
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/lgesettings/users/UserPreference;

    if-eqz v1, :cond_0

    .line 637
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/users/UserPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/users/UserPreference;->getUserId()I

    move-result v0

    .line 638
    .local v0, userId:I
    invoke-direct {p0, v0}, Lcom/android/lgesettings/users/UserSettings;->onRemoveUserClicked(I)V

    .line 640
    .end local v0           #userId:I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 156
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 168
    const v0, 0x7f060071

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/users/UserSettings;->addPreferencesFromResource(I)V

    .line 169
    const-string v0, "user_list"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    .line 170
    const-string v0, "user_me"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    .line 171
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    const v1, 0x7f0400f9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 172
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 173
    iget-boolean v0, p0, Lcom/android/lgesettings/users/UserSettings;->mIsOwner:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    :cond_0
    const-string v0, "user_owner_info"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/users/MultiUserCheckBoxAndSettingsPreference;

    iput-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->ownerInfo:Lcom/android/lgesettings/users/MultiUserCheckBoxAndSettingsPreference;

    .line 177
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->ownerInfo:Lcom/android/lgesettings/users/MultiUserCheckBoxAndSettingsPreference;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/lgesettings/users/UserSettings;->mIsOwner:Z

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->ownerInfo:Lcom/android/lgesettings/users/MultiUserCheckBoxAndSettingsPreference;

    const v1, 0x7f08013e

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/users/MultiUserCheckBoxAndSettingsPreference;->setTitle(I)V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->ownerInfo:Lcom/android/lgesettings/users/MultiUserCheckBoxAndSettingsPreference;

    if-eqz v0, :cond_2

    .line 181
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "com.android.lgesettings"

    const-string v1, "com.android.lgesettings.Settings$OwnerInfoSettingsActivity"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->ownerInfo:Lcom/android/lgesettings/users/MultiUserCheckBoxAndSettingsPreference;

    invoke-virtual {v0, p0, v6}, Lcom/android/lgesettings/users/MultiUserCheckBoxAndSettingsPreference;->setFragmentIntent(Lcom/android/lgesettings/SettingsPreferenceFragment;Landroid/content/Intent;)V

    .line 189
    .end local v6           #intent:Landroid/content/Intent;
    :cond_2
    const-string v0, "user_nickname"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/SelectableEditTextPreference;

    iput-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mNicknamePreference:Lcom/android/lgesettings/SelectableEditTextPreference;

    .line 190
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mNicknamePreference:Lcom/android/lgesettings/SelectableEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/SelectableEditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mNicknamePreference:Lcom/android/lgesettings/SelectableEditTextPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/SelectableEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 193
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings;->mNicknamePreference:Lcom/android/lgesettings/SelectableEditTextPreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SelectableEditTextPreference;->setInitialSelectionMode(I)V

    .line 195
    invoke-direct {p0}, Lcom/android/lgesettings/users/UserSettings;->loadProfile()V

    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/users/UserSettings;->setHasOptionsMenu(Z)V

    .line 197
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 198
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/lgesettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 201
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "dialogId"

    .prologue
    const v3, 0x104000a

    const/high16 v4, 0x104

    const/4 v0, 0x0

    .line 368
    packed-switch p1, :pswitch_data_0

    .line 421
    :goto_0
    return-object v0

    .line 370
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget v3, p0, Lcom/android/lgesettings/users/UserSettings;->mRemovingUserId:I

    if-ne v1, v3, :cond_0

    const v1, 0x7f080874

    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget v3, p0, Lcom/android/lgesettings/users/UserSettings;->mRemovingUserId:I

    if-ne v1, v3, :cond_1

    const v1, 0x7f080876

    :goto_2
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08087a

    new-instance v3, Lcom/android/lgesettings/users/UserSettings$4;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/users/UserSettings$4;-><init>(Lcom/android/lgesettings/users/UserSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 385
    .local v0, dlg:Landroid/app/Dialog;
    goto :goto_0

    .line 370
    .end local v0           #dlg:Landroid/app/Dialog;
    :cond_0
    const v1, 0x7f080875

    goto :goto_1

    :cond_1
    const v1, 0x7f080877

    goto :goto_2

    .line 388
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080871

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 393
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08086a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0810a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/users/UserSettings$5;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/users/UserSettings$5;-><init>(Lcom/android/lgesettings/users/UserSettings;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 404
    .restart local v0       #dlg:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 407
    .end local v0           #dlg:Landroid/app/Dialog;
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0810a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0810a4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08086f

    new-instance v3, Lcom/android/lgesettings/users/UserSettings$6;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/users/UserSettings$6;-><init>(Lcom/android/lgesettings/users/UserSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080870

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 418
    .restart local v0       #dlg:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 259
    iget-boolean v4, p0, Lcom/android/lgesettings/users/UserSettings;->mIsOwner:Z

    if-eqz v4, :cond_3

    .line 261
    const/4 v1, 0x1

    .line 262
    .local v1, enableAddUser:Z
    sget-boolean v4, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v4, :cond_0

    .line 264
    :try_start_0
    invoke-static {}, Lcom/android/lgesettings/lge/OverlayUtils;->getMultiUserEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 270
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v4

    iget-object v5, p0, Lcom/android/lgesettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 273
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->isSupportMultiUser()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 275
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/lgesettings/MDMSettingsAdapter;->checkAllowMultiUser()Z

    move-result v4

    if-nez v4, :cond_2

    .line 290
    .end local v1           #enableAddUser:Z
    :cond_1
    :goto_1
    return-void

    .line 280
    .restart local v1       #enableAddUser:Z
    :cond_2
    const v4, 0x7f080864

    invoke-interface {p1, v8, v7, v8, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 281
    .local v0, addUserItem:Landroid/view/MenuItem;
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 285
    .end local v0           #addUserItem:Landroid/view/MenuItem;
    .end local v1           #enableAddUser:Z
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, nickname:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080872

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v8, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 288
    .local v3, removeThisUser:Landroid/view/MenuItem;
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 265
    .end local v2           #nickname:Ljava/lang/String;
    .end local v3           #removeThisUser:Landroid/view/MenuItem;
    .restart local v1       #enableAddUser:Z
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 210
    if-eqz p3, :cond_1

    .line 211
    const-string v0, "adding_user"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "adding_user"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/users/UserSettings;->mAddedUserId:I

    .line 214
    :cond_0
    const-string v0, "removing_user"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    const-string v0, "removing_user"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/users/UserSettings;->mRemovingUserId:I

    .line 219
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 245
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 246
    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 361
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 363
    invoke-virtual {p0, p0}, Lcom/android/lgesettings/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 364
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 644
    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 645
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/lgesettings/users/UserSettings;->mAddingUser:Z

    .line 646
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/users/UserSettings;->mRemovingUserId:I

    .line 647
    invoke-direct {p0}, Lcom/android/lgesettings/users/UserSettings;->updateUserList()V

    .line 648
    monitor-exit v1

    .line 649
    return-void

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 294
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 295
    .local v0, itemId:I
    if-ne v0, v1, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/android/lgesettings/users/UserSettings;->onAddUserClicked()V

    .line 302
    :goto_0
    return v1

    .line 298
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 299
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/users/UserSettings;->onRemoveUserClicked(I)V

    goto :goto_0

    .line 302
    :cond_1
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 653
    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mNicknamePreference:Lcom/android/lgesettings/SelectableEditTextPreference;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    .line 654
    check-cast v0, Ljava/lang/String;

    .line 657
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/users/UserSettings;->mNicknamePreference:Lcom/android/lgesettings/SelectableEditTextPreference;

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ltz v1, :cond_0

    .line 659
    invoke-direct {p0, v0}, Lcom/android/lgesettings/users/UserSettings;->setUserName(Ljava/lang/String;)V

    .line 661
    :cond_0
    const/4 v1, 0x1

    .line 663
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .parameter "pref"

    .prologue
    const/4 v5, 0x1

    .line 599
    iget-object v3, p0, Lcom/android/lgesettings/users/UserSettings;->mMePreference:Landroid/preference/Preference;

    if-ne p1, v3, :cond_2

    .line 601
    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->isProfileExisted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 602
    const-string v3, "hsmodel"

    const-string v4, "new"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 605
    .local v0, editProfile:Landroid/content/Intent;
    const-string v3, "newLocalProfile"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 612
    :goto_0
    const-string v3, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 613
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/users/UserSettings;->startActivity(Landroid/content/Intent;)V

    .line 627
    .end local v0           #editProfile:Landroid/content/Intent;
    .end local p1
    :cond_0
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 607
    .restart local p1
    :cond_1
    const-string v3, "hsmodel"

    const-string v4, "edit"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    sget-object v4, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #editProfile:Landroid/content/Intent;
    goto :goto_0

    .line 614
    .end local v0           #editProfile:Landroid/content/Intent;
    :cond_2
    instance-of v3, p1, Lcom/android/lgesettings/users/UserPreference;

    if-eqz v3, :cond_0

    .line 615
    check-cast p1, Lcom/android/lgesettings/users/UserPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/lgesettings/users/UserPreference;->getUserId()I

    move-result v2

    .line 617
    .local v2, userId:I
    iget-object v3, p0, Lcom/android/lgesettings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 618
    .local v1, user:Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_3

    .line 619
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/users/UserSettings;->showDialog(I)V

    goto :goto_1

    .line 621
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/lgesettings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 622
    iget-object v3, p0, Lcom/android/lgesettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/lgesettings/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    iget v7, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 228
    invoke-direct {p0}, Lcom/android/lgesettings/users/UserSettings;->loadProfile()V

    .line 229
    invoke-direct {p0}, Lcom/android/lgesettings/users/UserSettings;->updateUserList()V

    .line 231
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->isSupportMultiUser()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->checkAllowMultiUser()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    :cond_0
    const-string v3, "mdm_disallow_multiuser_summary"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/users/UserSettings;->removePreference(Ljava/lang/String;)V

    .line 237
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/users/UserSettings;->ownerInfo:Lcom/android/lgesettings/users/MultiUserCheckBoxAndSettingsPreference;

    if-eqz v3, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/android/lgesettings/users/UserSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_owner_info_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 239
    .local v0, enabled:I
    iget-object v3, p0, Lcom/android/lgesettings/users/UserSettings;->ownerInfo:Lcom/android/lgesettings/users/MultiUserCheckBoxAndSettingsPreference;

    if-ne v0, v1, :cond_3

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/lgesettings/users/MultiUserCheckBoxAndSettingsPreference;->setChecked(Z)V

    .line 241
    .end local v0           #enabled:I
    :cond_2
    return-void

    .restart local v0       #enabled:I
    :cond_3
    move v1, v2

    .line 239
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 253
    const-string v0, "adding_user"

    iget v1, p0, Lcom/android/lgesettings/users/UserSettings;->mAddedUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    const-string v0, "removing_user"

    iget v1, p0, Lcom/android/lgesettings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    return-void
.end method
