.class Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$1;
.super Landroid/os/Handler;
.source "LgeKeyguardPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->handlePackageAdded(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->access$000(Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->handlePackageRemoved(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->access$100(Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->handlePackageReplaced(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->access$200(Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
