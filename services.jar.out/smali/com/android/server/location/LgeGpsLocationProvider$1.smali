.class Lcom/android/server/location/LgeGpsLocationProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "LgeGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LgeGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LgeGpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.skt.intent.action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "SKT"

    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 194
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v1, "com.skt.intent.action.AGPS_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.skt.intent.action.GPS_TURN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #setter for: Lcom/android/server/location/LgeGpsLocationProvider;->mSKTTmapStarted:Z
    invoke-static {v1, v4}, Lcom/android/server/location/LgeGpsLocationProvider;->access$102(Lcom/android/server/location/LgeGpsLocationProvider;Z)Z

    .line 197
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/location/LgeGpsLocationProvider;->access$300(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    #setter for: Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSettingEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->access$202(Lcom/android/server/location/LgeGpsLocationProvider;Z)Z

    .line 199
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSettingEnabled:Z
    invoke-static {v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$200(Lcom/android/server/location/LgeGpsLocationProvider;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v1, v4, v4, v6}, Lcom/android/server/location/LgeGpsLocationProvider;->access$400(Lcom/android/server/location/LgeGpsLocationProvider;IILjava/lang/Object;)V

    .line 248
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    const-string v1, "com.skt.intent.action.AGPS_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.skt.intent.action.GPS_TURN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    :cond_3
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mSKTTmapStarted:Z
    invoke-static {v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$100(Lcom/android/server/location/LgeGpsLocationProvider;)Z

    move-result v1

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSettingEnabled:Z
    invoke-static {v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$200(Lcom/android/server/location/LgeGpsLocationProvider;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 205
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v1, v4, v5, v6}, Lcom/android/server/location/LgeGpsLocationProvider;->access$400(Lcom/android/server/location/LgeGpsLocationProvider;IILjava/lang/Object;)V

    .line 206
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "settings - LocationProvider = OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_4
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #setter for: Lcom/android/server/location/LgeGpsLocationProvider;->mSKTTmapStarted:Z
    invoke-static {v1, v5}, Lcom/android/server/location/LgeGpsLocationProvider;->access$102(Lcom/android/server/location/LgeGpsLocationProvider;Z)Z

    goto :goto_0

    .line 212
    :cond_5
    const-string v1, "com.android.lge.action_at_timeout_uplus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 213
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "RIL recovery progress!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->gpsRilRecovery()V
    invoke-static {v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$500(Lcom/android/server/location/LgeGpsLocationProvider;)V

    goto :goto_0

    .line 217
    :cond_6
    const-string v1, "VDF"

    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "SFR"

    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 218
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "TelephonyIntents.ACTION_SIM_STATE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    invoke-virtual {v1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeUpdateSimState(Landroid/content/Intent;)V

    goto :goto_0

    .line 222
    :cond_8
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "ATT"

    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 223
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_AIRPLANE_MODE_CHANGED received, operator= ATT, mSettingGpsEnable ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$600()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v1, "state"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v4, :cond_9

    .line 225
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #getter for: Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$300(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$602(Z)Z

    .line 226
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Air plane ON!!! , mSettingGpsEnable ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$600()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$600()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 228
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v1, v4, v5, v6}, Lcom/android/server/location/LgeGpsLocationProvider;->access$400(Lcom/android/server/location/LgeGpsLocationProvider;IILjava/lang/Object;)V

    goto/16 :goto_0

    .line 232
    :cond_9
    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$600()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 234
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v1, v4, v4, v6}, Lcom/android/server/location/LgeGpsLocationProvider;->access$400(Lcom/android/server/location/LgeGpsLocationProvider;IILjava/lang/Object;)V

    goto/16 :goto_0

    .line 239
    :cond_a
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/server/location/LgeGpsLocationProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 242
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->soundVibControl()V
    invoke-static {v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$700(Lcom/android/server/location/LgeGpsLocationProvider;)V

    goto/16 :goto_0

    .line 244
    :cond_b
    const-string v1, "com.android.settings.gpsnotification.CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$1;->this$0:Lcom/android/server/location/LgeGpsLocationProvider;

    #calls: Lcom/android/server/location/LgeGpsLocationProvider;->soundVibControl()V
    invoke-static {v1}, Lcom/android/server/location/LgeGpsLocationProvider;->access$700(Lcom/android/server/location/LgeGpsLocationProvider;)V

    goto/16 :goto_0
.end method
