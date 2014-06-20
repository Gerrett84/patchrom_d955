.class public Lcom/android/lgesettings/Settings$RingtonePickerActivity;
.super Lcom/android/lgesettings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RingtonePickerActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2396
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 2410
    invoke-super {p0, p1}, Lcom/android/lgesettings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 2411
    invoke-super {p0}, Lcom/android/lgesettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2412
    .local v0, parent:I
    sparse-switch v0, :sswitch_data_0

    .line 2438
    :goto_0
    return-void

    .line 2414
    :sswitch_0
    const v1, 0x7f080341

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/Settings$RingtonePickerActivity;->setTitle(I)V

    goto :goto_0

    .line 2417
    :sswitch_1
    const v1, 0x7f08036e

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/Settings$RingtonePickerActivity;->setTitle(I)V

    goto :goto_0

    .line 2420
    :sswitch_2
    const v1, 0x7f08036f

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/Settings$RingtonePickerActivity;->setTitle(I)V

    goto :goto_0

    .line 2423
    :sswitch_3
    const v1, 0x7f080b06

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/Settings$RingtonePickerActivity;->setTitle(I)V

    goto :goto_0

    .line 2426
    :sswitch_4
    const v1, 0x7f080371

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/Settings$RingtonePickerActivity;->setTitle(I)V

    goto :goto_0

    .line 2429
    :sswitch_5
    const v1, 0x7f080372

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/Settings$RingtonePickerActivity;->setTitle(I)V

    goto :goto_0

    .line 2432
    :sswitch_6
    const v1, 0x7f080c5d

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/Settings$RingtonePickerActivity;->setTitle(I)V

    goto :goto_0

    .line 2412
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x8 -> :sswitch_1
        0x10 -> :sswitch_4
        0x20 -> :sswitch_6
        0x40 -> :sswitch_2
        0x80 -> :sswitch_5
    .end sparse-switch
.end method
