.class Lcom/android/lgesettings/RingerVolumePreference$2;
.super Landroid/content/BroadcastReceiver;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/RingerVolumePreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/RingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/RingerVolumePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/lgesettings/RingerVolumePreference$2;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 340
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    const-string v1, "RingerVolumePreference"

    const-string v2, "ACTION_MEDIA_MOUNTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v1, p0, Lcom/android/lgesettings/RingerVolumePreference$2;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/lgesettings/RingerVolumePreference$2;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    const-string v1, "RingerVolumePreference"

    const-string v2, "ACTION_MEDIA_UNMOUNTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v1, p0, Lcom/android/lgesettings/RingerVolumePreference$2;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/lgesettings/RingerVolumePreference$2;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 354
    :cond_2
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    const-string v1, "RingerVolumePreference"

    const-string v2, "ACTION_MEDIA_EJECT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v1, p0, Lcom/android/lgesettings/RingerVolumePreference$2;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/android/lgesettings/RingerVolumePreference$2;->this$0:Lcom/android/lgesettings/RingerVolumePreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
