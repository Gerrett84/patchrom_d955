.class Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UPlusRILEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UPlusRILEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockOrderIntentReceiver"
.end annotation


# static fields
.field public static final INTENT_ACTION_CDMA_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.CDMA_LOCK_ORDER"

.field public static final INTENT_ACTION_CDMA_MAINT_REQ:Ljava/lang/String; = "android.intent.action.CDMA_MAINT_REQ"

.field public static final INTENT_ACTION_EHRPD_AN_LOCK:Ljava/lang/String; = "android.intent.action.EHRPD_AN_LOCK"

.field public static final INTENT_ACTION_EHRPD_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.EHRPD_LOCK_ORDER"

.field public static final INTENT_ACTION_LGT_AUTH_LOCK:Ljava/lang/String; = "android.intent.action.LGT_AUTH_LOCK"

.field public static final INTENT_ACTION_LGT_HDR_NETWORK_ERROR:Ljava/lang/String; = "android.intent.action.LGT_HDR_NETWORK_ERROR"

.field public static final INTENT_ACTION_LTE_EMM_REJECT:Ljava/lang/String; = "android.intent.action.LTE_EMM_REJECT"

.field public static final INTENT_ACTION_LTE_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.LTE_LOCK_ORDER"

.field public static final INTENT_ACTION_LTE_MISSING_PHONE:Ljava/lang/String; = "com.lge.intent.action.LTE_MISSING_PHONE"

.field private static final TAG:Ljava/lang/String; = "LockOrderIntentReceiver"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Lcom/android/internal/telephony/UPlusRILEventDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;-><init>(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 550
    iget-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    const-string v4, "LockOrderIntentReceiver/onReceive"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.CDMA_LOCK_ORDER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.CDMA_MAINT_REQ"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 554
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    #setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnregister:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$202(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z

    .line 585
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive / result, mIsLGTUnregister : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    #getter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnregister:Z
    invoke-static {v5}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$200(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsLGTUnauthenticated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    #getter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnauthenticated:Z
    invoke-static {v5}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$300(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsLGTHDRNetworkError : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    #getter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTHDRNetworkError:Z
    invoke-static {v5}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$400(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsLTEAuthError : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    #getter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEAuthError:Z
    invoke-static {v5}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$500(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsLTEEMMReject : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    #getter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEEMMReject:Z
    invoke-static {v5}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$600(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRejectNum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    #getter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I
    invoke-static {v5}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$700(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 590
    iget-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    #calls: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->setPopUp()V
    invoke-static {v3}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$1000(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)V

    .line 591
    return-void

    .line 555
    :cond_2
    const-string v3, "android.intent.action.LGT_AUTH_LOCK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 556
    iget-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    #setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTUnauthenticated:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$302(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z

    goto/16 :goto_0

    .line 557
    :cond_3
    const-string v3, "android.intent.action.LGT_HDR_NETWORK_ERROR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 558
    iget-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    #setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLGTHDRNetworkError:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$402(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z

    goto/16 :goto_0

    .line 560
    :cond_4
    const-string v3, "android.intent.action.EHRPD_LOCK_ORDER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "android.intent.action.LTE_LOCK_ORDER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "android.intent.action.EHRPD_AN_LOCK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 563
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    #setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEAuthError:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$502(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z

    goto/16 :goto_0

    .line 568
    :cond_6
    const-string v3, "android.intent.action.LTE_EMM_REJECT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "com.lge.intent.action.LTE_MISSING_PHONE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 570
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->log(Ljava/lang/String;)V

    .line 571
    iget-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    #setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mIsLTEEMMReject:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$602(Lcom/android/internal/telephony/UPlusRILEventDispatcher;Z)Z

    .line 572
    iget-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    const-string v4, "rejectCode"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mRejectNum:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$702(Lcom/android/internal/telephony/UPlusRILEventDispatcher;I)I

    .line 573
    iget-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    const-string v4, "esmRejectCode"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mEsmRejectNum:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$802(Lcom/android/internal/telephony/UPlusRILEventDispatcher;I)I

    goto/16 :goto_0

    .line 575
    :cond_8
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 576
    const-string v3, "persist.radio.last_ltereject"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 577
    .local v2, lastLteRejectCause:I
    const/4 v3, 0x5

    if-eq v2, v3, :cond_9

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 579
    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.intent.action.LTE_MISSING_PHONE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v1, intentMissingPhone:Landroid/content/Intent;
    const-string v3, "rejectCode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    iget-object v3, p0, Lcom/android/internal/telephony/UPlusRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/UPlusRILEventDispatcher;

    #getter for: Lcom/android/internal/telephony/UPlusRILEventDispatcher;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/UPlusRILEventDispatcher;->access$900(Lcom/android/internal/telephony/UPlusRILEventDispatcher;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
