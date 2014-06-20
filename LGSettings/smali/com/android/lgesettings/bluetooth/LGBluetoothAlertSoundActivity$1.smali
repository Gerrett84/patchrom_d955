.class Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity$1;
.super Ljava/lang/Object;
.source "LGBluetoothAlertSoundActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 237
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 238
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->access$002(Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;->finish()V

    .line 242
    return-void
.end method
