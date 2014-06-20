.class public Lcom/android/lgesettings/defaultapp/DefaultAppSettings;
.super Landroid/app/ListFragment;
.source "DefaultAppSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;,
        Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;,
        Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;,
        Lcom/android/lgesettings/defaultapp/DefaultAppSettings$SortName;,
        Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;
    }
.end annotation


# static fields
.field private static defaultAppFragment:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

.field static mApplicationInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsAttached:Z


# instance fields
.field mAdapter:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;

.field mEmptyView:Landroid/view/View;

.field mHandler:Landroid/os/Handler;

.field mIconLoader:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;

.field private mInflater:Landroid/view/LayoutInflater;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mUpdateThread:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    sput-object v1, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->defaultAppFragment:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mIsAttached:Z

    .line 61
    sput-object v1, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mApplicationInfos:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mUpdateThread:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;

    .line 59
    iput-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mIconLoader:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;

    .line 62
    iput-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mAdapter:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;

    .line 63
    iput-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    iput-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mEmptyView:Landroid/view/View;

    .line 277
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mIsAttached:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/defaultapp/DefaultAppSettings;)Landroid/hardware/usb/IUsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/defaultapp/DefaultAppSettings;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public static newInstance()Lcom/android/lgesettings/defaultapp/DefaultAppSettings;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->defaultAppFragment:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    invoke-direct {v0}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;-><init>()V

    sput-object v0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->defaultAppFragment:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    .line 92
    :cond_0
    sget-object v0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->defaultAppFragment:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 69
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 85
    :cond_0
    :goto_0
    return v2

    .line 71
    :pswitch_0
    iget-object v3, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mAdapter:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 72
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 73
    .local v0, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/defaultapp/DefaultAppInfo;>;"
    iget-object v3, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mAdapter:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;

    invoke-virtual {v3, v0}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->updatePackageInfo(Ljava/util/List;)V

    .line 74
    iget-object v3, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mAdapter:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;

    invoke-virtual {v3}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->notifyDataSetChanged()V

    .line 76
    iget-object v3, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v1, 0x8

    .line 78
    .local v1, visibility:I
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v1           #visibility:I
    :cond_1
    move v1, v2

    .line 77
    goto :goto_1

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public makeDefaultPackageInfo(Landroid/content/pm/PackageManager;Landroid/hardware/usb/IUsbManager;)Ljava/util/List;
    .locals 11
    .parameter "pm"
    .parameter "um"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/hardware/usb/IUsbManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/defaultapp/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    sget-object v9, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mApplicationInfos:Ljava/util/List;

    if-nez v9, :cond_1

    .line 371
    const/4 v4, 0x0

    .line 396
    :cond_0
    return-object v4

    .line 373
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v4, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/defaultapp/DefaultAppInfo;>;"
    sget-object v9, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mApplicationInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 376
    .local v3, info:Landroid/content/pm/ApplicationInfo;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v8, prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v5, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    iget-object v9, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5, v8, v9}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 379
    const/4 v1, 0x0

    .line 381
    .local v1, hasUsbDefaults:Z
    :try_start_0
    iget-object v9, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {p2, v9, v10}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 386
    if-nez v1, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 387
    :cond_3
    const-string v9, "com.android.lgesettings"

    iget-object v10, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "com.lge.settings.easy"

    iget-object v10, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 391
    iget-object v9, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 392
    .local v7, mLabel:Ljava/lang/String;
    new-instance v6, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;

    iget-object v9, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v7, v9}, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .local v6, item:Lcom/android/lgesettings/defaultapp/DefaultAppInfo;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 382
    .end local v6           #item:Lcom/android/lgesettings/defaultapp/DefaultAppInfo;
    .end local v7           #mLabel:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 383
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 98
    .local v1, listView:Landroid/widget/ListView;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/defaultapp/DefaultAppInfo;>;"
    new-instance v2, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;-><init>(Lcom/android/lgesettings/defaultapp/DefaultAppSettings;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mAdapter:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;

    .line 100
    iget-object v2, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mAdapter:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 138
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mIsAttached:Z

    .line 139
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 140
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 160
    invoke-virtual {p0}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 162
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 163
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 165
    iget-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mIconLoader:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;

    if-nez v1, :cond_0

    .line 166
    new-instance v1, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;

    invoke-virtual {p0}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;-><init>(Lcom/android/lgesettings/defaultapp/DefaultAppSettings;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mIconLoader:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mApplicationInfos:Ljava/util/List;

    .line 170
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 150
    const v1, 0x7f040059

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 151
    .local v0, listView:Landroid/view/View;
    const v1, 0x7f0a00cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mEmptyView:Landroid/view/View;

    .line 152
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mUpdateThread:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mUpdateThread:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;

    invoke-virtual {v0}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->quit()Z

    .line 108
    iput-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mUpdateThread:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mIconLoader:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mIconLoader:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;

    invoke-virtual {v0}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;->stop()V

    .line 113
    iput-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mIconLoader:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;

    .line 116
    :cond_1
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 117
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mIsAttached:Z

    .line 145
    invoke-super {p0}, Landroid/app/ListFragment;->onDetach()V

    .line 146
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mUpdateThread:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;

    invoke-virtual {v0}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->stopUpdate()V

    .line 123
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 124
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mUpdateThread:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;

    const-string v1, "DefaultAppUpdate"

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;-><init>(Lcom/android/lgesettings/defaultapp/DefaultAppSettings;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mUpdateThread:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;

    .line 130
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mUpdateThread:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;

    invoke-virtual {v0}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->start()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mUpdateThread:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;

    invoke-virtual {v0}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->requestUpdate()V

    .line 133
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 134
    return-void
.end method
