.class public Lcom/android/lgesettings/lge/EmotionalLEDEffect;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "EmotionalLEDEffect.java"


# static fields
.field public static shareFunction:I


# instance fields
.field private actionBarSwitch:Landroid/widget/Switch;

.field private alarm_back_led:Landroid/preference/CheckBoxPreference;

.field private calendar_noti_back_led:Landroid/preference/CheckBoxPreference;

.field private camera_face_detecting_back_led:Landroid/preference/CheckBoxPreference;

.field private camera_timer_back_led:Landroid/preference/CheckBoxPreference;

.field private download_apps_back_led:Landroid/preference/CheckBoxPreference;

.field private fornt_led_category:Landroid/preference/PreferenceCategory;

.field private incall_back_led:Landroid/preference/CheckBoxPreference;

.field private incoming_back_led:Landroid/preference/CheckBoxPreference;

.field private isSilentModeChecked:Z

.field lastSelectedFunction:I

.field private led_effect_alarm:Landroid/preference/CheckBoxPreference;

.field private led_effect_area_mail:Lcom/android/lgesettings/lge/DoubleTitlePreference;

.field private led_effect_battery_charging:Landroid/preference/CheckBoxPreference;

.field private led_effect_calendar:Landroid/preference/CheckBoxPreference;

.field private led_effect_download_apps:Landroid/preference/CheckBoxPreference;

.field private led_effect_favorites_incoming:Landroid/preference/CheckBoxPreference;

.field private led_effect_gps:Landroid/preference/CheckBoxPreference;

.field private led_effect_incoming_call:Landroid/preference/CheckBoxPreference;

.field private led_effect_osaifu_keitai:Landroid/preference/CheckBoxPreference;

.field private led_effect_voice_recorder:Landroid/preference/CheckBoxPreference;

.field private mCableReceiver:Landroid/content/BroadcastReceiver;

.field mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

.field private mNotificationObserver:Landroid/database/ContentObserver;

.field private mPackageName:Ljava/lang/String;

.field mServiceContext:Lcom/lge/systemservice/core/LGContext;

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private missed_call_back_led:Landroid/preference/CheckBoxPreference;

.field private missed_emails_back_led:Landroid/preference/CheckBoxPreference;

.field private missed_messages_back_led:Landroid/preference/CheckBoxPreference;

.field private reminder_cell_broad:Landroid/preference/CheckBoxPreference;

.field private reminder_email:Landroid/preference/CheckBoxPreference;

.field private reminder_missed_call:Landroid/preference/CheckBoxPreference;

.field private reminder_msg:Landroid/preference/CheckBoxPreference;

.field private reminder_voicemail:Landroid/preference/CheckBoxPreference;

.field private status:I

