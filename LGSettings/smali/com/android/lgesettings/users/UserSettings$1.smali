.class Lcom/android/lgesettings/users/UserSettings$1;
.super Landroid/os/Handler;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/users/UserSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/lgesettings/users/UserSettings$1;->this$0:Lcom/android/lgesettings/users/UserSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings$1;->this$0:Lcom/android/lgesettings/users/UserSettings;

    #calls: Lcom/android/lgesettings/users/UserSettings;->updateUserList()V
    invoke-static {v0}, Lcom/android/lgesettings/users/UserSettings;->access$000(Lcom/android/lgesettings/users/UserSettings;)V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/users/UserSettings$1;->this$0:Lcom/android/lgesettings/users/UserSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/lgesettings/users/UserSettings;->onUserCreated(I)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/users/UserSettings;->access$100(Lcom/android/lgesettings/users/UserSettings;I)V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
