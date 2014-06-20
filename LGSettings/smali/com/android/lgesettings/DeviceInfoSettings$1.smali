.class Lcom/android/lgesettings/DeviceInfoSettings$1;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field strResponseData:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/lgesettings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DeviceInfoSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/lgesettings/DeviceInfoSettings$1;->this$0:Lcom/android/lgesettings/DeviceInfoSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings$1;->strResponseData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 182
    const-string v7, "aboutphone # DeviceInfoSettings"

    const-string v8, "m_display_run_factory (4011 , Request .. factory version)"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/16 v7, 0xfab

    :try_start_0
    iget-object v8, p0, Lcom/android/lgesettings/DeviceInfoSettings$1;->this$0:Lcom/android/lgesettings/DeviceInfoSettings;

    invoke-virtual {v8}, Lcom/android/lgesettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, ""

    invoke-static {v7, v8, v9}, Lcom/android/lgesettings/lge/ATClientUtils;->atClient_readValue(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/lgesettings/DeviceInfoSettings$1;->strResponseData:Ljava/lang/String;

    .line 185
    const-wide/16 v7, 0x32

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v4, sMccMnc:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v5, sSoftware_ver:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 194
    .local v1, hypen_cnt:I
    const-string v7, "ro.lge.swversion"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, before_sw_ver:Ljava/lang/String;
    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, version:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, index:I
    :goto_1
    iget-object v7, p0, Lcom/android/lgesettings/DeviceInfoSettings$1;->strResponseData:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 198
    iget-object v7, p0, Lcom/android/lgesettings/DeviceInfoSettings$1;->strResponseData:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/lgesettings/DeviceInfoSettings;->isHypenValue(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 199
    add-int/lit8 v1, v1, 0x1

    .line 202
    :cond_0
    const/4 v7, 0x3

    if-lt v1, v7, :cond_1

    const/4 v7, 0x5

    if-ge v1, v7, :cond_1

    .line 203
    iget-object v7, p0, Lcom/android/lgesettings/DeviceInfoSettings$1;->strResponseData:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    :cond_1
    const-string v7, "aboutphone # DeviceInfoSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "version: [0]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    aget-object v7, v6, v10

    if-eqz v7, :cond_2

    .line 207
    aget-object v0, v6, v10

    .line 209
    :cond_2
    const-string v7, "aboutphone # DeviceInfoSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sMccMnc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 186
    .end local v0           #before_sw_ver:Ljava/lang/String;
    .end local v1           #hypen_cnt:I
    .end local v3           #index:I
    .end local v4           #sMccMnc:Ljava/lang/StringBuilder;
    .end local v5           #sSoftware_ver:Ljava/lang/StringBuilder;
    .end local v6           #version:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 187
    .local v2, ie:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 212
    .end local v2           #ie:Ljava/lang/InterruptedException;
    .restart local v0       #before_sw_ver:Ljava/lang/String;
    .restart local v1       #hypen_cnt:I
    .restart local v3       #index:I
    .restart local v4       #sMccMnc:Ljava/lang/StringBuilder;
    .restart local v5       #sSoftware_ver:Ljava/lang/StringBuilder;
    .restart local v6       #version:[Ljava/lang/String;
    :cond_3
    const-string v7, "aboutphone # DeviceInfoSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sMccMnc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v7, p0, Lcom/android/lgesettings/DeviceInfoSettings$1;->this$0:Lcom/android/lgesettings/DeviceInfoSettings;

    iget-object v8, p0, Lcom/android/lgesettings/DeviceInfoSettings$1;->this$0:Lcom/android/lgesettings/DeviceInfoSettings;

    const-string v9, "software_version"

    invoke-virtual {v8, v9}, Lcom/android/lgesettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    #setter for: Lcom/android/lgesettings/DeviceInfoSettings;->mRev:Landroid/preference/Preference;
    invoke-static {v7, v8}, Lcom/android/lgesettings/DeviceInfoSettings;->access$202(Lcom/android/lgesettings/DeviceInfoSettings;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 217
    iget-object v7, p0, Lcom/android/lgesettings/DeviceInfoSettings$1;->this$0:Lcom/android/lgesettings/DeviceInfoSettings;

    #getter for: Lcom/android/lgesettings/DeviceInfoSettings;->mRev:Landroid/preference/Preference;
    invoke-static {v7}, Lcom/android/lgesettings/DeviceInfoSettings;->access$200(Lcom/android/lgesettings/DeviceInfoSettings;)Landroid/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 218
    const-string v7, "aboutphone # DeviceInfoSettings"

    const-string v8, "finded preference"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v7, p0, Lcom/android/lgesettings/DeviceInfoSettings$1;->this$0:Lcom/android/lgesettings/DeviceInfoSettings;

    #getter for: Lcom/android/lgesettings/DeviceInfoSettings;->mRev:Landroid/preference/Preference;
    invoke-static {v7}, Lcom/android/lgesettings/DeviceInfoSettings;->access$200(Lcom/android/lgesettings/DeviceInfoSettings;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 221
    :cond_4
    return-void
.end method
