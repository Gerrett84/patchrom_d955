.class final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;,
        Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    }
.end annotation


# static fields
.field private static final BUILT_IN_DISPLAY_IDS_TO_SCAN:[I = null

.field private static final TAG:Ljava/lang/String; = "LocalDisplayAdapter"


# instance fields
.field private final MSG_REGISTER_BROADCAST_RECEIVER:I

.field private firstboot:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHotplugReceiver:Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

.field private final mTempPhys:Landroid/view/Surface$PhysicalDisplayInfo;

.field private wfdSecureConnect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/display/LocalDisplayAdapter;->BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .locals 7
    .parameter "syncRoot"
    .parameter "context"
    .parameter "handler"
    .parameter "listener"

    .prologue
    const/4 v6, 0x1

    .line 82
    const-string v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Landroid/view/Surface$PhysicalDisplayInfo;

    invoke-direct {v0}, Landroid/view/Surface$PhysicalDisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mTempPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    .line 60
    iput-boolean v6, p0, Lcom/android/server/display/LocalDisplayAdapter;->wfdSecureConnect:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->firstboot:Z

    .line 62
    iput v6, p0, Lcom/android/server/display/LocalDisplayAdapter;->MSG_REGISTER_BROADCAST_RECEIVER:I

    .line 63
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$1;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/LocalDisplayAdapter$2;-><init>(Lcom/android/server/display/LocalDisplayAdapter;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/LocalDisplayAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->wfdSecureConnect:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/display/LocalDisplayAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->wfdSecureConnect:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/LocalDisplayAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter;->scanDisplaysLocked()V

    return-void
.end method

.method private scanDisplaysLocked()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 95
    sget-object v0, Lcom/android/server/display/LocalDisplayAdapter;->BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_6

    aget v1, v0, v4

    .line 96
    .local v1, builtInDisplayId:I
    invoke-static {v1}, Landroid/view/Surface;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v3

    .line 97
    .local v3, displayToken:Landroid/os/IBinder;
    if-eqz v3, :cond_4

    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter;->mTempPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    invoke-static {v3, v7}, Landroid/view/Surface;->getDisplayInfo(Landroid/os/IBinder;Landroid/view/Surface$PhysicalDisplayInfo;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 98
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 99
    .local v2, device:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-nez v2, :cond_3

    .line 103
    iget-boolean v7, p0, Lcom/android/server/display/LocalDisplayAdapter;->firstboot:Z

    if-eqz v7, :cond_0

    if-ne v1, v8, :cond_0

    .line 104
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 105
    iput-boolean v9, p0, Lcom/android/server/display/LocalDisplayAdapter;->firstboot:Z

    .line 107
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/display/LocalDisplayAdapter;->wfdSecureConnect:Z

    if-nez v7, :cond_2

    if-ne v1, v8, :cond_2

    .line 108
    new-instance v6, Landroid/view/Surface$PhysicalDisplayInfo;

    invoke-direct {v6}, Landroid/view/Surface$PhysicalDisplayInfo;-><init>()V

    .line 109
    .local v6, wfdPhys:Landroid/view/Surface$PhysicalDisplayInfo;
    invoke-static {v3, v6}, Landroid/view/Surface;->getDisplayInfo(Landroid/os/IBinder;Landroid/view/Surface$PhysicalDisplayInfo;)Z

    .line 110
    iput-boolean v9, v6, Landroid/view/Surface$PhysicalDisplayInfo;->secure:Z

    .line 111
    new-instance v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .end local v2           #device:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    invoke-direct {v2, p0, v3, v1, v6}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;ILandroid/view/Surface$PhysicalDisplayInfo;)V

    .line 116
    .end local v6           #wfdPhys:Landroid/view/Surface$PhysicalDisplayInfo;
    .restart local v2       #device:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    :goto_1
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    invoke-virtual {p0, v2, v8}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 95
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
    :cond_2
    new-instance v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .end local v2           #device:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter;->mTempPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    invoke-direct {v2, p0, v3, v1, v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;ILandroid/view/Surface$PhysicalDisplayInfo;)V

    .restart local v2       #device:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    goto :goto_1

    .line 118
    :cond_3
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter;->mTempPhys:Landroid/view/Surface$PhysicalDisplayInfo;

    invoke-virtual {v2, v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked(Landroid/view/Surface$PhysicalDisplayInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 120
    const/4 v7, 0x2

    invoke-virtual {p0, v2, v7}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_2

    .line 123
    .end local v2           #device:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    :cond_4
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 124
    .restart local v2       #device:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-eqz v2, :cond_1

    .line 127
    if-ne v1, v8, :cond_5

    .line 128
    iput-boolean v8, p0, Lcom/android/server/display/LocalDisplayAdapter;->wfdSecureConnect:Z

    .line 131
    :cond_5
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 132
    const/4 v7, 0x3

    invoke-virtual {p0, v2, v7}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_2

    .line 136
    .end local v1           #builtInDisplayId:I
    .end local v2           #device:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .end local v3           #displayToken:Landroid/os/IBinder;
    :cond_6
    return-void
.end method


# virtual methods
.method public registerLocked()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 89
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mHotplugReceiver:Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

    .line 90
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter;->scanDisplaysLocked()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->firstboot:Z

    .line 92
    return-void
.end method
