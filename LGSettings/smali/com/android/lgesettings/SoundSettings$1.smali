.class Lcom/android/lgesettings/SoundSettings$1;
.super Landroid/os/Handler;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/lgesettings/SoundSettings$1;->this$0:Lcom/android/lgesettings/SoundSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 327
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 345
    :goto_0
    :pswitch_0
    return-void

    .line 335
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings$1;->this$0:Lcom/android/lgesettings/SoundSettings;

    #calls: Lcom/android/lgesettings/SoundSettings;->do_handleMessage_Ringtone(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/lgesettings/SoundSettings;->access$000(Lcom/android/lgesettings/SoundSettings;Landroid/os/Message;)V

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
