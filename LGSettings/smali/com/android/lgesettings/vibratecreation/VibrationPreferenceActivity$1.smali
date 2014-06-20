.class Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "VibrationPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity$1;->this$0:Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity$1;->this$0:Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity$1;->this$0:Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->access$100(Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    #setter for: Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->ringerMode:I
    invoke-static {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->access$002(Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;I)I

    .line 64
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity$1;->this$0:Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity$1;->this$0:Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->ringerMode:I
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->access$000(Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;)I

    move-result v1

    #calls: Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->access$200(Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;I)V

    .line 66
    :cond_0
    return-void
.end method
