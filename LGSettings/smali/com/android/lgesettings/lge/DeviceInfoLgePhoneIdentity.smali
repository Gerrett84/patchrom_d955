.class public Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;
.super Lcom/android/lgesettings/deviceinfo/Status;
.source "DeviceInfoLgePhoneIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;
    }
.end annotation


# static fields
.field private static operator_code:Ljava/lang/String;


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRev:Landroid/preference/Preference;

.field m_display_run1:Ljava/lang/Runnable;

.field m_display_run2:Ljava/lang/Runnable;

.field m_display_run3:Ljava/lang/Runnable;

.field private regul_mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->regul_mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$1;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->m_display_run1:Ljava/lang/Runnable;

    .line 80
    new-instance v0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$2;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->m_display_run2:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$3;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->m_display_run3:Ljava/lang/Runnable;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->mRev:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->mRev:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 233
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x2

    const-wide/16 v10, 0x32

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 146
    invoke-super {p0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->onCreate(Landroid/os/Bundle;)V

    .line 147
    const v5, 0x7f0803d5

    invoke-super {p0, v5}, Lcom/android/lgesettings/deviceinfo/Status;->setTitle(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 150
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 154
    :cond_0
    const-string v5, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 172
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->operator_code:Ljava/lang/String;

    .line 173
    const-string v5, "aboutphone #DeviceinfolgePhoneidentity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "operator_code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->operator_code:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "geefhd4g"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "geefhd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 179
    :cond_1
    const-string v5, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/lgesettings/lge/ATClientUtils;->atClient_BindService(Landroid/content/Context;)V

    .line 181
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->regul_mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->m_display_run1:Ljava/lang/Runnable;

    const-wide/16 v7, 0x96

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->removeUnnecessaryPreference()V

    .line 226
    return-void

    .line 183
    :cond_3
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isEmbededBattery(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 184
    const-string v5, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 185
    const-string v5, "batman"

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 186
    new-instance v1, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;)V

    .line 187
    .local v1, mHandler:Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;
    invoke-virtual {v1, v12}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 188
    .local v2, msg_date:Landroid/os/Message;
    invoke-virtual {v1, v9}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 189
    .local v4, msg_sn:Landroid/os/Message;
    invoke-virtual {v1, v8}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 191
    .local v3, msg_serial_number:Landroid/os/Message;
    invoke-static {v8, v2}, Lcom/android/lgesettings/lge/ModemStringItem;->getModemStringItem_batman(ILandroid/os/Message;)V

    .line 192
    invoke-static {v12, v4}, Lcom/android/lgesettings/lge/ModemStringItem;->getModemStringItem_batman(ILandroid/os/Message;)V

    .line 193
    const-string v5, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 194
    invoke-static {v9, v3}, Lcom/android/lgesettings/lge/ModemStringItem;->getModemStringItem_batman(ILandroid/os/Message;)V

    goto :goto_0

    .line 196
    :cond_4
    invoke-static {v13, v3}, Lcom/android/lgesettings/lge/ModemStringItem;->getModemStringItem_batman(ILandroid/os/Message;)V

    goto :goto_0

    .line 199
    .end local v1           #mHandler:Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;
    .end local v2           #msg_date:Landroid/os/Message;
    .end local v3           #msg_serial_number:Landroid/os/Message;
    .end local v4           #msg_sn:Landroid/os/Message;
    :cond_5
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/lgesettings/lge/ATClientUtils;->atClient_BindService(Landroid/content/Context;)V

    .line 200
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->regul_mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->m_display_run1:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->regul_mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->m_display_run2:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->regul_mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->m_display_run3:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 205
    :cond_6
    const-string v5, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v6, "operator_code is is not support that embedded battery (x)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_7
    const-string v5, "cayman"

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 208
    new-instance v1, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;)V

    .line 209
    .restart local v1       #mHandler:Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;
    invoke-virtual {v1, v8}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 211
    .restart local v3       #msg_serial_number:Landroid/os/Message;
    const-string v5, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 212
    invoke-static {v9, v3}, Lcom/android/lgesettings/lge/ModemStringItem;->getModemStringItem_batman(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 214
    :cond_8
    invoke-static {v13, v3}, Lcom/android/lgesettings/lge/ModemStringItem;->getModemStringItem_batman(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 217
    .end local v1           #mHandler:Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity$SerialHandler;
    .end local v3           #msg_serial_number:Landroid/os/Message;
    :cond_9
    const-string v5, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 218
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/lgesettings/lge/ATClientUtils;->atClient_BindService(Landroid/content/Context;)V

    .line 219
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->regul_mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->m_display_run1:Ljava/lang/Runnable;

    const-wide/16 v7, 0x96

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    :cond_a
    const-string v5, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v6, "operator_code is is not support that embedded battery (x)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 263
    const-string v0, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "geefhd4g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->regul_mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->m_display_run1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 267
    invoke-static {}, Lcom/android/lgesettings/lge/ATClientUtils;->atClient_unBindService()V

    .line 279
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->onDestroy()V

    .line 280
    return-void

    .line 268
    :cond_1
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isEmbededBattery(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    const-string v0, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->regul_mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->m_display_run1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->regul_mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->m_display_run2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->regul_mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->m_display_run3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    invoke-static {}, Lcom/android/lgesettings/lge/ATClientUtils;->atClient_unBindService()V

    goto :goto_0

    .line 276
    :cond_2
    const-string v0, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v1, "onPause (normal)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 237
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 238
    .local v0, itemId:I
    const-string v1, "starmotor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->finish()V

    .line 241
    const/4 v1, 0x1

    .line 243
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->onPause()V

    .line 257
    const-string v0, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->onResume()V

    .line 250
    const-string v0, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v1, "Resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method protected removeUnnecessaryPreference()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 286
    const/16 v7, 0x22

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "button_aboutphone_msim_status"

    aput-object v7, v2, v9

    const-string v7, "battery_status"

    aput-object v7, v2, v10

    const-string v7, "battery_level"

    aput-object v7, v2, v11

    const-string v7, "operator_name"

    aput-object v7, v2, v12

    const-string v7, "signal_strength"

    aput-object v7, v2, v13

    const/4 v7, 0x5

    const-string v8, "network_type"

    aput-object v8, v2, v7

    const/4 v7, 0x6

    const-string v8, "network_type_strength"

    aput-object v8, v2, v7

    const/4 v7, 0x7

    const-string v8, "service_state"

    aput-object v8, v2, v7

    const/16 v7, 0x8

    const-string v8, "roaming_state"

    aput-object v8, v2, v7

    const/16 v7, 0x9

    const-string v8, "data_state"

    aput-object v8, v2, v7

    const/16 v7, 0xa

    const-string v8, "number"

    aput-object v8, v2, v7

    const/16 v7, 0xb

    const-string v8, "min_number"

    aput-object v8, v2, v7

    const/16 v7, 0xc

    const-string v8, "prl_version"

    aput-object v8, v2, v7

    const/16 v7, 0xd

    const-string v8, "eri_version"

    aput-object v8, v2, v7

    const/16 v7, 0xe

    const-string v8, "esn_number"

    aput-object v8, v2, v7

    const/16 v7, 0xf

    const-string v8, "meid_number"

    aput-object v8, v2, v7

    const/16 v7, 0x10

    const-string v8, "meid_hexa"

    aput-object v8, v2, v7

    const/16 v7, 0x11

    const-string v8, "meid_decimal"

    aput-object v8, v2, v7

    const/16 v7, 0x12

    const-string v8, "imei"

    aput-object v8, v2, v7

    const/16 v7, 0x13

    const-string v8, "imei_sv"

    aput-object v8, v2, v7

    const/16 v7, 0x14

    const-string v8, "imei_svn_gsm"

    aput-object v8, v2, v7

    const/16 v7, 0x15

    const-string v8, "imei_svn"

    aput-object v8, v2, v7

    const/16 v7, 0x16

    const-string v8, "channel"

    aput-object v8, v2, v7

    const/16 v7, 0x17

    const-string v8, "sid"

    aput-object v8, v2, v7

    const/16 v7, 0x18

    const-string v8, "icc_id"

    aput-object v8, v2, v7

    const/16 v7, 0x19

    const-string v8, "last_factory_date_reset"

    aput-object v8, v2, v7

    const/16 v7, 0x1a

    const-string v8, "rooting_status"

    aput-object v8, v2, v7

    const/16 v7, 0x1b

    const-string v8, "wifi_ip_address"

    aput-object v8, v2, v7

    const/16 v7, 0x1c

    const-string v8, "ims_registration_status"

    aput-object v8, v2, v7

    const/16 v7, 0x1d

    const-string v8, "battery_use"

    aput-object v8, v2, v7

    const/16 v7, 0x1e

    const-string v8, "battery_condition_dcm"

    aput-object v8, v2, v7

    const/16 v7, 0x1f

    const-string v8, "support_technology"

    aput-object v8, v2, v7

    const/16 v7, 0x20

    const-string v8, "imsi"

    aput-object v8, v2, v7

    const/16 v7, 0x21

    const-string v8, "csn"

    aput-object v8, v2, v7

    .line 336
    .local v2, keyStrings:[Ljava/lang/String;
    const/16 v7, 0x20

    new-array v3, v7, [Ljava/lang/String;

    const-string v7, "button_aboutphone_msim_status"

    aput-object v7, v3, v9

    const-string v7, "battery_status"

    aput-object v7, v3, v10

    const-string v7, "battery_level"

    aput-object v7, v3, v11

    const-string v7, "operator_name"

    aput-object v7, v3, v12

    const-string v7, "signal_strength"

    aput-object v7, v3, v13

    const/4 v7, 0x5

    const-string v8, "network_type"

    aput-object v8, v3, v7

    const/4 v7, 0x6

    const-string v8, "network_type_strength"

    aput-object v8, v3, v7

    const/4 v7, 0x7

    const-string v8, "service_state"

    aput-object v8, v3, v7

    const/16 v7, 0x8

    const-string v8, "roaming_state"

    aput-object v8, v3, v7

    const/16 v7, 0x9

    const-string v8, "data_state"

    aput-object v8, v3, v7

    const/16 v7, 0xa

    const-string v8, "number"

    aput-object v8, v3, v7

    const/16 v7, 0xb

    const-string v8, "min_number"

    aput-object v8, v3, v7

    const/16 v7, 0xc

    const-string v8, "prl_version"

    aput-object v8, v3, v7

    const/16 v7, 0xd

    const-string v8, "eri_version"

    aput-object v8, v3, v7

    const/16 v7, 0xe

    const-string v8, "esn_number"

    aput-object v8, v3, v7

    const/16 v7, 0xf

    const-string v8, "meid_number"

    aput-object v8, v3, v7

    const/16 v7, 0x10

    const-string v8, "meid_hexa"

    aput-object v8, v3, v7

    const/16 v7, 0x11

    const-string v8, "meid_decimal"

    aput-object v8, v3, v7

    const/16 v7, 0x12

    const-string v8, "imei"

    aput-object v8, v3, v7

    const/16 v7, 0x13

    const-string v8, "imei_sv"

    aput-object v8, v3, v7

    const/16 v7, 0x14

    const-string v8, "imei_svn_gsm"

    aput-object v8, v3, v7

    const/16 v7, 0x15

    const-string v8, "imei_svn"

    aput-object v8, v3, v7

    const/16 v7, 0x16

    const-string v8, "channel"

    aput-object v8, v3, v7

    const/16 v7, 0x17

    const-string v8, "sid"

    aput-object v8, v3, v7

    const/16 v7, 0x18

    const-string v8, "icc_id"

    aput-object v8, v3, v7

    const/16 v7, 0x19

    const-string v8, "last_factory_date_reset"

    aput-object v8, v3, v7

    const/16 v7, 0x1a

    const-string v8, "rooting_status"

    aput-object v8, v3, v7

    const/16 v7, 0x1b

    const-string v8, "ims_registration_status"

    aput-object v8, v3, v7

    const/16 v7, 0x1c

    const-string v8, "battery_use"

    aput-object v8, v3, v7

    const/16 v7, 0x1d

    const-string v8, "battery_condition_dcm"

    aput-object v8, v3, v7

    const/16 v7, 0x1e

    const-string v8, "support_technology"

    aput-object v8, v3, v7

    const/16 v7, 0x1f

    const-string v8, "memory_size"

    aput-object v8, v3, v7

    .line 385
    .local v3, keyStrings_tablet:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 386
    move-object v2, v3

    .line 389
    :cond_0
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v6, v0, v1

    .line 390
    .local v6, string:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 391
    .local v5, removablePref:Landroid/preference/Preference;
    if-eqz v5, :cond_1

    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 392
    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 389
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    .end local v5           #removablePref:Landroid/preference/Preference;
    .end local v6           #string:Ljava/lang/String;
    :cond_2
    const-string v7, "persist.sys.cust.rmprefimeisv"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 397
    const-string v7, "imei_sv"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/lge/DeviceInfoLgePhoneIdentity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 398
    .restart local v5       #removablePref:Landroid/preference/Preference;
    if-eqz v5, :cond_3

    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 399
    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 402
    .end local v5           #removablePref:Landroid/preference/Preference;
    :cond_3
    return-void
.end method
