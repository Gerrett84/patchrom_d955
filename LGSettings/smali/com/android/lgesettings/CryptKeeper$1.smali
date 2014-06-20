.class Lcom/android/lgesettings/CryptKeeper$1;
.super Landroid/os/Handler;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/lgesettings/CryptKeeper$1;->this$0:Lcom/android/lgesettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 234
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 236
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/CryptKeeper$1;->this$0:Lcom/android/lgesettings/CryptKeeper;

    #calls: Lcom/android/lgesettings/CryptKeeper;->updateProgress()V
    invoke-static {v0}, Lcom/android/lgesettings/CryptKeeper;->access$700(Lcom/android/lgesettings/CryptKeeper;)V

    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/CryptKeeper$1;->this$0:Lcom/android/lgesettings/CryptKeeper;

    #calls: Lcom/android/lgesettings/CryptKeeper;->cooldown()V
    invoke-static {v0}, Lcom/android/lgesettings/CryptKeeper;->access$200(Lcom/android/lgesettings/CryptKeeper;)V

    goto :goto_0

    .line 244
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/CryptKeeper$1;->this$0:Lcom/android/lgesettings/CryptKeeper;

    #calls: Lcom/android/lgesettings/CryptKeeper;->notifyUser()V
    invoke-static {v0}, Lcom/android/lgesettings/CryptKeeper;->access$800(Lcom/android/lgesettings/CryptKeeper;)V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
