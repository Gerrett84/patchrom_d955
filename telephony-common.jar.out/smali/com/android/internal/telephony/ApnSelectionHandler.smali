.class public Lcom/android/internal/telephony/ApnSelectionHandler;
.super Landroid/os/Handler;
.source "ApnSelectionHandler.java"


# static fields
.field public static final KT_Domestic_APN:Ljava/lang/String; = "lte150.ktfwing.com"

.field public static final KT_MCCMNC:Ljava/lang/String; = "45008"

.field public static final KT_Roaming_APN:Ljava/lang/String; = "lte150.ktfwing.com"

.field public static final LGT_Domestic_APN:Ljava/lang/String; = "internet.lguplus.co.kr"

.field public static final LGT_MCCMNC:Ljava/lang/String; = "45006"

.field public static final LGT_Roaming_APN:Ljava/lang/String; = "wroaming.lguplus.co.kr"

.field public static final LGT_Roaming_LTE_APN:Ljava/lang/String; = "lte-roaming.lguplus.co.kr"

.field private static final LOG_TAG:Ljava/lang/String; = "[LGE_DATA][ApnSelectionHandler] "

.field public static final REASON_ADDED_APN_FAILED:Ljava/lang/String; = "Added_APN_failed"

.field public static final REASON_SELECT_DEFAULT_APN:Ljava/lang/String; = "Select_default_APN_between_domestic_and_roaming"

.field public static final SKT_Domestic_APN:Ljava/lang/String; = "lte.sktelecom.com"

.field public static final SKT_IMS_APN:Ljava/lang/String; = "ims"

.field public static final SKT_MCCMNC:Ljava/lang/String; = "45005"

.field public static final SKT_MVNO_MCCMNC:Ljava/lang/String; = "45011"

.field public static final SKT_Roaming_3G_APN:Ljava/lang/String; = "roaming.sktelecom.com"

.field public static final SKT_Roaming_LTE_APN:Ljava/lang/String; = "lte-roaming.sktelecom.com"


# instance fields
.field public APN_FAIL_Flag:Z

.field public Domestic_APN_ID:I

.field public IMS_APN_ID:I

.field public Last_default_APN_ID:I

.field public Roaming_3G_APN_ID:I

.field public Roaming_LTE_APN_ID:I

.field public Roaming_check_APN_ID:I

.field featureset:Ljava/lang/String;

.field private mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .parameter "dct"
    .parameter "p"

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->APN_FAIL_Flag:Z

    .line 85
    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Domestic_APN_ID:I

    .line 87
    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->IMS_APN_ID:I

    .line 89
    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    .line 90
    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    .line 91
    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_check_APN_ID:I

    .line 98
    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Last_default_APN_ID:I

    .line 119
    const-string v0, "[LGE_DATA][ApnSelectionHandler] "

    const-string v1, "ApnSelectionHandler() has created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 127
    const-string v0, "ro.afwdata.LGfeatureset"

    const-string v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->featureset:Ljava/lang/String;

    .line 147
    return-void
.end method


# virtual methods
.method public findAllOperatorApnID(Lcom/android/internal/telephony/ApnSetting;)V
    .locals 2
    .parameter "apn"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->featureset:Ljava/lang/String;

    const-string v1, "LGTBASE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p1, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    const-string v1, "internet.lguplus.co.kr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Domestic_APN_ID:I

    if-nez v0, :cond_1

    .line 162
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Domestic_APN_ID:I

    .line 163
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Last_default_APN_ID:I

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    const-string v1, "wroaming.lguplus.co.kr"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    if-nez v0, :cond_2

    .line 166
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    .line 167
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Last_default_APN_ID:I

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    const-string v1, "lte-roaming.lguplus.co.kr"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    if-nez v0, :cond_0

    .line 172
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    .line 173
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Last_default_APN_ID:I

    goto :goto_0

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->featureset:Ljava/lang/String;

    const-string v1, "KTBASE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    iget-object v0, p1, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    const-string v1, "lte150.ktfwing.com"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Domestic_APN_ID:I

    if-nez v0, :cond_4

    .line 180
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Domestic_APN_ID:I

    .line 181
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Last_default_APN_ID:I

    goto :goto_0

    .line 182
    :cond_4
    iget-object v0, p1, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    const-string v1, "lte150.ktfwing.com"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    if-nez v0, :cond_0

    .line 183
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    .line 184
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Last_default_APN_ID:I

    goto :goto_0

    .line 189
    :cond_5
    iget-object v0, p1, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    const-string v1, "lte.sktelecom.com"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Domestic_APN_ID:I

    if-nez v0, :cond_6

    .line 191
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Domestic_APN_ID:I

    .line 192
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Last_default_APN_ID:I

    goto :goto_0

    .line 195
    :cond_6
    iget-object v0, p1, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    const-string v1, "ims"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->IMS_APN_ID:I

    if-nez v0, :cond_7

    .line 196
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->IMS_APN_ID:I

    .line 197
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_0

    .line 200
    :cond_7
    iget-object v0, p1, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    const-string v1, "roaming.sktelecom.com"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    if-nez v0, :cond_8

    .line 202
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    .line 203
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_0

    .line 204
    :cond_8
    iget-object v0, p1, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    const-string v1, "lte-roaming.sktelecom.com"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    if-nez v0, :cond_0

    .line 206
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    .line 207
    iget v0, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    iput v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_0
.end method

