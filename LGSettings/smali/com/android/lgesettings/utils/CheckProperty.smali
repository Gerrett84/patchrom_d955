.class public Lcom/android/lgesettings/utils/CheckProperty;
.super Landroid/app/Activity;
.source "CheckProperty.java"


# instance fields
.field mPropertiesText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private frameworkValueCheckBoolean(ILjava/lang/String;)V
    .locals 3
    .parameter "valueName"
    .parameter "menuName"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckProperty;->mPropertiesText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lgesettings/utils/CheckProperty;->mPropertiesText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/utils/CheckProperty;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method private propertyCheckBoolean(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "propertyName"
    .parameter "menuName"

    .prologue
    .line 105
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckProperty;->mPropertiesText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lgesettings/utils/CheckProperty;->mPropertiesText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    if-eqz p2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckProperty;->mPropertiesText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lgesettings/utils/CheckProperty;->mPropertiesText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    return-void
.end method

.method private propertyCheckInt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "propertyName"
    .parameter "menuName"

    .prologue
    const/4 v3, -0x1

    .line 119
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckProperty;->mPropertiesText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lgesettings/utils/CheckProperty;->mPropertiesText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    if-eqz p2, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckProperty;->mPropertiesText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lgesettings/utils/CheckProperty;->mPropertiesText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    return-void
.end method

.method private propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "propertyName"
    .parameter "menuName"

    .prologue
    .line 91
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckProperty;->mPropertiesText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lgesettings/utils/CheckProperty;->mPropertiesText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    if-eqz p2, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckProperty;->mPropertiesText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lgesettings/utils/CheckProperty;->mPropertiesText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f04002f

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/CheckProperty;->setContentView(I)V

    .line 19
    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/CheckProperty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/utils/CheckProperty;->mPropertiesText:Landroid/widget/TextView;

    .line 21
    const-string v0, "ro.build.product"

    const-string v1, "Common"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v0, "ro.build.target_country"

    const-string v1, "Common"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "ro.build.target_operator"

    const-string v1, "Common"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v0, "ro.build.target_ril_platform"

    const-string v1, "Common"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v0, "ro.build.type"

    const-string v1, "Common"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v0, "ro.product.device"

    const-string v1, "Common"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "ro.product.device"

    const-string v1, "Common"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "ro.lge.mtk_dualsim"

    const-string v1, "MTK MultiSim"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v0, "ro.lge.mtk_triplesim"

    const-string v1, "MTK mtk_triplesim"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "persist.multisim.config"

    const-string v1, "MultiSim"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "ro.lge.capp_emotional_led"

    const-string v1, "EmotionalLED"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "ro.device.memory.system"

    const-string v1, "Storage"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "ro.device.memory.internal"

    const-string v1, "Storage"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "ime_onehand_keyboard"

    const-string v1, "One-handed Operation"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "ro.support_mpdn"

    const-string v1, "Networks"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "ro.telephony.default_network"

    const-string v1, "Mobile networks"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "ro.radio.networkmode"

    const-string v1, "Mobile networks"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, "LTE ready"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "gsm.sim.operator.alpha"

    const-string v1, "LTE ready"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "gsm.sim.operator.gid"

    const-string v1, "LTE ready"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "gsm.sim.operator.imsi"

    const-string v1, "LTE ready"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "gsm.sim.state"

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "gsm.operator.isroaming"

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "ro.product.name"

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "ro.factorytest"

    const-string v1, "2 - usb connection type"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "ro.bootmode"

    const-string v1, "pifboot - usb connection type"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "sys.allautotest.run"

    const-string v1, "usb connection type"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "gsm.lge.ota_ignoreKey"

    const-string v1, "usb connection type"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "ro.lge.capp_move_sdcard"

    const-string v1, "Apps - Move to SDcard"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "tangible_device_config"

    const-string v1, "Tangible"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "ril.cdma.inecmmode"

    const-string v1, "Battery saver"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "ro.lge.lcd_default_brightness"

    const-string v1, "Display"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckInt(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "ro.lge.lcd_auto_brightness_mode"

    const-string v1, "Display"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckInt(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "ro.lge.led_default_brightness"

    const-string v1, "Display"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckInt(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "ro.lge.capp_emotional_led"

    const-string v1, "Display"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "lge.hw.frontkeyled"

    const-string v1, "Display"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "ro.lge.basebandversion"

    const-string v1, "About Phone"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "gsm.version.baseband"

    const-string v1, "About Phone"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "ro.ril.fccid"

    const-string v1, "About Phone"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "ro.lge.swversion"

    const-string v1, "About Phone"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "ro.lge.swversion_telcel"

    const-string v1, "About Phone"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "ril.lge.swversion"

    const-string v1, "About Phone"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "lge.version.sw"

    const-string v1, "About Phone"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "ro.lge.priversion"

    const-string v1, "About Phone"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "ro.device.hapticfeedback"

    const-string v1, "Sound"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckInt(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "ro.config.vibrate_type"

    const-string v1, "Sound"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckInt(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "ro.build.characteristics"

    const-string v1, "Developper options"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "persist.sys.hdcp_checking"

    const-string v1, "Developper options"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "debug.egl.trace"

    const-string v1, "Developper options"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "persist.sys.ui.hw"

    const-string v1, "Developper options"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "debug.egl.force_msaa"

    const-string v1, "Developper options"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "ro.product.locale.language"

    const-string v1, "Language"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "persist.sys.encrypt"

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "persist.sys.sdencrypt"

    invoke-direct {p0, v0, v2}, Lcom/android/lgesettings/utils/CheckProperty;->propertyCheckBoolean(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const v0, 0x2070015

    const-string v1, "QuickButton"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckProperty;->frameworkValueCheckBoolean(ILjava/lang/String;)V

    .line 87
    return-void
.end method
