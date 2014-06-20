.class public Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;
.super Ljava/lang/Object;
.source "CallStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallStateBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceLock"
.end annotation


# static fields
.field private static sLockCount:I

.field private static sMutex:Ljava/lang/Object;


# instance fields
.field locked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->locked:Z

    .line 42
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    sget v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/internal/telephony/CallStateBroadcaster;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/android/internal/telephony/CallStateBroadcaster;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallStateBroadcaster$1;)V

    invoke-static {v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->access$002(Lcom/android/internal/telephony/CallStateBroadcaster;)Lcom/android/internal/telephony/CallStateBroadcaster;

    .line 46
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->locked:Z

    .line 47
    sget v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->unlock()V

    .line 66
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->locked:Z

    if-eqz v0, :cond_1

    .line 54
    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    sget v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->sLockCount:I

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->access$002(Lcom/android/internal/telephony/CallStateBroadcaster;)Lcom/android/internal/telephony/CallStateBroadcaster;

    .line 58
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;->locked:Z

    .line 59
    monitor-exit v1

    .line 61
    :cond_1
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