.method public selectApn(Ljava/lang/String;)V
    .locals 8
    .parameter "reason"

    .prologue
    .line 213
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, usim_mcc_mnc:Ljava/lang/String;
    const/4 v2, 0x0

    .line 215
    .local v2, changeAPN:Z
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 217
    .local v0, IsRoaming:Z
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredNetworkMode()I

    move-result v1

    .line 219
    .local v1, NWmode:I
    if-nez v4, :cond_0

    .line 220
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    const-string v6, "<selectApn()> usim_mcc_mnc is NULL. Just set \'Domestic APN\' to \'Preferred APN\', just in case!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v6, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredApn(I)V

    .line 403
    :goto_0
    return-void

    .line 227
    :cond_0
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<selectApn()> usim_mcc_mnc : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnectionTracker;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<selectApn()> IsRoaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<selectApn()> reason : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<selectApn()> Domestic_APN_ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<selectApn()> Roaming_3G_APN_ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<selectApn()> Roaming_LTE_APN_ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<selectApn()> Last_default_APN_ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Last_default_APN_ID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/DataProfile;

    move-result-object v3

    .line 243
    .local v3, mDP:Lcom/android/internal/telephony/DataProfile;
    if-eqz v3, :cond_2

    .line 244
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<selectApn()> getPreferredApn().id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/DataProfile;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-object v3, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/DataProfile;

    .line 248
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/DataProfile;

    move-result-object v3

    .line 259
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 266
    :cond_1
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<selectApn()> mAllApns is NULL. || mAllApns is Empty. || getPreferredApn() is NULL, getRadioTechnology["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 250
    :cond_2
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    const-string v6, "<selectApn()> getPreferredApn() is NULL. Just set \'Domestic APN\' to \'Preferred APN\' in case of initializing APN DB."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v6, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredApn(I)V

    .line 254
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/DataProfile;

    .line 256
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/DataProfile;

    move-result-object v3

    goto :goto_1

    .line 273
    :cond_3
    const-string v5, "45005"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "45011"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "45006"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "45008"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 286
    :cond_4
    const-string v5, "Select_default_APN_between_domestic_and_roaming"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 287
    if-eqz v3, :cond_5

    iget v5, v3, Lcom/android/internal/telephony/DataProfile;->id:I

    iget v6, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Last_default_APN_ID:I

    if-gt v5, v6, :cond_5

    .line 292
    if-eqz v0, :cond_a

    .line 294
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    if-eqz v5, :cond_7

    .line 296
    packed-switch v1, :pswitch_data_0

    .line 309
    :pswitch_0
    iget v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_check_APN_ID:I

    .line 330
    :goto_2
    if-eqz v3, :cond_5

    iget v5, v3, Lcom/android/internal/telephony/DataProfile;->id:I

    iget v6, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_check_APN_ID:I

    if-eq v5, v6, :cond_5

    .line 331
    const/4 v2, 0x1

    .line 355
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 356
    if-eqz v0, :cond_f

    .line 358
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    if-eqz v5, :cond_c

    .line 359
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<selectApn()> net.Is_LTERoaming_allowed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "net.Is_LTERoaming_allowed"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<selectApn()> NWmode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sparse-switch v1, :sswitch_data_0

    .line 372
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v6, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredApn(I)V

    .line 396
    :goto_4
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v6, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/DataProfile;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/DataProfile;

    .line 398
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mLGEDataConnectionTracker:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->sendPdnTable()V

    .line 401
    :cond_6
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<selectApn()> changeAPN : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<selectApn()> mPreferredApn : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 299
    :pswitch_1
    iget v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    iput v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_check_APN_ID:I

    goto/16 :goto_2

    .line 305
    :pswitch_2
    iget v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_check_APN_ID:I

    goto/16 :goto_2

    .line 315
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    if-eqz v5, :cond_9

    .line 316
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getLTEDataRoamingEnable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 317
    iget v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    iput v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_check_APN_ID:I

    .line 318
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<selectApn()> IsRoaming: LTE Roaming enabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_check_APN_ID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 320
    :cond_8
    iget v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_check_APN_ID:I

    .line 321
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<selectApn()> IsRoaming: W/G Roaming enabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_check_APN_ID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 327
    :cond_9
    iget v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_check_APN_ID:I

    goto/16 :goto_2

    .line 334
    :cond_a
    if-eqz v3, :cond_5

    iget v5, v3, Lcom/android/internal/telephony/DataProfile;->id:I

    iget v6, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Domestic_APN_ID:I

    if-eq v5, v6, :cond_5

    .line 335
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 344
    :cond_b
    const-string v5, "Added_APN_failed"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 345
    if-eqz v3, :cond_5

    iget v5, v3, Lcom/android/internal/telephony/DataProfile;->id:I

    iget v6, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Last_default_APN_ID:I

    if-le v5, v6, :cond_5

    .line 350
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 364
    :sswitch_0
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v6, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredApn(I)V

    goto/16 :goto_4

    .line 368
    :sswitch_1
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v6, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredApn(I)V

    goto/16 :goto_4

    .line 379
    :cond_c
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    if-eqz v5, :cond_e

    .line 380
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getLTEDataRoamingEnable()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 381
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v6, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredApn(I)V

    .line 382
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<selectApn()> changeAPN, LTE Roaming = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 384
    :cond_d
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v6, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredApn(I)V

    .line 385
    const-string v5, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<selectApn()> changeAPN, W/G Roaming = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 390
    :cond_e
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v6, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredApn(I)V

    goto/16 :goto_4

    .line 393
    :cond_f
    iget-object v5, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v6, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredApn(I)V

    goto/16 :goto_4

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 362
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public selectApnForLteRoamingOfUplus(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 407
    const-string v0, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<selectApnForLTERoamingOfUplus()> enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-eqz p1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v1, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredApn(I)V

    .line 415
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/DataProfile;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/DataProfile;

    .line 416
    const-string v0, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<selectApnForLTERoamingOfUplus()> mPreferredApn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mLGEDataConnectionTracker:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->sendPdnTable()V

    .line 419
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->mGsmDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v1, p0, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredApn(I)V

    goto :goto_0
.end method
