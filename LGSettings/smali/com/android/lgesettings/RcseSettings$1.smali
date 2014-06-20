.class Lcom/android/lgesettings/RcseSettings$1;
.super Landroid/os/Handler;
.source "RcseSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/RcseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/RcseSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/RcseSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/lgesettings/RcseSettings$1;->this$0:Lcom/android/lgesettings/RcseSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/RcseSettings$1;->this$0:Lcom/android/lgesettings/RcseSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/RcseSettings;->checkMultiClient()V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/RcseSettings$1;->this$0:Lcom/android/lgesettings/RcseSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/RcseSettings;->editPref()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
