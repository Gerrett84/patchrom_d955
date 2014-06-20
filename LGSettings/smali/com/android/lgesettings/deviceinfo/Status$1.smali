.class Lcom/android/lgesettings/deviceinfo/Status$1;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field strResponseData:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/Status;)V
    .locals 1
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/Status$1;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 479
    const-string v0, ""

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status$1;->strResponseData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 481
    const-string v1, "aboutphone # Status"

    const-string v2, "m_display_run1 (4012 , Request .. serial number)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/16 v1, 0xfac

    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status$1;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    invoke-virtual {v2}, Lcom/android/lgesettings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "hw_version"

    invoke-static {v1, v2, v3}, Lcom/android/lgesettings/lge/ATClientUtils;->atClient_readValue(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status$1;->strResponseData:Ljava/lang/String;

    .line 484
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status$1;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status$1;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    const-string v3, "rev_check"

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/deviceinfo/Status;->mRev:Landroid/preference/Preference;
    invoke-static {v1, v2}, Lcom/android/lgesettings/deviceinfo/Status;->access$1102(Lcom/android/lgesettings/deviceinfo/Status;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 490
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status$1;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mRev:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/Status;->access$1100(Lcom/android/lgesettings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 491
    const-string v1, "aboutphone # Status"

    const-string v2, "finded preference"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status$1;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mRev:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/Status;->access$1100(Lcom/android/lgesettings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status$1;->strResponseData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 494
    :cond_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, ie:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
