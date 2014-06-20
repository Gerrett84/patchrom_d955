.class Lcom/android/internal/telephony/PayPopup_Korea$1;
.super Landroid/content/BroadcastReceiver;
.source "PayPopup_Korea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PayPopup_Korea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PayPopup_Korea;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PayPopup_Korea;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, action:Ljava/lang/String;
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "intent received :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v10, "android.net.conn.STARTING_IN_DATA_SETTING_DISABLE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 235
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    const-string v11, "ACTION_STARTING_IN_DATA_SETTING_DISABLE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    sget-object v11, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/4 v12, 0x3

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 238
    :cond_1
    :try_start_1
    const-string v10, "android.net.conn.STARTING_IN_ROAM_SETTING_DISABLE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 239
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    const-string v11, "ACTION_STARTING_IN_ROAM_SETTING_DISABLE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    sget-object v11, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/4 v12, 0x5

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 228
    .end local v1           #action:Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 242
    .restart local v1       #action:Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v10, "android.net.conn.STARTING_IN_DATA_SETTING_DISABLE_3GONLY"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 243
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    const-string v11, "ACTION_STARTING_IN_DATA_SETTING_DISABLE_3GONLY"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    sget-object v11, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    goto :goto_0

    .line 246
    :cond_3
    const-string v10, "android.net.conn.DATA_DATA_BLOCK_IN_MMS"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 247
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    const-string v11, "ACTION_DATA_BLOCK_IN_MMS "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    sget-object v11, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/4 v12, 0x6

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    goto :goto_0

    .line 252
    :cond_4
    const-string v10, "lge.intent.action.LGE_WIFI_3G_TRANSITION"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 253
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    const-string v11, "lge.intent.action.LGE_WIFI_3G_TRANSITION"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "mobile_data"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 257
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    const-string v11, "[LGE_DATA] WiFi Off / data enable"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    sget-object v11, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/16 v12, 0x9

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    .line 261
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "mobile_data"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_0

    .line 262
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    const-string v11, "[LGE_DATA] WiFi Off / data disable"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    sget-object v11, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/16 v12, 0xa

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    goto/16 :goto_0

    .line 268
    :cond_6
    const-string v10, "com.lge.intent.action.LGE_CAMPED_MCC_CHANGE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 270
    const-string v7, "000"

    .line 271
    .local v7, new_mcc:Ljava/lang/String;
    const-string v8, "000"

    .line 273
    .local v8, old_mcc:Ljava/lang/String;
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    const-string v11, "[LGE_DATA_ROAMING] Got TelephonyIntents.ACTION_CAMPED_MCC_CHANGE "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v10, "newmcc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 276
    const-string v10, "oldmcc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 278
    if-nez v8, :cond_7

    .line 279
    const-string v8, "000"

    .line 281
    :cond_7
    if-nez v7, :cond_8

    .line 282
    const-string v7, "000"

    .line 286
    :cond_8
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    iget-object v10, v10, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v11, "SKTBASE"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$100(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v10

    iget-object v10, v10, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v10}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    if-nez v10, :cond_9

    const-string v10, "450"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "450"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 287
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "mobile_data"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_9

    .line 288
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "data_network_user_data_disable_setting"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    const-string v11, "[LGE_DATA] <onDataConnectionAttached()> DATA_NETWORK_USER_DATA_DISABLE_SETTING : 1"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_9
    const-string v10, "000"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 295
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "intent_old_mcc"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 297
    :cond_a
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    iget-object v10, v10, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v11, "KTBASE"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    iget-object v10, v10, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v11, "SKTBASE"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$100(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v10

    iget-object v10, v10, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v10}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    if-nez v10, :cond_c

    .line 298
    :cond_b
    const-string v7, "000"

    .line 301
    :cond_c
    const-string v10, "000"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 303
    const-string v10, "000"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 304
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "intent_old_mcc"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 307
    :cond_d
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LGE_DATA_ROAMING] old_mcc:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", new_mcc:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    if-eqz v8, :cond_e

    if-nez v7, :cond_f

    .line 310
    :cond_e
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "old_mcc:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", new_mcc:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 311
    :cond_f
    const-string v10, "450"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const-string v10, "450"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 312
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    const-string v11, "[LGE_DATA_ROAMING] MCC Change Roaming popup OK"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v10, "net.Is_phone_booted"

    const-string v11, "true"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #setter for: Lcom/android/internal/telephony/PayPopup_Korea;->global_new_mcc:Ljava/lang/String;
    invoke-static {v10, v7}, Lcom/android/internal/telephony/PayPopup_Korea;->access$202(Lcom/android/internal/telephony/PayPopup_Korea;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #setter for: Lcom/android/internal/telephony/PayPopup_Korea;->global_old_mcc:Ljava/lang/String;
    invoke-static {v10, v8}, Lcom/android/internal/telephony/PayPopup_Korea;->access$302(Lcom/android/internal/telephony/PayPopup_Korea;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 318
    :cond_10
    const-string v10, "450"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "450"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 319
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    const-string v11, "[LGE_DATA_ROAMING] Domestic popup OK"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    iget-object v10, v10, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v11, "LGTBASE"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 322
    const-string v10, "net.Is_phone_booted"

    const-string v11, "true"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getLTEDataRoamingEnable()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 326
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    const-string v11, "[LGE_DATA_ROAMING] when changed roaming to domestic and data_lte_roaming is 1, forcely set to 0"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$100(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v10

    iget-object v10, v10, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mLGEDataConnectionTracker:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->setLTEDataRoamingEnableNotApplyObserver(Z)V

    .line 332
    :cond_11
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #setter for: Lcom/android/internal/telephony/PayPopup_Korea;->global_new_mcc:Ljava/lang/String;
    invoke-static {v10, v7}, Lcom/android/internal/telephony/PayPopup_Korea;->access$202(Lcom/android/internal/telephony/PayPopup_Korea;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #setter for: Lcom/android/internal/telephony/PayPopup_Korea;->global_old_mcc:Ljava/lang/String;
    invoke-static {v10, v8}, Lcom/android/internal/telephony/PayPopup_Korea;->access$302(Lcom/android/internal/telephony/PayPopup_Korea;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LGE_DATA_ROAMING] roam_to_domestic_popup_need="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->roam_to_domestic_popup_need:Z
    invoke-static {v12}, Lcom/android/internal/telephony/PayPopup_Korea;->access$400(Lcom/android/internal/telephony/PayPopup_Korea;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->roam_to_domestic_popup_need:Z
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$400(Lcom/android/internal/telephony/PayPopup_Korea;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 337
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    const-string v11, "roam_to_domesic : mcc_change"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    const-string v11, "roam_to_domesic"

    const-string v12, "default"

    .line 339
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/telephony/PayPopup_Korea;->roam_to_domestic_popup_need:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/PayPopup_Korea;->access$402(Lcom/android/internal/telephony/PayPopup_Korea;Z)Z

    goto/16 :goto_0

    .line 343
    :cond_12
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    const-string v11, "[LGE_DATA_ROAMING] incorrect intet!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 349
    .end local v7           #new_mcc:Ljava/lang/String;
    .end local v8           #old_mcc:Ljava/lang/String;
    :cond_13
    const-string v10, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 350
    const-string v10, "state"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 351
    .local v3, enabled:Z
    if-eqz v3, :cond_14

    const/4 v10, 0x1

    :goto_1
    sput v10, Lcom/android/internal/telephony/PayPopup_Korea;->airplane_mode:I

    .line 352
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LGE_DATA_ROAMING] Airplane_mode popup airplane: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/internal/telephony/PayPopup_Korea;->airplane_mode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 351
    :cond_14
    const/4 v10, 0x0

    goto :goto_1

    .line 356
    .end local v3           #enabled:Z
    :cond_15
    const-string v10, "com.lge.DataEnabledSettingBootableSKT"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 357
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    iget-object v11, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    const/16 v12, 0x190

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/PayPopup_Korea;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/16 v12, 0x1f4

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/PayPopup_Korea;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 359
    :cond_16
    const-string v10, "com.lge.DataNetworkModePayPopupKT"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 360
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    iget-object v11, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    const/16 v12, 0x191

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/PayPopup_Korea;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/16 v12, 0x1f4

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/PayPopup_Korea;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 362
    :cond_17
    const-string v10, "com.lge.DataNetworkModePayPopupLGT"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 363
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    iget-object v11, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    const/16 v12, 0x192

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/PayPopup_Korea;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/16 v12, 0x1f4

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/PayPopup_Korea;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 366
    :cond_18
    const-string v10, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    const-string v10, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    :cond_19
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    iget-object v10, v10, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v11, "KTBASE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 368
    const-string v10, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 369
    const-string v10, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkInfo;

    move-object v0, v10

    check-cast v0, Landroid/net/NetworkInfo;

    move-object v4, v0

    .line 370
    .local v4, info:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    .line 371
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_0

    .line 373
    :pswitch_0
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    #setter for: Lcom/android/internal/telephony/PayPopup_Korea;->mMobileEnabled:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/PayPopup_Korea;->access$502(Lcom/android/internal/telephony/PayPopup_Korea;Z)Z

    .line 374
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TYPE_MOBILE is Connected = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mMobileEnabled:Z
    invoke-static {v12}, Lcom/android/internal/telephony/PayPopup_Korea;->access$500(Lcom/android/internal/telephony/PayPopup_Korea;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v2, 0x0

    .line 377
    .local v2, currentSubType:I
    const/4 v6, 0x0

    .line 378
    .local v6, isWifiConnected:Z
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$600(Lcom/android/internal/telephony/PayPopup_Korea;)Landroid/net/ConnectivityManager;

    move-result-object v10

    if-eqz v10, :cond_1a

    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$600(Lcom/android/internal/telephony/PayPopup_Korea;)Landroid/net/ConnectivityManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    if-eqz v10, :cond_1a

    .line 379
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$600(Lcom/android/internal/telephony/PayPopup_Korea;)Landroid/net/ConnectivityManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 382
    :cond_1a
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$600(Lcom/android/internal/telephony/PayPopup_Korea;)Landroid/net/ConnectivityManager;

    move-result-object v10

    if-eqz v10, :cond_1b

    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$600(Lcom/android/internal/telephony/PayPopup_Korea;)Landroid/net/ConnectivityManager;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    if-eqz v10, :cond_1b

    .line 383
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$600(Lcom/android/internal/telephony/PayPopup_Korea;)Landroid/net/ConnectivityManager;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    .line 386
    :cond_1b
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LGE_DATA] mStatus : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    iget-boolean v12, v12, Lcom/android/internal/telephony/PayPopup_Korea;->mStatus:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " subtype : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " wifi state : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mMobileEnabled:Z
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$500(Lcom/android/internal/telephony/PayPopup_Korea;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1d

    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    iget-object v10, v10, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v11, "KTBASE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    iget-boolean v10, v10, Lcom/android/internal/telephony/PayPopup_Korea;->mStatus:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1d

    .line 390
    const/4 v10, 0x1

    if-eq v2, v10, :cond_1c

    const/4 v10, 0x2

    if-ne v2, v10, :cond_1e

    .line 391
    :cond_1c
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x20b0286

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 403
    .local v9, str_value:Ljava/lang/String;
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    iget-object v10, v10, Lcom/android/internal/telephony/PayPopup_Korea;->mWifiServiceExt:Lcom/lge/wifi_iface/WifiServiceExtIface;

    invoke-interface {v10}, Lcom/lge/wifi_iface/WifiServiceExtIface;->getShowKTPayPopup()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1d

    if-nez v6, :cond_1d

    .line 404
    new-instance v5, Landroid/content/Intent;

    const-string v10, "lge.intent.action.toast"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v5, intent_kr:Landroid/content/Intent;
    const-string v10, "text"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string v10, "[LGE_DATA][PayPopUp_ko] "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LGE_DATA] mWifiServiceExt.getShowKTPayPopup() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    iget-object v12, v12, Lcom/android/internal/telephony/PayPopup_Korea;->mWifiServiceExt:Lcom/lge/wifi_iface/WifiServiceExtIface;

    invoke-interface {v12}, Lcom/lge/wifi_iface/WifiServiceExtIface;->getShowKTPayPopup()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 411
    .end local v5           #intent_kr:Landroid/content/Intent;
    .end local v9           #str_value:Ljava/lang/String;
    :cond_1d
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    iget-object v11, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mMobileEnabled:Z
    invoke-static {v11}, Lcom/android/internal/telephony/PayPopup_Korea;->access$500(Lcom/android/internal/telephony/PayPopup_Korea;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/android/internal/telephony/PayPopup_Korea;->mStatus:Z

    goto/16 :goto_0

    .line 392
    :cond_1e
    const/16 v10, 0xd

    if-ne v2, v10, :cond_1f

    .line 393
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x20b0287

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #str_value:Ljava/lang/String;
    goto :goto_2

    .line 394
    .end local v9           #str_value:Ljava/lang/String;
    :cond_1f
    const/16 v10, 0xf

    if-eq v2, v10, :cond_20

    const/16 v10, 0xa

    if-eq v2, v10, :cond_20

    const/16 v10, 0x9

    if-eq v2, v10, :cond_20

    const/16 v10, 0x8

    if-eq v2, v10, :cond_20

    const/4 v10, 0x3

    if-ne v2, v10, :cond_21

    .line 397
    :cond_20
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/android/internal/telephony/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x20b0285

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #str_value:Ljava/lang/String;
    goto/16 :goto_2

    .line 399
    .end local v9           #str_value:Ljava/lang/String;
    :cond_21
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    iget-object v11, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    const/16 v12, 0x258

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/PayPopup_Korea;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/16 v12, 0x1f4

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/telephony/PayPopup_Korea;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 416
    .end local v2           #currentSubType:I
    .end local v4           #info:Landroid/net/NetworkInfo;
    .end local v6           #isWifiConnected:Z
    :cond_22
    const-string v10, "android.intent.action.OTA_USIM_REFRESH_TO_RESET"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 417
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    iget-object v10, v10, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v11, "KTBASE"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 418
    iget-object v10, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    const/4 v11, 0x1

    #setter for: Lcom/android/internal/telephony/PayPopup_Korea;->intent_reset:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/PayPopup_Korea;->access$702(Lcom/android/internal/telephony/PayPopup_Korea;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
