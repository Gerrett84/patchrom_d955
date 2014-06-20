.class Lcom/android/lgesettings/DataUsageSummary$2;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DataUsageSummary;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$2;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4
    .parameter "o"
    .parameter "arg"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 384
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary$2;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/lgesettings/DataUsageSummary;->aboidBlink:Z

    if-ne v0, v2, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary$2;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 388
    .local v0, enabled:Z
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary$2;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #setter for: Lcom/android/lgesettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v2, v3}, Lcom/android/lgesettings/DataUsageSummary;->access$002(Lcom/android/lgesettings/DataUsageSummary;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 390
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary$2;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #calls: Lcom/android/lgesettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v1}, Lcom/android/lgesettings/DataUsageSummary;->access$100(Lcom/android/lgesettings/DataUsageSummary;Z)V

    .line 392
    #calls: Lcom/android/lgesettings/DataUsageSummary;->setConfirmDialogShowed(Z)V
    invoke-static {v1}, Lcom/android/lgesettings/DataUsageSummary;->access$200(Z)V

    goto :goto_0

    .end local v0           #enabled:Z
    :cond_2
    move v0, v1

    .line 387
    goto :goto_1
.end method
