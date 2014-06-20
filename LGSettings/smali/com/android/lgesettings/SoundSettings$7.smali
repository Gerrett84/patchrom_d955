.class Lcom/android/lgesettings/SoundSettings$7;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/SoundSettings;->createDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/SoundSettings;

.field final synthetic val$soundProfile:I


# direct methods
.method constructor <init>(Lcom/android/lgesettings/SoundSettings;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1773
    iput-object p1, p0, Lcom/android/lgesettings/SoundSettings$7;->this$0:Lcom/android/lgesettings/SoundSettings;

    iput p2, p0, Lcom/android/lgesettings/SoundSettings$7;->val$soundProfile:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1776
    iget v2, p0, Lcom/android/lgesettings/SoundSettings$7;->val$soundProfile:I

    if-ne v2, v3, :cond_1

    .line 1777
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings$7;->this$0:Lcom/android/lgesettings/SoundSettings;

    #getter for: Lcom/android/lgesettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/lgesettings/SoundSettings;->access$200(Lcom/android/lgesettings/SoundSettings;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1780
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings$7;->this$0:Lcom/android/lgesettings/SoundSettings;

    #getter for: Lcom/android/lgesettings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/SoundSettings;->access$900(Lcom/android/lgesettings/SoundSettings;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1781
    .local v0, mVibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1787
    .end local v0           #mVibrator:Landroid/os/Vibrator;
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings$7;->this$0:Lcom/android/lgesettings/SoundSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;-><init>(Landroid/content/Context;)V

    .line 1788
    .local v1, qModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    iget v2, p0, Lcom/android/lgesettings/SoundSettings$7;->val$soundProfile:I

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBBeforeAudioMode(I)V

    .line 1789
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setSwichQuietMode(Z)V

    .line 1790
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings$7;->this$0:Lcom/android/lgesettings/SoundSettings;

    #calls: Lcom/android/lgesettings/SoundSettings;->showSoundProfileDialog()V
    invoke-static {v2}, Lcom/android/lgesettings/SoundSettings;->access$700(Lcom/android/lgesettings/SoundSettings;)V

    .line 1791
    return-void

    .line 1783
    .end local v1           #qModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    :cond_1
    iget v2, p0, Lcom/android/lgesettings/SoundSettings$7;->val$soundProfile:I

    if-ne v2, v4, :cond_0

    .line 1784
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings$7;->this$0:Lcom/android/lgesettings/SoundSettings;

    #getter for: Lcom/android/lgesettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/lgesettings/SoundSettings;->access$200(Lcom/android/lgesettings/SoundSettings;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method
