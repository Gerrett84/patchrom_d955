.class Lcom/android/lgesettings/IccLockSettings$1;
.super Landroid/os/Handler;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/lgesettings/IccLockSettings$1;->this$0:Lcom/android/lgesettings/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 125
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 126
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings$1;->this$0:Lcom/android/lgesettings/IccLockSettings;

    #calls: Lcom/android/lgesettings/IccLockSettings;->iccLockChanged(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/lgesettings/IccLockSettings;->access$000(Lcom/android/lgesettings/IccLockSettings;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings$1;->this$0:Lcom/android/lgesettings/IccLockSettings;

    #calls: Lcom/android/lgesettings/IccLockSettings;->iccPinChanged(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/lgesettings/IccLockSettings;->access$100(Lcom/android/lgesettings/IccLockSettings;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings$1;->this$0:Lcom/android/lgesettings/IccLockSettings;

    #calls: Lcom/android/lgesettings/IccLockSettings;->updatePreferences()V
    invoke-static {v1}, Lcom/android/lgesettings/IccLockSettings;->access$200(Lcom/android/lgesettings/IccLockSettings;)V

    goto :goto_0

    .line 137
    :pswitch_3
    iget-object v1, p0, Lcom/android/lgesettings/IccLockSettings$1;->this$0:Lcom/android/lgesettings/IccLockSettings;

    #calls: Lcom/android/lgesettings/IccLockSettings;->iccEnterPinChange(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/lgesettings/IccLockSettings;->access$300(Lcom/android/lgesettings/IccLockSettings;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
