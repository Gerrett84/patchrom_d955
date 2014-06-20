.class Lcom/android/internal/telephony/uicc/SIMRecords$1;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 363
    const/4 v0, 0x0

    .line 365
    .local v0, appIndex:I
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appIndex"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 369
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 380
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$200()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->dialogProgress:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$300(Lcom/android/internal/telephony/uicc/SIMRecords;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->dialogProgress:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$300(Lcom/android/internal/telephony/uicc/SIMRecords;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 384
    :cond_0
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$202(Z)Z

    .line 385
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$002(Z)Z

    .line 386
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$102(Z)Z

    .line 387
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords$1;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 388
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "CUST Changed"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 390
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_1
    return-void

    .line 371
    :pswitch_0
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$002(Z)Z

    goto :goto_1

    .line 374
    :pswitch_1
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$102(Z)Z

    goto :goto_1

    .line 377
    :pswitch_2
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$202(Z)Z

    goto :goto_1

    .line 366
    :catch_0
    move-exception v2

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
