.class Lcom/android/lgesettings/TimedSilentSettings$3;
.super Ljava/lang/Object;
.source "TimedSilentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TimedSilentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TimedSilentSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TimedSilentSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/lgesettings/TimedSilentSettings$3;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "_dialog"

    .prologue
    .line 351
    const-string v0, "TimedSilentSettings"

    const-string v1, "popup dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v0, "Cancel"

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings$3;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->position:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/TimedSilentSettings;->access$200(Lcom/android/lgesettings/TimedSilentSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings$3;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings$3;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mHour:I
    invoke-static {v1}, Lcom/android/lgesettings/TimedSilentSettings;->access$300(Lcom/android/lgesettings/TimedSilentSettings;)I

    move-result v1

    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings$3;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mMinute:I
    invoke-static {v2}, Lcom/android/lgesettings/TimedSilentSettings;->access$400(Lcom/android/lgesettings/TimedSilentSettings;)I

    move-result v2

    #calls: Lcom/android/lgesettings/TimedSilentSettings;->updateTime(II)V
    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/TimedSilentSettings;->access$500(Lcom/android/lgesettings/TimedSilentSettings;II)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings$3;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/TimedSilentSettings;->dialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/lgesettings/TimedSilentSettings;->access$602(Lcom/android/lgesettings/TimedSilentSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 356
    return-void
.end method