.field private voice_recording_back_led:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    sput v0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->shareFunction:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->isSilentModeChecked:Z

    .line 128
    iput v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->status:I

    .line 140
    new-instance v0, Lcom/android/lgesettings/lge/EmotionalLEDEffect$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/lge/EmotionalLEDEffect$1;-><init>(Lcom/android/lgesettings/lge/EmotionalLEDEffect;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mNotificationObserver:Landroid/database/ContentObserver;

    .line 806
    new-instance v0, Lcom/android/lgesettings/lge/EmotionalLEDEffect$5;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect$5;-><init>(Lcom/android/lgesettings/lge/EmotionalLEDEffect;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mCableReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private OnSilentGroupClick(Z)V
    .locals 3
    .parameter "mValue"

    .prologue
    const/4 v0, 0x1

    .line 442
    iget-object v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 443
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lge_notification_light_pulse"

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 445
    iput-boolean p1, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->isSilentModeChecked:Z

    .line 446
    invoke-direct {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->setlayoutVisible()V

    .line 447
    return-void

    .line 443
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lge/EmotionalLEDEffect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->updateNotificationCheckbox()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lge/EmotionalLEDEffect;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/lge/EmotionalLEDEffect;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->OnSilentGroupClick(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/lge/EmotionalLEDEffect;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/lgesettings/lge/EmotionalLEDEffect;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->status:I

    return p1
.end method

.method private loadsettings()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 309
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_alarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_alarm"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 311
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_calendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_calendar"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 313
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_gps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_gps"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 315
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_incoming_call:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_incoming_call"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 321
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_favorites_incoming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_incoming_call_favorite"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 323
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_battery_charging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_battery_charging"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 325
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_osaifu_keitai:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_reminder_felica"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 327
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_voice_recorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_voice_recorder"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 329
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->incoming_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_back_incoming_call"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 331
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->alarm_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_back_alarm"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 333
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->incall_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_back_in_call"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 335
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_missed_call:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_reminder_missed_call"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 338
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_msg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_reminder_msg"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 341
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_voicemail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_reminder_voicemail"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_d
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 344
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_reminder_email"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 347
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_cell_broad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_reminder_cell_broad"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_f
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 351
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_call_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_back_missed_call"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_10
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 354
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_messages_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_back_missed_messages"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_11
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 357
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_emails_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_back_missed_emails"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_12
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 360
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->calendar_noti_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_back_calendar_noti"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_13
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 363
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->voice_recording_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emotional_led_back_voice_recording"

    invoke-static {v3, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_14

    :goto_14
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 371
    return-void

    :cond_0
    move v0, v2

    .line 309
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 311
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 313
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 315
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 321
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 323
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 325
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 327
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 329
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 331
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 333
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 335
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 338
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 341
    goto/16 :goto_d

    :cond_e
    move v0, v2

    .line 344
    goto/16 :goto_e

    :cond_f
    move v0, v2

    .line 347
    goto/16 :goto_f

    :cond_10
    move v0, v2

    .line 351
    goto :goto_10

    :cond_11
    move v0, v2

    .line 354
    goto :goto_11

    :cond_12
    move v0, v2

    .line 357
    goto :goto_12

    :cond_13
    move v0, v2

    .line 360
    goto :goto_13

    :cond_14
    move v1, v2

    .line 363
    goto :goto_14
.end method

.method private matchLEDRecord(ILcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;)V
    .locals 1
    .parameter "function"
    .parameter "record"

    .prologue
    const/4 v0, 0x7

    .line 715
    packed-switch p1, :pswitch_data_0

    .line 756
    :pswitch_0
    iput v0, p2, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    .line 759
    :goto_0
    return-void

    .line 717
    :pswitch_1
    const/16 v0, 0x9

    iput v0, p2, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    goto :goto_0

    .line 720
    :pswitch_2
    const/16 v0, 0xa

    iput v0, p2, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    goto :goto_0

    .line 723
    :pswitch_3
    const/16 v0, 0x8

    iput v0, p2, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    goto :goto_0

    .line 726
    :pswitch_4
    const/4 v0, 0x5

    iput v0, p2, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    goto :goto_0

    .line 730
    :pswitch_5
    const/16 v0, 0x66

    iput v0, p2, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    goto :goto_0

    .line 733
    :pswitch_6
    const/4 v0, 0x3

    iput v0, p2, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    goto :goto_0

    .line 737
    :pswitch_7
    iput v0, p2, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    goto :goto_0

    .line 740
    :pswitch_8
    iput v0, p2, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    goto :goto_0

    .line 743
    :pswitch_9
    const/16 v0, 0x65

    iput v0, p2, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    goto :goto_0

    .line 746
    :pswitch_a
    const/16 v0, 0x22

    iput v0, p2, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    goto :goto_0

    .line 749
    :pswitch_b
    const/4 v0, 0x2

    iput v0, p2, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    goto :goto_0

    .line 752
    :pswitch_c
    const/16 v0, 0x23

    iput v0, p2, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    goto :goto_0

    .line 715
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method private setBackLEDRGBIcon()V
    .locals 4

    .prologue
    const v3, 0x7f0200c3

    const v2, 0x7f0200b0

    .line 445
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->incoming_back_led:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 446
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->alarm_back_led:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 447
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->incall_back_led:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 448
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_call_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 449
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_messages_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 450
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_emails_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 451
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->calendar_noti_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 452
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->voice_recording_back_led:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 453
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->camera_timer_back_led:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 454
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->camera_face_detecting_back_led:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 455
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->download_apps_back_led:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 456
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_call_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 458
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_messages_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 459
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_emails_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 461
    :cond_0
    return-void
.end method

.method private setEmotionalLEDSettings()V
    .locals 3

    .prologue
    .line 779
    new-instance v0, Lcom/lge/systemservice/core/LGContextImpl;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/systemservice/core/LGContextImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    .line 780
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    sget-object v1, Lcom/lge/systemservice/core/LGContext$ServiceList;->EMOTIONALLED_SERVICE:Lcom/lge/systemservice/core/LGContext$ServiceList;

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLegacyService(Lcom/lge/systemservice/core/LGContext$ServiceList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iput-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    .line 781
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 782
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 784
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/lgesettings/lge/EmotionalLEDEffect$4;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect$4;-><init>(Lcom/android/lgesettings/lge/EmotionalLEDEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 805
    return-void

    .line 781
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
    .end array-data
.end method

.method private setlayoutVisible()V
    .locals 3

    .prologue
    .line 450
    const-string v0, "EmotionalLEDEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Layout mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->isSilentModeChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->isSilentModeChecked:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 453
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_area_mail:Lcom/android/lgesettings/lge/DoubleTitlePreference;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_area_mail:Lcom/android/lgesettings/lge/DoubleTitlePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/DoubleTitlePreference;->setEnabled(Z)V

    .line 457
    :cond_0
    return-void
.end method

.method private startEmotionalBackLED(ZI)V
    .locals 5
    .parameter "mValue"
    .parameter "function"

    .prologue
    .line 623
    if-eqz p1, :cond_1

    .line 624
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 625
    const-string v2, "hsmodel"

    const-string v3, "EMOTIONAL_LED_ALARM is true. Now try to start a LED play."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :try_start_0
    const-string v2, "hong"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastSelectedFunction : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->lastSelectedFunction:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->lastSelectedFunction:I

    invoke-virtual {v2, v3, v4}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->stop(Ljava/lang/String;I)V

    .line 630
    iput p2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->lastSelectedFunction:I

    .line 631
    new-instance v1, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    invoke-direct {v1}, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;-><init>()V

    .line 632
    .local v1, record:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;
    const/4 v2, 0x0

    iput v2, v1, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->priority:I

    .line 633
    const/4 v2, 0x2

    iput v2, v1, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->whichLedPlay:I

    .line 634
    invoke-direct {p0, p2, v1}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->matchLEDRecord(ILcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;)V

    .line 635
    const/4 v2, 0x1

    iput v2, v1, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->flags:I

    .line 636
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v1}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->start(Ljava/lang/String;ILcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .end local v1           #record:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;
    :cond_0
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "hsmodel"

    const-string v3, "EmotionalLED may not be supported for this device. See the below stack trace."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 640
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_1
    iget v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->lastSelectedFunction:I

    if-ne v2, p2, :cond_0

    .line 642
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->stop(Ljava/lang/String;I)V

    .line 643
    const-string v2, "hsmodel"

    const-string v3, "EMOTIONAL_LED_ALARM is false. Now try to stop a LED play."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startEmotionalLED(ZI)V
    .locals 7
    .parameter "mValue"
    .parameter "function"

    .prologue
    const/16 v6, 0xa

    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 649
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    if-nez v2, :cond_0

    .line 650
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    sget-object v3, Lcom/lge/systemservice/core/LGContext$ServiceList;->EMOTIONALLED_SERVICE:Lcom/lge/systemservice/core/LGContext$ServiceList;

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGContext;->getLegacyService(Lcom/lge/systemservice/core/LGContext$ServiceList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iput-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    .line 652
    :cond_0
    if-eqz p1, :cond_3

    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    .line 653
    const-string v2, "hsmodel"

    const-string v3, "Download apps make EmotionalLED off."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string v2, "hong"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download lastSelectedFunction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->shareFunction:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    sget v2, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->shareFunction:I

    if-ne v2, v6, :cond_2

    .line 656
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mPackageName:Ljava/lang/String;

    sget v4, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->shareFunction:I

    invoke-virtual {v2, v3, v4}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->stop(Ljava/lang/String;I)V

    .line 660
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080d9b

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 702
    :cond_1
    :goto_1
    return-void

    .line 658
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->lastSelectedFunction:I

    invoke-virtual {v2, v3, v4}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->stop(Ljava/lang/String;I)V

    goto :goto_0

    .line 662
    :cond_3
    if-nez p1, :cond_5

    if-ne p2, v4, :cond_5

    .line 663
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080f28

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 674
    :cond_4
    :goto_2
    if-eqz p1, :cond_9

    .line 675
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 676
    const-string v2, "hsmodel"

    const-string v3, "EMOTIONAL_LED_ALARM is true. Now try to start a LED play."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :try_start_0
    const-string v2, "hong"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastSelectedFunction : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->shareFunction:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    sget v2, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->shareFunction:I

    if-ne v2, v6, :cond_8

    .line 681
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mPackageName:Ljava/lang/String;

    sget v4, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->shareFunction:I

    invoke-virtual {v2, v3, v4}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->stop(Ljava/lang/String;I)V

    .line 685
    :goto_3
    iput p2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->lastSelectedFunction:I

    .line 686
    sput p2, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->shareFunction:I

    .line 687
    new-instance v1, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    invoke-direct {v1}, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;-><init>()V

    .line 688
    .local v1, record:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;
    const/4 v2, 0x0

    iput v2, v1, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->priority:I

    .line 689
    const/4 v2, 0x1

    iput v2, v1, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->whichLedPlay:I

    .line 691
    invoke-direct {p0, p2, v1}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->matchLEDRecord(ILcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;)V

    .line 692
    const/4 v2, 0x1

    iput v2, v1, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->flags:I

    .line 693
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v1}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->start(Ljava/lang/String;ILcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 694
    .end local v1           #record:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;
    :catch_0
    move-exception v0

    .line 695
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "hsmodel"

    const-string v3, "EmotionalLED may not be supported for this device. See the below stack trace."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 664
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_5
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    if-ne p2, v4, :cond_4

    .line 665
    iget v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->status:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->status:I

    if-ne v2, v4, :cond_7

    .line 667
    :cond_6
    const-string v2, "hsmodel"

    const-string v3, "with charging"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->lastSelectedFunction:I

    invoke-virtual {v2, v3, v4}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->stop(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 671
    :cond_7
    const-string v2, "hsmodel"

    const-string v3, "discharging"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 683
    :cond_8
    :try_start_1
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->lastSelectedFunction:I

    invoke-virtual {v2, v3, v4}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->stop(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 697
    :cond_9
    iget v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->lastSelectedFunction:I

    if-ne v2, p2, :cond_1

    .line 699
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->stop(Ljava/lang/String;I)V

    .line 700
    const-string v2, "hsmodel"

    const-string v3, "EMOTIONAL_LED_ALARM is false. Now try to stop a LED play."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateImage()V
    .locals 5

    .prologue
    const v4, 0x7f0200b9

    const v3, 0x7f0200bb

    const v2, 0x7f0200b5

    .line 373
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_alarm:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 375
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_calendar:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0200a7

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 376
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_gps:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 377
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_incoming_call:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 378
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_missed_call:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 380
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_msg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 381
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_voicemail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 382
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 383
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_cell_broad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 392
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_favorites_incoming:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0200ac

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 393
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_battery_charging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 394
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_osaifu_keitai:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 395
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_voice_recorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 397
    :cond_0
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_missed_call:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 386
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_msg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 387
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_voicemail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 388
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 389
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_cell_broad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    goto :goto_0
.end method

.method private updateNotificationCheckbox()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 708
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lge_notification_light_pulse"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->isSilentModeChecked:Z

    .line 710
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->actionBarSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->isSilentModeChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 712
    return-void

    .line 708
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 399
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->actionBarSwitch:Landroid/widget/Switch;

    .line 400
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 402
    .local v1, padding:I
    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v2, v2, v1, v2}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 403
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lge_notification_light_pulse"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->isSilentModeChecked:Z

    .line 405
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->actionBarSwitch:Landroid/widget/Switch;

    iget-boolean v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->isSilentModeChecked:Z

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 407
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 408
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 409
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x20c0002

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 410
    const v2, 0x7f080db7

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 411
    const v2, 0x7f0200b4

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 413
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v6, v6, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 418
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/lgesettings/lge/EmotionalLEDEffect$2;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect$2;-><init>(Lcom/android/lgesettings/lge/EmotionalLEDEffect;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 434
    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/lgesettings/lge/EmotionalLEDEffect$3;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect$3;-><init>(Lcom/android/lgesettings/lge/EmotionalLEDEffect;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x2070029

    const v7, 0x2070028

    const v6, 0x7f0200a8

    .line 149
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const v3, 0x7f060021

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->addPreferencesFromResource(I)V

    .line 152
    invoke-direct {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->updateTitle()V

    .line 154
    const-string v3, "emotional_led_effect_alarm"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_alarm:Landroid/preference/CheckBoxPreference;

    .line 155
    const-string v3, "emotional_led_effect_calendar"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_calendar:Landroid/preference/CheckBoxPreference;

    .line 156
    const-string v3, "emotional_led_effect_gps"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_gps:Landroid/preference/CheckBoxPreference;

    .line 157
    const-string v3, "emotional_led_effect_incoming_call"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_incoming_call:Landroid/preference/CheckBoxPreference;

    .line 160
    const-string v3, "emotional_led_effect_area_mail"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/lgesettings/lge/DoubleTitlePreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_area_mail:Lcom/android/lgesettings/lge/DoubleTitlePreference;

    .line 161
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_area_mail:Lcom/android/lgesettings/lge/DoubleTitlePreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f080f0a

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/lge/DoubleTitlePreference;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 163
    const-string v3, "emotional_led_effect_favorites_incoming"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_favorites_incoming:Landroid/preference/CheckBoxPreference;

    .line 164
    const-string v3, "emotional_led_effect_battery_charging"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_battery_charging:Landroid/preference/CheckBoxPreference;

    .line 165
    const-string v3, "emotional_led_effect_osaifu"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_osaifu_keitai:Landroid/preference/CheckBoxPreference;

    .line 166
    const-string v3, "emotional_led_effect_voice_recording"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_voice_recorder:Landroid/preference/CheckBoxPreference;

    .line 167
    const-string v3, "incoming_back"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->incoming_back_led:Landroid/preference/CheckBoxPreference;

    .line 168
    const-string v3, "alarm_back"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->alarm_back_led:Landroid/preference/CheckBoxPreference;

    .line 169
    const-string v3, "in_call"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->incall_back_led:Landroid/preference/CheckBoxPreference;

    .line 170
    const-string v3, "missed_call_back"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_call_back_led:Landroid/preference/CheckBoxPreference;

    .line 171
    const-string v3, "missed_messages_back"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_messages_back_led:Landroid/preference/CheckBoxPreference;

    .line 172
    const-string v3, "missed_emails_back"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_emails_back_led:Landroid/preference/CheckBoxPreference;

    .line 173
    const-string v3, "calendar_noti_back"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->calendar_noti_back_led:Landroid/preference/CheckBoxPreference;

    .line 174
    const-string v3, "voice_recording_back"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->voice_recording_back_led:Landroid/preference/CheckBoxPreference;

    .line 177
    const-string v3, "emotional_led_reminder_missed_call"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_missed_call:Landroid/preference/CheckBoxPreference;

    .line 178
    const-string v3, "emotional_led_reminder_msg"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_msg:Landroid/preference/CheckBoxPreference;

    .line 179
    const-string v3, "emotional_led_reminder_voicemail"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_voicemail:Landroid/preference/CheckBoxPreference;

    .line 180
    const-string v3, "emotional_led_reminder_email"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_email:Landroid/preference/CheckBoxPreference;

    .line 181
    const-string v3, "emotional_led_reminder_cell_broad"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_cell_broad:Landroid/preference/CheckBoxPreference;

    .line 183
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mPackageName:Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "home_button_brightness_category"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 186
    .local v2, brightnessCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "home_button_back_category"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 187
    .local v1, backCategory:Landroid/preference/PreferenceCategory;
    const-string v3, "hong"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Back_config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v3, "hong"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LED control config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190

    const-string v3, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 192
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_missed_call:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 193
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_msg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 194
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_voicemail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 195
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 196
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_cell_broad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 199
    const-string v3, "EmotionalLEDEffect"

    const-string v4, "Area mail : Include menu"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->loadsettings()V

    .line 215
    invoke-direct {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->updateImage()V

    .line 217
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 218
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_favorites_incoming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    :cond_1
    if-eqz v1, :cond_2

    .line 229
    const-string v3, "zee"

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 230
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_call_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_cell_broad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.cellbroadcastreceiver"

    invoke-static {v3, v4}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 243
    const-string v3, "EmotionalLEDEffect"

    const-string v4, "Cell Broadcasting : Include menu"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_2
    const-string v3, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "USC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 252
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 253
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_voicemail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    :cond_3
    const-string v3, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 257
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 258
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_cell_broad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.lge.lollipop"

    invoke-static {v3, v4}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 263
    const-string v3, "zee"

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 264
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_voice_recorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    :cond_5
    invoke-direct {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->setEmotionalLEDSettings()V

    .line 271
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 272
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_6

    .line 273
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 274
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 275
    const v3, 0x7f08105f

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 278
    :cond_6
    return-void

    .line 201
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_7
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 202
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_area_mail:Lcom/android/lgesettings/lge/DoubleTitlePreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    const-string v3, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 204
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_msg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    :goto_3
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_gps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    :cond_8
    const-string v3, "EmotionalLEDEffect"

    const-string v4, "Area mail : Remove menu"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 207
    :cond_9
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_osaifu_keitai:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 232
    :cond_a
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_call_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_messages_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_emails_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->calendar_noti_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->voice_recording_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 245
    :cond_b
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 246
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_cell_broad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    :cond_c
    const-string v3, "EmotionalLEDEffect"

    const-string v4, "Cell Broadcasting : Remove menu"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 305
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 306
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 763
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 765
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->lastSelectedFunction:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->stop(Ljava/lang/String;I)V

    .line 768
    :cond_0
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mCableReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 775
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 776
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v8, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v6, 0x9

    const/4 v7, 0x4

    .line 461
    const/4 v2, 0x0

    .line 464
    .local v2, mValue:Z
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_alarm:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_2

    .line 465
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_alarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 466
    const-string v1, "emotional_led_alarm"

    .line 467
    .local v1, mClickItem:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-direct {p0, v2, v5}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalLED(ZI)V

    .line 576
    :goto_0
    const-string v5, "hong"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Click_DB: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-ne v2, v4, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v5, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 578
    invoke-direct {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->loadsettings()V

    move v3, v4

    .line 580
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_1
    return v3

    .line 468
    :cond_2
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_calendar:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_3

    .line 469
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_calendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 470
    const-string v1, "emotional_led_calendar"

    .line 471
    .restart local v1       #mClickItem:Ljava/lang/String;
    invoke-direct {p0, v2, v8}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalLED(ZI)V

    goto :goto_0

    .line 472
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_gps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_4

    .line 473
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_gps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 474
    const-string v1, "emotional_led_gps"

    .line 475
    .restart local v1       #mClickItem:Ljava/lang/String;
    const/4 v5, 0x7

    invoke-direct {p0, v2, v5}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalLED(ZI)V

    goto :goto_0

    .line 476
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_incoming_call:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_5

    .line 477
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_incoming_call:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 478
    const-string v1, "emotional_led_incoming_call"

    .line 479
    .restart local v1       #mClickItem:Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalLED(ZI)V

    goto :goto_0

    .line 488
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_favorites_incoming:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_6

    .line 489
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_favorites_incoming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 490
    const-string v1, "emotional_led_incoming_call_favorite"

    .line 491
    .restart local v1       #mClickItem:Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalLED(ZI)V

    goto :goto_0

    .line 492
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_battery_charging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_7

    .line 493
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_battery_charging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 494
    const-string v1, "emotional_led_battery_charging"

    .line 495
    .restart local v1       #mClickItem:Ljava/lang/String;
    const/4 v5, 0x5

    invoke-direct {p0, v2, v5}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalLED(ZI)V

    goto/16 :goto_0

    .line 496
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_osaifu_keitai:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_8

    .line 497
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_osaifu_keitai:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 498
    const-string v1, "emotional_led_reminder_felica"

    .line 499
    .restart local v1       #mClickItem:Ljava/lang/String;
    const/16 v5, 0x8

    invoke-direct {p0, v2, v5}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalLED(ZI)V

    goto/16 :goto_0

    .line 500
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_voice_recorder:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_9

    .line 501
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->led_effect_voice_recorder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 502
    const-string v1, "emotional_led_voice_recorder"

    .line 503
    .restart local v1       #mClickItem:Ljava/lang/String;
    const/16 v5, 0xc

    invoke-direct {p0, v2, v5}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalLED(ZI)V

    goto/16 :goto_0

    .line 504
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->incoming_back_led:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_a

    .line 505
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->incoming_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 506
    const-string v1, "emotional_led_back_incoming_call"

    .line 507
    .restart local v1       #mClickItem:Ljava/lang/String;
    invoke-direct {p0, v2, v6}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalBackLED(ZI)V

    goto/16 :goto_0

    .line 508
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_a
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->alarm_back_led:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_b

    .line 509
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->alarm_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 510
    const-string v1, "emotional_led_back_alarm"

    .line 511
    .restart local v1       #mClickItem:Ljava/lang/String;
    invoke-direct {p0, v2, v6}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalBackLED(ZI)V

    goto/16 :goto_0

    .line 512
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_b
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->incall_back_led:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_c

    .line 513
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->incall_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 514
    const-string v1, "emotional_led_back_in_call"

    .line 515
    .restart local v1       #mClickItem:Ljava/lang/String;
    const/16 v5, 0xb

    invoke-direct {p0, v2, v5}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalBackLED(ZI)V

    goto/16 :goto_0

    .line 516
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_c
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_missed_call:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_d

    .line 517
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_missed_call:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 518
    const-string v1, "emotional_led_reminder_missed_call"

    .line 519
    .restart local v1       #mClickItem:Ljava/lang/String;
    invoke-direct {p0, v2, v7}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalLED(ZI)V

    goto/16 :goto_0

    .line 520
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_d
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_msg:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_f

    .line 521
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_msg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 522
    const-string v1, "emotional_led_reminder_msg"

    .line 523
    .restart local v1       #mClickItem:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.EMOTIONAL_LED_CHANGE_MSG"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 525
    if-eqz v2, :cond_e

    .line 526
    const-string v5, "name"

    const-string v6, "ON"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 531
    invoke-direct {p0, v2, v7}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalLED(ZI)V

    goto/16 :goto_0

    .line 528
    :cond_e
    const-string v5, "name"

    const-string v6, "OFF"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 532
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_f
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_voicemail:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_10

    .line 533
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_voicemail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 534
    const-string v1, "emotional_led_reminder_voicemail"

    .line 535
    .restart local v1       #mClickItem:Ljava/lang/String;
    invoke-direct {p0, v2, v7}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalLED(ZI)V

    goto/16 :goto_0

    .line 536
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_10
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_email:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_11

    .line 537
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 538
    const-string v1, "emotional_led_reminder_email"

    .line 539
    .restart local v1       #mClickItem:Ljava/lang/String;
    invoke-direct {p0, v2, v7}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalLED(ZI)V

    goto/16 :goto_0

    .line 540
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_11
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_cell_broad:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_13

    .line 541
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->reminder_cell_broad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 542
    const-string v1, "emotional_led_reminder_cell_broad"

    .line 543
    .restart local v1       #mClickItem:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.lge.intent.action.EMOTIONAL_LED_CHANGE_CB"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 545
    if-eqz v2, :cond_12

    .line 546
    const-string v5, "name"

    const-string v6, "ON"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    :goto_2
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 551
    invoke-direct {p0, v2, v7}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalLED(ZI)V

    goto/16 :goto_0

    .line 548
    :cond_12
    const-string v5, "name"

    const-string v6, "OFF"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 552
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_13
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_call_back_led:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_14

    .line 553
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_call_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 554
    const-string v1, "emotional_led_back_missed_call"

    .line 555
    .restart local v1       #mClickItem:Ljava/lang/String;
    invoke-direct {p0, v2, v6}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalBackLED(ZI)V

    goto/16 :goto_0

    .line 556
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_14
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_messages_back_led:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_15

    .line 557
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_messages_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 558
    const-string v1, "emotional_led_back_missed_messages"

    .line 559
    .restart local v1       #mClickItem:Ljava/lang/String;
    invoke-direct {p0, v2, v6}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalBackLED(ZI)V

    goto/16 :goto_0

    .line 560
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_15
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_emails_back_led:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_16

    .line 561
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->missed_emails_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 562
    const-string v1, "emotional_led_back_missed_emails"

    .line 563
    .restart local v1       #mClickItem:Ljava/lang/String;
    invoke-direct {p0, v2, v6}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalBackLED(ZI)V

    goto/16 :goto_0

    .line 564
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_16
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->calendar_noti_back_led:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_17

    .line 565
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->calendar_noti_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 566
    const-string v1, "emotional_led_back_calendar_noti"

    .line 567
    .restart local v1       #mClickItem:Ljava/lang/String;
    invoke-direct {p0, v2, v8}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalBackLED(ZI)V

    goto/16 :goto_0

    .line 568
    .end local v1           #mClickItem:Ljava/lang/String;
    :cond_17
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->voice_recording_back_led:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_1

    .line 569
    iget-object v5, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->voice_recording_back_led:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 570
    const-string v1, "emotional_led_back_voice_recording"

    .line 571
    .restart local v1       #mClickItem:Ljava/lang/String;
    const/16 v5, 0xc

    invoke-direct {p0, v2, v5}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->startEmotionalBackLED(ZI)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 281
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 286
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lge_notification_light_pulse"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->isSilentModeChecked:Z

    .line 288
    iget-object v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->actionBarSwitch:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->isSilentModeChecked:Z

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lge_notification_light_pulse"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 293
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 296
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mCableReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->setlayoutVisible()V

    .line 300
    return-void

    .line 286
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
