.class public Lcom/lge/vmware/VMwareUtils;
.super Ljava/lang/Object;
.source "VMwareUtils.java"


# static fields
.field private static final SINGLETON:Lcom/lge/vmware/VMwareUtils;


# instance fields
.field private final IMPORTANCE_FOREGROUND:I

.field private final IMPORTANCE_PERCEPTIBLE:I

.field private final IMPORTANCE_VISIBLE:I

.field private final VMWARE_FEATURE_PROP:Ljava/lang/String;

.field private mIsVMwareSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/lge/vmware/VMwareUtils;

    invoke-direct {v0}, Lcom/lge/vmware/VMwareUtils;-><init>()V

    sput-object v0, Lcom/lge/vmware/VMwareUtils;->SINGLETON:Lcom/lge/vmware/VMwareUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, "ro.lge.b2b.vmware"

    iput-object v0, p0, Lcom/lge/vmware/VMwareUtils;->VMWARE_FEATURE_PROP:Ljava/lang/String;

    .line 27
    iput-boolean v1, p0, Lcom/lge/vmware/VMwareUtils;->mIsVMwareSet:Z

    .line 28
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/vmware/VMwareUtils;->IMPORTANCE_FOREGROUND:I

    .line 30
    const/16 v0, 0xc8

    iput v0, p0, Lcom/lge/vmware/VMwareUtils;->IMPORTANCE_VISIBLE:I

    .line 32
    const/16 v0, 0x82

    iput v0, p0, Lcom/lge/vmware/VMwareUtils;->IMPORTANCE_PERCEPTIBLE:I

    .line 43
    const-string/jumbo v0, "ro.lge.b2b.vmware"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/vmware/VMwareUtils;->mIsVMwareSet:Z

    .line 44
    return-void
.end method

.method public static get()Lcom/lge/vmware/VMwareUtils;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/lge/vmware/VMwareUtils;->SINGLETON:Lcom/lge/vmware/VMwareUtils;

    return-object v0
.end method


# virtual methods
.method public checkVMware()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/lge/vmware/VMwareUtils;->mIsVMwareSet:Z

    return v0
.end method

.method public isVisible(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 91
    iget-boolean v5, p0, Lcom/lge/vmware/VMwareUtils;->mIsVMwareSet:Z

    if-eqz v5, :cond_0

    .line 92
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 94
    .local v0, aMgr:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 97
    .local v2, appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_1

    .line 110
    .end local v0           #aMgr:Landroid/app/ActivityManager;
    .end local v2           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    :goto_0
    return v4

    .line 101
    .restart local v0       #aMgr:Landroid/app/ActivityManager;
    .restart local v2       #appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 102
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-eq v5, v6, :cond_3

    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_3

    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x82

    if-ne v5, v6, :cond_2

    :cond_3
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v6, "com.vmware.mvp.uiproxy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    const/4 v4, 0x1

    goto :goto_0
.end method
