.class Lcom/android/lgesettings/DataUsageSummary$17;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataUsageSummary;
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
    .line 3313
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const v12, -0x777778

    const/high16 v11, -0x100

    const v10, 0x1020016

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3316
    if-nez p2, :cond_1

    .line 3425
    :cond_0
    :goto_0
    return-void

    .line 3319
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3345
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.skt.intent.action.USER_BACKG_SETTING"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3346
    const-string v5, "on_off"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3347
    .local v1, enabled:Z
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$3000(Lcom/android/lgesettings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v3

    .line 3349
    .local v3, getBackground:Z
    const-string v5, "DataUsage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " [LGE_DATA] USER_BACKG_SETTING :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    const-string v5, "DataUsage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " [LGE_DATA] getBackground :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    if-eq v3, v1, :cond_2

    .line 3353
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-virtual {v5, v1}, Lcom/android/lgesettings/DataUsageSummary;->setRestrictBackground(Z)V

    .line 3358
    .end local v1           #enabled:Z
    .end local v3           #getBackground:Z
    :cond_2
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3359
    const-string v5, "state"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3362
    .restart local v1       #enabled:Z
    if-ne v1, v6, :cond_9

    .line 3363
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$1300(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v8

    if-nez v1, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 3364
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$4100(Lcom/android/lgesettings/DataUsageSummary;)Landroid/view/View;

    move-result-object v8

    if-nez v1, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 3365
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$1600(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v8

    if-nez v1, :cond_6

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 3366
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$4200(Lcom/android/lgesettings/DataUsageSummary;)Landroid/view/View;

    move-result-object v8

    if-nez v1, :cond_7

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 3367
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$4300(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-nez v1, :cond_8

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 3377
    :goto_6
    if-ne v6, v1, :cond_f

    .line 3378
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$4100(Lcom/android/lgesettings/DataUsageSummary;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3379
    .local v2, ev:Landroid/widget/TextView;
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3381
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$4200(Lcom/android/lgesettings/DataUsageSummary;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3382
    .local v4, lv:Landroid/widget/TextView;
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3402
    :goto_7
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #calls: Lcom/android/lgesettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v5, v7}, Lcom/android/lgesettings/DataUsageSummary;->access$100(Lcom/android/lgesettings/DataUsageSummary;Z)V

    .line 3404
    #calls: Lcom/android/lgesettings/DataUsageSummary;->setConfirmDialogShowed(Z)V
    invoke-static {v7}, Lcom/android/lgesettings/DataUsageSummary;->access$200(Z)V

    .line 3407
    .end local v1           #enabled:Z
    .end local v2           #ev:Landroid/widget/TextView;
    .end local v4           #lv:Landroid/widget/TextView;
    :cond_3
    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3408
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3410
    const-string v5, "ACTION_PHONE_STATE_CHANGED :: DCM "

    invoke-static {v5}, Lcom/android/lgesettings/SLog;->i(Ljava/lang/String;)V

    .line 3411
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->tm:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$4400(Lcom/android/lgesettings/DataUsageSummary;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-virtual {v5}, Lcom/android/lgesettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->tm:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$4400(Lcom/android/lgesettings/DataUsageSummary;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-nez v5, :cond_0

    .line 3414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_PHONE_STATE_CHANGED :: tm.getCallState() = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->tm:Landroid/telephony/TelephonyManager;
    invoke-static {v8}, Lcom/android/lgesettings/DataUsageSummary;->access$4400(Lcom/android/lgesettings/DataUsageSummary;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/lgesettings/SLog;->i(Ljava/lang/String;)V

    .line 3415
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$1300(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$4100(Lcom/android/lgesettings/DataUsageSummary;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3416
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$1300(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 3417
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$4100(Lcom/android/lgesettings/DataUsageSummary;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 3418
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$4100(Lcom/android/lgesettings/DataUsageSummary;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3419
    .restart local v2       #ev:Landroid/widget/TextView;
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3420
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #calls: Lcom/android/lgesettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v5, v7}, Lcom/android/lgesettings/DataUsageSummary;->access$100(Lcom/android/lgesettings/DataUsageSummary;Z)V

    goto/16 :goto_0

    .end local v2           #ev:Landroid/widget/TextView;
    .restart local v1       #enabled:Z
    :cond_4
    move v5, v7

    .line 3363
    goto/16 :goto_1

    :cond_5
    move v5, v7

    .line 3364
    goto/16 :goto_2

    :cond_6
    move v5, v7

    .line 3365
    goto/16 :goto_3

    :cond_7
    move v5, v7

    .line 3366
    goto/16 :goto_4

    :cond_8
    move v5, v7

    .line 3367
    goto/16 :goto_5

    .line 3369
    :cond_9
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$1300(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v8

    if-nez v1, :cond_a

    move v5, v6

    :goto_8
    invoke-virtual {v8, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 3370
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$4100(Lcom/android/lgesettings/DataUsageSummary;)Landroid/view/View;

    move-result-object v8

    if-nez v1, :cond_b

    move v5, v6

    :goto_9
    invoke-virtual {v8, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 3371
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$1600(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v8

    if-nez v1, :cond_c

    move v5, v6

    :goto_a
    invoke-virtual {v8, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 3372
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$4200(Lcom/android/lgesettings/DataUsageSummary;)Landroid/view/View;

    move-result-object v8

    if-nez v1, :cond_d

    move v5, v6

    :goto_b
    invoke-virtual {v8, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 3373
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$4300(Lcom/android/lgesettings/DataUsageSummary;)Landroid/widget/LinearLayout;

    move-result-object v8

    if-nez v1, :cond_e

    move v5, v6

    :goto_c
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_a
    move v5, v7

    .line 3369
    goto :goto_8

    :cond_b
    move v5, v7

    .line 3370
    goto :goto_9

    :cond_c
    move v5, v7

    .line 3371
    goto :goto_a

    :cond_d
    move v5, v7

    .line 3372
    goto :goto_b

    :cond_e
    move v5, v7

    .line 3373
    goto :goto_c

    .line 3385
    :cond_f
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$4100(Lcom/android/lgesettings/DataUsageSummary;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3386
    .restart local v2       #ev:Landroid/widget/TextView;
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3388
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageSummary$17;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$4200(Lcom/android/lgesettings/DataUsageSummary;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3389
    .restart local v4       #lv:Landroid/widget/TextView;
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7
.end method
