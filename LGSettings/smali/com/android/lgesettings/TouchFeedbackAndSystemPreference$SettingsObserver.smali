.class Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "TouchFeedbackAndSystemPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;->this$0:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;

    .line 387
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 388
    invoke-virtual {p1}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    .line 389
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 393
    return-void
.end method

.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x1

    .line 401
    iget-object v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;->this$0:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;

    #calls: Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->do_updateRingtoneName_touch()V
    invoke-static {v2}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->access$500(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)V

    .line 403
    iget-object v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;->this$0:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;

    #getter for: Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mHapticFeedback:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->access$600(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 405
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;->this$0:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;

    #getter for: Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mHapticFeedback:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->access$600(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;->this$0:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;

    #getter for: Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->access$700(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 412
    :cond_0
    :goto_1
    return-void

    .line 405
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 408
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 409
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method pause()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 397
    return-void
.end method
