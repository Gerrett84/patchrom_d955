.class public Landroid/app/KeyguardManager$KeyguardLock;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/KeyguardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyguardLock"
.end annotation


# instance fields
.field private mTag:Ljava/lang/String;

.field private mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/app/KeyguardManager;


# direct methods
.method constructor <init>(Landroid/app/KeyguardManager;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "tag"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    .line 52
    iput-object p2, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public disableKeyguard()V
    .locals 3

    .prologue
    .line 73
    :try_start_0
    const-string v0, "KeyguardManager.KeyguardLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keyguard is disabled from App. Tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    #getter for: Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;
    invoke-static {v0}, Landroid/app/KeyguardManager;->access$000(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reenableKeyguard()V
    .locals 2

    .prologue
    .line 96
    :try_start_0
    const-string v0, "KeyguardManager.KeyguardLock"

    const-string v1, "Keyguard is enabled from App."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    #getter for: Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;
    invoke-static {v0}, Landroid/app/KeyguardManager;->access$000(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->reenableKeyguard(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method
