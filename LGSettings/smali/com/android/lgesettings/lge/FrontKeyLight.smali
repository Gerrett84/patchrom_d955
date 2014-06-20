.class public Lcom/android/lgesettings/lge/FrontKeyLight;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "FrontKeyLight.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private isPortrait:Z

.field private mCustomImagePreference:Landroid/widget/ImageView;

.field private mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

.field private mFrontKeyNotification:Landroid/preference/CheckBoxPreference;

.field private mTurnOnFrontKeyLight:Landroid/preference/CheckBoxPreference;

.field preLightDurationValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private chooseSelectImage(Z)V
    .locals 3
    .parameter "isOn"

    .prologue
    const/4 v2, 0x0

    .line 333
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 335
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "d1lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "batman_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "batman_dcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f0202fb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 415
    :goto_0
    return-void

    .line 339
    :cond_1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "i_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "i_dcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "x2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f0202fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 343
    :cond_3
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "vu10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 345
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f0202fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 347
    :cond_4
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cayman"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "batman_skt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "batman_lgu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 350
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f0202f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 363
    :cond_7
    const-string v0, "ro.lge.capp_emotional_led"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 365
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f0202f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    const-string v0, "FrontKeyLight"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Support model Emotional LED = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 370
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f0202f5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 371
    const-string v0, "FrontKeyLight"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support model Emotional LED = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 376
    :cond_9
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "d1lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "batman_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "batman_dcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 378
    :cond_a
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f0202f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 380
    :cond_b
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "i_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "i_dcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "x2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 382
    :cond_c
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f0202f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 384
    :cond_d
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "vu10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 386
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f0202f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 388
    :cond_e
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cayman"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "batman_skt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "batman_lgu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 391
    :cond_10
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f0202f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 404
    :cond_11
    const-string v0, "ro.lge.capp_emotional_led"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 406
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f0202ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 407
    const-string v0, "FrontKeyLight"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Support model Emotional LED = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 411
    :cond_12
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    const v1, 0x7f0202ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 412
    const-string v0, "FrontKeyLight"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support model Emotional LED = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isContainfromValues(Ljava/lang/Object;)Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v3, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    if-nez v3, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v2

    .line 129
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/DoubleTitleListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 130
    .local v1, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 131
    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    const/4 v2, 0x1

    goto :goto_0

    .line 130
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isNotUpgradeGModel()Z
    .locals 2

    .prologue
    .line 418
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->is_G_model_Device(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SHB"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VDF"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SCA"

    const-string v1, "ro.build.target_region"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CUCC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "STL"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MON"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ESA"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AME"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_byt_fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_free_fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_h3g_com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_ncm_nw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_nrj_fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_open_cis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_open_eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_org_com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_pls_pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_tel_au"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_tim_it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_tlf_eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_tln_nw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_tmn_pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "geehrc_tmo_com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    :cond_0
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPortraitOri()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 64
    .local v0, conf:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v1, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateFrontKeyLEDTimeoutSummary(Ljava/lang/Object;)V
    .locals 5
    .parameter "value"

    .prologue
    .line 300
    const-string v3, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 309
    .local v1, summaries:[Ljava/lang/CharSequence;
    :goto_0
    iget-object v3, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/DoubleTitleListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 311
    .local v2, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 312
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 313
    iget-object v3, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/DoubleTitleListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v3, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v3, v0}, Lcom/android/lgesettings/DoubleTitleListPreference;->setValueIndex(I)V

    .line 318
    :cond_0
    return-void

    .line 306
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/CharSequence;
    .end local v2           #values:[Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1       #summaries:[Ljava/lang/CharSequence;
    goto :goto_0

    .line 311
    .restart local v0       #i:I
    .restart local v2       #values:[Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateUi(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 10
    .parameter "inflater"

    .prologue
    const v9, 0x7f0400ba

    const v8, 0x7f0400b9

    const v7, 0x7f040048

    const v6, 0x102000a

    const/4 v5, 0x0

    .line 68
    const/4 v2, 0x0

    .line 70
    .local v2, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->isPortraitOri()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->isPortrait:Z

    .line 71
    iget-boolean v3, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->isPortrait:Z

    if-eqz v3, :cond_3

    .line 72
    const-string v3, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ro.lge.capp_emotional_led"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->is_G_model_Device(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "vee3ds"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "vee3e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    :cond_1
    invoke-virtual {p1, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 78
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 79
    .local v1, list:Landroid/widget/ListView;
    invoke-virtual {p1, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 80
    .local v0, linear:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 101
    .end local v0           #linear:Landroid/widget/LinearLayout;
    .end local v1           #list:Landroid/widget/ListView;
    :goto_0
    return-object v2

    .line 82
    :cond_2
    invoke-virtual {p1, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 83
    const v3, 0x7f0a009e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    .line 84
    iget-object v3, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 87
    :cond_3
    const-string v3, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "batman_dcm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "vee3ds"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "vee3e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 91
    :cond_4
    invoke-virtual {p1, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 92
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 93
    .restart local v1       #list:Landroid/widget/ListView;
    invoke-virtual {p1, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 94
    .restart local v0       #linear:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0

    .line 96
    .end local v0           #linear:Landroid/widget/LinearLayout;
    .end local v1           #list:Landroid/widget/ListView;
    :cond_5
    invoke-virtual {p1, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 97
    const v3, 0x7f0a009e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    .line 98
    iget-object v3, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mCustomImagePreference:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "arg0"

    .prologue
    const v10, 0x7f0809de

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v9, 0x5dc

    .line 140
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 142
    .local v4, resolver:Landroid/content/ContentResolver;
    const v5, 0x7f060023

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/FrontKeyLight;->addPreferencesFromResource(I)V

    .line 144
    const-string v5, "front_key_light_prevalue"

    invoke-static {v4, v5, v9}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->preLightDurationValue:I

    .line 146
    const-string v5, "front_key_notification"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/FrontKeyLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyNotification:Landroid/preference/CheckBoxPreference;

    .line 147
    const-string v5, "checkbox_front_key_light"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/FrontKeyLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mTurnOnFrontKeyLight:Landroid/preference/CheckBoxPreference;

    .line 148
    iget-object v8, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyNotification:Landroid/preference/CheckBoxPreference;

    const-string v5, "front_key_indicator"

    invoke-static {v4, v5, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 150
    iget-object v8, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mTurnOnFrontKeyLight:Landroid/preference/CheckBoxPreference;

    const-string v5, "frontkey_led_timeout"

    invoke-static {v4, v5, v9}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 153
    const-string v5, "frontkey_category"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/FrontKeyLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 154
    .local v3, pc:Landroid/preference/PreferenceCategory;
    const-string v5, "ps_front"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/FrontKeyLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 157
    .local v2, front_ps:Landroid/preference/PreferenceScreen;
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v8, "l2s"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v8, "cayman"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ro.lge.capp_emotional_led"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 159
    :cond_0
    iget-object v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    :cond_1
    :goto_2
    const-string v5, "front_key_light_duration"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/FrontKeyLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/lgesettings/DoubleTitleListPreference;

    iput-object v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    .line 176
    iget-object v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v7, 0x7f0809e1

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/lge/FrontKeyLight;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/lgesettings/DoubleTitleListPreference;->setSubTitle(Ljava/lang/String;)V

    .line 179
    const-string v5, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 181
    iget-object v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v7, 0x7f090088

    invoke-virtual {v5, v7}, Lcom/android/lgesettings/DoubleTitleListPreference;->setEntryValues(I)V

    .line 182
    iget-object v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v7, 0x7f090086

    invoke-virtual {v5, v7}, Lcom/android/lgesettings/DoubleTitleListPreference;->setEntries(I)V

    .line 186
    :cond_2
    const-string v5, "frontkey_led_timeout"

    invoke-static {v4, v5, v9}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 187
    .local v1, currentledtime:I
    const/16 v5, 0xbb8

    if-ne v1, v5, :cond_b

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/FrontKeyLight;->isContainfromValues(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 189
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "frontkey_led_timeout"

    const/16 v8, 0xa8c

    invoke-static {v5, v7, v8}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    const-string v7, "frontkey_led_timeout"

    invoke-static {v4, v7, v9}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/lgesettings/DoubleTitleListPreference;->setValue(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "d1lv"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-direct {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->isNotUpgradeGModel()Z

    move-result v5

    if-nez v5, :cond_d

    .line 205
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v7, 0x7f0809d8

    invoke-virtual {v5, v7}, Landroid/app/ActionBar;->setTitle(I)V

    .line 206
    iget-object v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mTurnOnFrontKeyLight:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0809da

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 207
    iget-object v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mTurnOnFrontKeyLight:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0809dc

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 208
    iget-object v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v5, v10}, Lcom/android/lgesettings/DoubleTitleListPreference;->setTitle(I)V

    .line 209
    iget-object v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {p0, v10}, Lcom/android/lgesettings/lge/FrontKeyLight;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/lgesettings/DoubleTitleListPreference;->setMainTitle(Ljava/lang/String;)V

    .line 216
    :goto_4
    iget-object v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v5, p0}, Lcom/android/lgesettings/DoubleTitleListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 220
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 221
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 224
    :cond_4
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VZW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 225
    iget-object v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mTurnOnFrontKeyLight:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f080fe7

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 227
    :cond_5
    return-void

    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #currentledtime:I
    .end local v2           #front_ps:Landroid/preference/PreferenceScreen;
    .end local v3           #pc:Landroid/preference/PreferenceCategory;
    :cond_6
    move v5, v7

    .line 148
    goto/16 :goto_0

    :cond_7
    move v5, v7

    .line 150
    goto/16 :goto_1

    .line 163
    .restart local v2       #front_ps:Landroid/preference/PreferenceScreen;
    .restart local v3       #pc:Landroid/preference/PreferenceCategory;
    :cond_8
    const-string v5, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/lgesettings/Utils;->is_G_model_Device(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 165
    :cond_9
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "batman_dcm"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 166
    iget-object v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyNotification:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f080d09

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/lge/FrontKeyLight;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 171
    :cond_a
    iget-object v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 191
    .restart local v1       #currentledtime:I
    :cond_b
    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/FrontKeyLight;->isContainfromValues(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 192
    const-string v5, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 193
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "frontkey_led_timeout"

    const/16 v8, 0x1770

    invoke-static {v5, v7, v8}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 195
    :cond_c
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "frontkey_led_timeout"

    invoke-static {v5, v7, v9}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 213
    :cond_d
    iget-object v5, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v7, 0x7f0809df

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/lge/FrontKeyLight;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/lgesettings/DoubleTitleListPreference;->setMainTitle(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/FrontKeyLight;->updateUi(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 323
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 324
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->finish()V

    .line 326
    const/4 v1, 0x1

    .line 328
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, key:Ljava/lang/String;
    const-string v2, "front_key_light_duration"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mTurnOnFrontKeyLight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 286
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 288
    .local v1, value:I
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "frontkey_led_timeout"

    invoke-static {v2, v3, v1}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    invoke-direct {p0, p2}, Lcom/android/lgesettings/lge/FrontKeyLight;->updateFrontKeyLEDTimeoutSummary(Ljava/lang/Object;)V

    .line 294
    .end local v1           #value:I
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/16 v5, 0x5dc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 233
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mTurnOnFrontKeyLight:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mTurnOnFrontKeyLight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/DoubleTitleListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->preLightDurationValue:I

    .line 238
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "front_key_light_prevalue"

    iget v2, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->preLightDurationValue:I

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "frontkey_led_timeout"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "front_key_light_prevalue"

    invoke-static {v0, v1}, Lcom/lge/provider/SettingsEx$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/FrontKeyLight;->updateFrontKeyLEDTimeoutSummary(Ljava/lang/Object;)V

    .line 246
    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/FrontKeyLight;->chooseSelectImage(Z)V

    .line 262
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyNotification:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "front_key_indicator"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 250
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "front_key_light_prevalue"

    invoke-static {v0, v1, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->preLightDurationValue:I

    .line 252
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "frontkey_led_timeout"

    iget v2, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->preLightDurationValue:I

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "frontkey_led_timeout"

    invoke-static {v1, v2, v5}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DoubleTitleListPreference;->setValue(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/DoubleTitleListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/FrontKeyLight;->updateFrontKeyLEDTimeoutSummary(Ljava/lang/Object;)V

    .line 258
    invoke-direct {p0, v4}, Lcom/android/lgesettings/lge/FrontKeyLight;->chooseSelectImage(Z)V

    goto :goto_0

    .line 270
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontKeyLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "front_key_indicator"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 113
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mTurnOnFrontKeyLight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/FrontKeyLight;->chooseSelectImage(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->mFrontKeyLightDuration:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/DoubleTitleListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/FrontKeyLight;->updateFrontKeyLEDTimeoutSummary(Ljava/lang/Object;)V

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/FrontKeyLight;->chooseSelectImage(Z)V

    .line 118
    iget v0, p0, Lcom/android/lgesettings/lge/FrontKeyLight;->preLightDurationValue:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/FrontKeyLight;->updateFrontKeyLEDTimeoutSummary(Ljava/lang/Object;)V

    goto :goto_0
.end method
