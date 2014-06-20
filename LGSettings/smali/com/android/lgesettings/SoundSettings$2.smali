.class Lcom/android/lgesettings/SoundSettings$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 349
    iput-object p1, p0, Lcom/android/lgesettings/SoundSettings$2;->this$0:Lcom/android/lgesettings/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 352
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 354
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings$2;->this$0:Lcom/android/lgesettings/SoundSettings;

    #getter for: Lcom/android/lgesettings/SoundSettings;->resultDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/lgesettings/SoundSettings;->access$100(Lcom/android/lgesettings/SoundSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, RadioPosition:I
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings$2;->this$0:Lcom/android/lgesettings/SoundSettings;

    #getter for: Lcom/android/lgesettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/lgesettings/SoundSettings;->access$200(Lcom/android/lgesettings/SoundSettings;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 358
    .local v1, ringermode:I
    packed-switch v1, :pswitch_data_0

    .line 397
    .end local v0           #RadioPosition:I
    .end local v1           #ringermode:I
    :cond_0
    :goto_0
    return-void

    .line 360
    .restart local v0       #RadioPosition:I
    .restart local v1       #ringermode:I
    :pswitch_0
    const/4 v0, 0x2

    .line 371
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings$2;->this$0:Lcom/android/lgesettings/SoundSettings;

    #getter for: Lcom/android/lgesettings/SoundSettings;->resultDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/lgesettings/SoundSettings;->access$100(Lcom/android/lgesettings/SoundSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 373
    .end local v0           #RadioPosition:I
    .end local v1           #ringermode:I
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings$2;->this$0:Lcom/android/lgesettings/SoundSettings;

    #calls: Lcom/android/lgesettings/SoundSettings;->updateState(Z)V
    invoke-static {v2, v4}, Lcom/android/lgesettings/SoundSettings;->access$300(Lcom/android/lgesettings/SoundSettings;Z)V

    goto :goto_0

    .line 363
    .restart local v0       #RadioPosition:I
    .restart local v1       #ringermode:I
    :pswitch_1
    const/4 v0, 0x1

    .line 364
    goto :goto_1

    .line 366
    :pswitch_2
    const/4 v0, 0x0

    .line 367
    goto :goto_1

    .line 375
    .end local v0           #RadioPosition:I
    .end local v1           #ringermode:I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 376
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings$2;->this$0:Lcom/android/lgesettings/SoundSettings;

    #calls: Lcom/android/lgesettings/SoundSettings;->handleDockChange(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/android/lgesettings/SoundSettings;->access$400(Lcom/android/lgesettings/SoundSettings;Landroid/content/Intent;)V

    goto :goto_0

    .line 378
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 379
    const-string v2, "SoundSettings"

    const-string v3, "#####ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings$2;->this$0:Lcom/android/lgesettings/SoundSettings;

    #calls: Lcom/android/lgesettings/SoundSettings;->do_updateRingtoneName()V
    invoke-static {v2}, Lcom/android/lgesettings/SoundSettings;->access$500(Lcom/android/lgesettings/SoundSettings;)V

    goto :goto_0

    .line 382
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lge.settings.QMODE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 383
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings$2;->this$0:Lcom/android/lgesettings/SoundSettings;

    #getter for: Lcom/android/lgesettings/SoundSettings;->mQuietMode:Lcom/android/lgesettings/QuietModePreference;
    invoke-static {v2}, Lcom/android/lgesettings/SoundSettings;->access$600(Lcom/android/lgesettings/SoundSettings;)Lcom/android/lgesettings/QuietModePreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings$2;->this$0:Lcom/android/lgesettings/SoundSettings;

    #getter for: Lcom/android/lgesettings/SoundSettings;->mQuietMode:Lcom/android/lgesettings/QuietModePreference;
    invoke-static {v2}, Lcom/android/lgesettings/SoundSettings;->access$600(Lcom/android/lgesettings/SoundSettings;)Lcom/android/lgesettings/QuietModePreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietModePreference;->setCheckedUpdate()V

    .line 386
    invoke-static {}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getSelectSoundProfileFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings$2;->this$0:Lcom/android/lgesettings/SoundSettings;

    #calls: Lcom/android/lgesettings/SoundSettings;->showSoundProfileDialog()V
    invoke-static {v2}, Lcom/android/lgesettings/SoundSettings;->access$700(Lcom/android/lgesettings/SoundSettings;)V

    .line 388
    invoke-static {v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setSelectSoundProfileFlag(Z)V

    goto :goto_0

    .line 391
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "quiet_time_chanted_action"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings$2;->this$0:Lcom/android/lgesettings/SoundSettings;

    #getter for: Lcom/android/lgesettings/SoundSettings;->mTimedSilent:Lcom/android/lgesettings/QuietTimeSwitchPreference;
    invoke-static {v2}, Lcom/android/lgesettings/SoundSettings;->access$800(Lcom/android/lgesettings/SoundSettings;)Lcom/android/lgesettings/QuietTimeSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 393
    const-string v2, "SoundSettings"

    const-string v3, "#####QUIET_TIME_CHANTED_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings$2;->this$0:Lcom/android/lgesettings/SoundSettings;

    #calls: Lcom/android/lgesettings/SoundSettings;->updateState(Z)V
    invoke-static {v2, v4}, Lcom/android/lgesettings/SoundSettings;->access$300(Lcom/android/lgesettings/SoundSettings;Z)V

    goto/16 :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
