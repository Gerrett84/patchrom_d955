.class public Lcom/android/lgesettings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;
    }
.end annotation


# instance fields
.field private final MAX_PASS_COUNTER:I

.field private final MAX_SSID_COUNTER:I

.field private callerContext:Landroid/content/Context;

.field private mAlertDialogView:Landroid/view/View;

.field private mCurrentSsid:Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mDoNotShowAgain:Z

.field private mEndIp:Landroid/widget/EditText;

.field private mIpAddress:Landroid/widget/EditText;

.field private mIsCreteMode:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMaxClientNum:I

.field private mOldSecurityTypeIndex:I

.field private mPassword:Landroid/widget/EditText;

.field private mSecurityTypeIndex:I

.field private mShowPassword:Landroid/widget/CheckBox;

.field private mSsid:Landroid/widget/TextView;

.field private mStartIp:Landroid/widget/EditText;

.field private mSubnetMask:Landroid/widget/EditText;

.field private mView:Landroid/view/View;

.field private mVisibility:Landroid/widget/CheckBox;

.field private mVisibilityType:I

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private showPasswordCheckboxPref:Landroid/content/SharedPreferences;

.field private showPasswordCheckboxPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private warningDisplayed_pass:Z

.field private warningDisplayed_ssid:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .parameter "context"
    .parameter "listener"
    .parameter "wifiConfig"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 93
    iput v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 94
    iput v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mOldSecurityTypeIndex:I

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    .line 105
    const/16 v1, 0x20

    iput v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->MAX_SSID_COUNTER:I

    .line 106
    const/16 v1, 0x3f

    iput v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->MAX_PASS_COUNTER:I

    .line 113
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->warningDisplayed_ssid:Z

    .line 114
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->warningDisplayed_pass:Z

    .line 120
    iput v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibilityType:I

    .line 121
    iput v4, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mMaxClientNum:I

    .line 128
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mDoNotShowAgain:Z

    .line 142
    iput-boolean v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mIsCreteMode:Z

    .line 149
    iput-object p2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 150
    iput-object p3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 151
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    .line 152
    if-eqz p3, :cond_1

    .line 153
    invoke-static {p3}, Lcom/android/lgesettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    iput v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mOldSecurityTypeIndex:I

    .line 156
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    :try_start_0
    const-string v1, "WifiApDialog"

    const-string v2, "successfully find wifi_ssid_visiblity from SECURE DB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ssid_visibility"

    invoke-static {v1, v2}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibilityType:I
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    :try_start_1
    const-string v1, "WifiApDialog"

    const-string v2, "successfully find wifi_ap_current_max_client from SECURE DB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_current_max_client"

    invoke-static {v1, v2}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mMaxClientNum:I
    :try_end_1
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    :goto_1
    const-string v1, "WifiApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Initial visibility ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibilityType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v1, "WifiApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Initial maxClientNum ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mMaxClientNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_1
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ssid_visibility"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibilityType:I

    goto :goto_0

    .line 168
    .end local v0           #e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    :catch_1
    move-exception v0

    .line 169
    .restart local v0       #e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_current_max_client"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mMaxClientNum:I

    goto :goto_1
.end method

.method private Hotspot_pass()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 553
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 554
    .local v1, sb:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 556
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v0, v2

    .line 559
    .local v0, bytelen:I
    const-string v2, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 560
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 561
    iget-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->warningDisplayed_pass:Z

    if-nez v2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/wifi/WifiApDialog;->checkFormValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    const v3, 0x7f080d28

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 564
    iput-boolean v5, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->warningDisplayed_pass:Z

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->warningDisplayed_pass:Z

    if-ne v2, v5, :cond_0

    .line 569
    iput-boolean v4, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->warningDisplayed_pass:Z

    goto :goto_0
.end method

.method private Hotspot_ssid()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 530
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 531
    .local v1, sb:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v0, v2

    .line 536
    .local v0, bytelen:I
    const-string v2, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 538
    iget-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->warningDisplayed_ssid:Z

    if-nez v2, :cond_0

    .line 539
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/wifi/WifiApDialog;->checkFormValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    const v3, 0x7f080d29

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 541
    iput-boolean v5, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->warningDisplayed_ssid:Z

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->warningDisplayed_ssid:Z

    if-ne v2, v5, :cond_0

    .line 546
    iput-boolean v4, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->warningDisplayed_ssid:Z

    goto :goto_0
.end method

.method private NetmaskToPrefixLength(Ljava/lang/String;)I
    .locals 9
    .parameter "netNotation"

    .prologue
    .line 606
    const-wide/16 v1, 0x0

    .line 607
    .local v1, mask:J
    const/4 v4, 0x0

    .line 608
    .local v4, zeroCnt:I
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, values:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 610
    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    or-long/2addr v1, v5

    .line 611
    add-int/lit8 v5, v0, 0x1

    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 612
    const/16 v5, 0x8

    shl-long/2addr v1, v5

    .line 609
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/16 v5, 0x20

    if-ge v0, v5, :cond_3

    .line 616
    const-wide/16 v5, 0x1

    and-long/2addr v5, v1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 617
    add-int/lit8 v4, v4, 0x1

    .line 618
    const/4 v5, 0x1

    shr-long/2addr v1, v5

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 620
    :cond_2
    rsub-int/lit8 v5, v4, 0x20

    .line 623
    :goto_2
    return v5

    :cond_3
    rsub-int/lit8 v5, v4, 0x20

    goto :goto_2
.end method

.method static synthetic access$002(Lcom/android/lgesettings/wifi/WifiApDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mMaxClientNum:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/WifiApDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mDoNotShowAgain:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/wifi/WifiApDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mDoNotShowAgain:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/WifiApDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkFormValid(Ljava/lang/String;)Z
    .locals 5
    .parameter "str"

    .prologue
    .line 518
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 520
    .local v0, maxLen:I
    const/4 v2, 0x0

    .local v2, startIndex:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 521
    const-string v3, "[\\uAC00-\\uD7A3\\u1100-\\u11F9\\u3131-\\u318E]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 522
    .local v1, result:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-eqz v1, :cond_0

    .line 523
    const/4 v3, 0x1

    .line 526
    .end local v1           #result:Z
    :goto_1
    return v3

    .line 520
    .restart local v1       #result:Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    .end local v1           #result:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "wifiConfig"

    .prologue
    const/4 v0, 0x1

    .line 180
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    :goto_0
    return v0

    .line 182
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    const/4 v0, 0x2

    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 4

    .prologue
    const v3, 0x7f0a039a

    const/4 v2, 0x0

    .line 834
    iget v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v1, :cond_2

    .line 835
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 837
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mIsCreteMode:Z

    if-nez v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    const v2, 0x7f0812af

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 839
    .local v0, warningMessage:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 843
    .end local v0           #warningMessage:Landroid/widget/Toast;
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 844
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 850
    :cond_1
    :goto_0
    return-void

    .line 848
    :cond_2
    iput-boolean v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mIsCreteMode:Z

    .line 849
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private validate()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 629
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v1, v3, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v1, v3, :cond_6

    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_6

    .line 633
    :cond_4
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 634
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 656
    :cond_5
    :goto_0
    return-void

    .line 637
    :cond_6
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KDDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 638
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 639
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApDialog;->validate_ipconfig()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 640
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 643
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_7
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 648
    :cond_8
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 649
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private validate_ipconfig()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 576
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mIpAddress:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, ipAddr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSubnetMask:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 578
    .local v5, subNet:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mStartIp:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, startAddr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mEndIp:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, endAddr:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 603
    :cond_0
    :goto_0
    return v6

    .line 582
    :cond_1
    const/4 v2, 0x0

    .line 584
    .local v2, inetAddr:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 589
    :try_start_1
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 594
    :try_start_2
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 599
    :try_start_3
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 603
    const/4 v6, 0x1

    goto :goto_0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, e:Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 590
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 591
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 595
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 596
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 600
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 601
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApDialog;->Hotspot_ssid()V

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 817
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApDialog;->Hotspot_pass()V

    .line 819
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApDialog;->validate()V

    .line 820
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mCurrentSsid:Ljava/lang/String;

    .line 810
    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 190
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 198
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 200
    iget v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 223
    const/4 v0, 0x0

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-object v0

    .line 202
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 207
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 208
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 215
    .end local v1           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 216
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 217
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .restart local v1       #password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isNewConfig()Z
    .locals 14

    .prologue
    const/4 v10, 0x1

    .line 229
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v11

    const-string v12, "US"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ATT"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v11

    const-string v12, "TMO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 230
    :cond_0
    const-string v11, "WifiApDialog"

    const-string v12, "##isNewConfig"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x0

    .line 237
    .local v0, changeFlag:Z
    :try_start_0
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_ssid_visibility"

    invoke-static {v11, v12}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    .line 238
    .local v9, visible:I
    const-string v11, "WifiApDialog"

    const-string v12, "successfully find wifi_ssid_visiblity from SECURE DB"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    :try_start_1
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_ap_current_max_client"

    invoke-static {v11, v12}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    .line 245
    .local v4, maxClient:I
    const-string v11, "WifiApDialog"

    const-string v12, "successfully find wifi_ap_current_max_client from SECURE DB"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :goto_1
    const-string v11, "WifiApDialog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mVisibilityType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibilityType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " DB = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v11, "WifiApDialog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mMaxClientNum = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mMaxClientNum:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " DB = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibilityType:I

    if-eq v11, v9, :cond_1

    .line 254
    :try_start_2
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_ssid_visibility"

    invoke-static {v11, v12}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    .line 255
    .local v8, temp:I
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_ssid_visibility"

    iget v13, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibilityType:I

    invoke-static {v11, v12, v13}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 260
    .end local v8           #temp:I
    :goto_2
    const-string v11, "WifiApDialog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UpdateDB  visibility to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibilityType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v0, 0x1

    .line 263
    :cond_1
    iget v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mMaxClientNum:I

    if-eq v11, v4, :cond_2

    .line 265
    :try_start_3
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_ap_current_max_client"

    invoke-static {v11, v12}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    .line 266
    .restart local v8       #temp:I
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_ap_current_max_client"

    iget v13, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mMaxClientNum:I

    invoke-static {v11, v12, v13}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 270
    .end local v8           #temp:I
    :goto_3
    const/4 v0, 0x1

    .line 273
    :cond_2
    if-ne v0, v10, :cond_4

    .line 328
    .end local v0           #changeFlag:Z
    .end local v4           #maxClient:I
    .end local v9           #visible:I
    :cond_3
    :goto_4
    return v0

    .line 239
    .restart local v0       #changeFlag:Z
    :catch_0
    move-exception v1

    .line 240
    .local v1, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_ssid_visibility"

    invoke-static {v11, v12, v10}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .restart local v9       #visible:I
    goto/16 :goto_0

    .line 246
    .end local v1           #e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    :catch_1
    move-exception v1

    .line 247
    .restart local v1       #e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_ap_current_max_client"

    const/16 v13, 0x8

    invoke-static {v11, v12, v13}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .restart local v4       #maxClient:I
    goto/16 :goto_1

    .line 256
    .end local v1           #e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    :catch_2
    move-exception v1

    .line 257
    .restart local v1       #e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_ssid_visibility"

    iget v13, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibilityType:I

    invoke-static {v11, v12, v13}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 267
    .end local v1           #e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    :catch_3
    move-exception v1

    .line 268
    .restart local v1       #e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wifi_ap_current_max_client"

    iget v13, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mMaxClientNum:I

    invoke-static {v11, v12, v13}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 279
    .end local v0           #changeFlag:Z
    .end local v1           #e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    .end local v4           #maxClient:I
    .end local v9           #visible:I
    :cond_4
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v11

    const-string v12, "KDDI"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 280
    const/4 v0, 0x0

    .line 282
    .restart local v0       #changeFlag:Z
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "gateway"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, pre_value:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mIpAddress:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, ipAddress:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 285
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "gateway"

    invoke-static {v11, v12, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 286
    const/4 v0, 0x1

    .line 288
    :cond_5
    const-string v11, "WifiApDialog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[KDDI]Tethering set mIpAddress : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "mask"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 290
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSubnetMask:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 291
    .local v7, subNetMask:Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 292
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "mask"

    invoke-static {v11, v12, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "prefix_length"

    invoke-direct {p0, v7}, Lcom/android/lgesettings/wifi/WifiApDialog;->NetmaskToPrefixLength(Ljava/lang/String;)I

    move-result v13

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    const/4 v0, 0x1

    .line 296
    :cond_6
    const-string v11, "WifiApDialog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[KDDI]Tethering set mSubNetMask : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "start_ip"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 298
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mStartIp:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 299
    .local v6, startIp:Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 300
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "start_ip"

    invoke-static {v11, v12, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 301
    const/4 v0, 0x1

    .line 303
    :cond_7
    const-string v11, "WifiApDialog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[KDDI]Tethering set mStartIp : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "end_ip"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 305
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mEndIp:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, endIp:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 307
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "end_ip"

    invoke-static {v11, v12, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 308
    const/4 v0, 0x1

    .line 310
    :cond_8
    const-string v11, "WifiApDialog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[KDDI]Tethering set mEndIp : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    if-nez v0, :cond_3

    .line 316
    .end local v0           #changeFlag:Z
    .end local v2           #endIp:Ljava/lang/String;
    .end local v3           #ipAddress:Ljava/lang/String;
    .end local v5           #pre_value:Ljava/lang/String;
    .end local v6           #startIp:Ljava/lang/String;
    .end local v7           #subNetMask:Ljava/lang/String;
    :cond_9
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v11, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    move v0, v10

    .line 318
    goto/16 :goto_4

    .line 320
    :cond_a
    iget v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mOldSecurityTypeIndex:I

    iget v12, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v11, v12, :cond_b

    move v0, v10

    .line 322
    goto/16 :goto_4

    .line 324
    :cond_b
    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v11, v11, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v11, v11, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    move v0, v10

    .line 326
    goto/16 :goto_4

    .line 328
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_4
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "c"
    .parameter "cb"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 662
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v4

    const v5, 0x7f0a0397

    if-ne v4, v5, :cond_4

    .line 663
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 664
    .local v2, selectionStart:I
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 667
    .local v1, selectionEnd:I
    const-string v4, "ro.build.target_country"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AU"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "ro.build.target_operator"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TEL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 668
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz p2, :cond_1

    :goto_0
    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 682
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3, v2, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 732
    .end local v1           #selectionEnd:I
    .end local v2           #selectionStart:I
    :cond_0
    :goto_2
    return-void

    .line 668
    .restart local v1       #selectionEnd:I
    .restart local v2       #selectionStart:I
    :cond_1
    const/16 v3, 0x10

    goto :goto_0

    .line 676
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz p2, :cond_3

    const/16 v3, 0x90

    :goto_3
    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    :cond_3
    const/16 v3, 0x80

    goto :goto_3

    .line 684
    .end local v1           #selectionEnd:I
    .end local v2           #selectionStart:I
    :cond_4
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v4

    const v5, 0x7f0a03a3

    if-ne v4, v5, :cond_0

    .line 685
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 686
    :cond_5
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibility:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v3, 0x1

    :cond_6
    iput v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibilityType:I

    .line 687
    const-string v3, "WifiApDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "## onCheckedChanged(),   mVisibilityType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibilityType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mDoNotShowAgain = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mDoNotShowAgain:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "US"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 690
    iget v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibilityType:I

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mDoNotShowAgain:Z

    if-nez v3, :cond_0

    .line 691
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 692
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040163

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mAlertDialogView:Landroid/view/View;

    .line 694
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x2020239

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08169c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mAlertDialogView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08059d

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 701
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mAlertDialogView:Landroid/view/View;

    const v4, 0x7f0a002e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/lgesettings/wifi/WifiApDialog$2;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/wifi/WifiApDialog$2;-><init>(Lcom/android/lgesettings/wifi/WifiApDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mDialog:Landroid/app/AlertDialog;

    .line 724
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const v6, 0x7f0a039d

    const/4 v3, 0x0

    .line 737
    const-string v2, "USC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 738
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->showPasswordCheckboxPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "check"

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 739
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->showPasswordCheckboxPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 743
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x7f0a0397

    if-ne v2, v4, :cond_2

    .line 744
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 745
    .local v1, selectionStart:I
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 747
    .local v0, selectionEnd:I
    const-string v2, "ro.build.target_country"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AU"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "TEL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 748
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    move-object v2, p1

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    or-int/lit8 v2, v2, 0x2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 760
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 763
    .end local v0           #selectionEnd:I
    .end local v1           #selectionStart:I
    :cond_2
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v4, "KDDI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 764
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x7f0a039c

    if-ne v2, v4, :cond_3

    .line 765
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 766
    const-string v2, "WifiApDialog"

    const-string v4, "[KDDI]Tethering setCheckBoxSection - wifi_advanced_togglebox - isChecked(TRUE)"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 768
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApDialog;->validate()V

    .line 777
    :cond_3
    :goto_2
    return-void

    .line 748
    .restart local v0       #selectionEnd:I
    .restart local v1       #selectionStart:I
    .restart local p1
    :cond_4
    const/16 v2, 0x10

    goto :goto_0

    .line 755
    :cond_5
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    move-object v2, p1

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x90

    :goto_3
    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    :cond_6
    const/16 v2, 0x80

    goto :goto_3

    .line 770
    .end local v0           #selectionEnd:I
    .end local v1           #selectionStart:I
    .end local p1
    :cond_7
    const-string v2, "WifiApDialog"

    const-string v3, "[KDDI]Tethering setCheckBoxSection - wifi_advanced_togglebox - isChecked(FALSE)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 772
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApDialog;->validate()V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 334
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v8

    const-string v9, "US"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TMO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 335
    const-string v8, "WifiApDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "onCreate()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    const-string v9, "NOT_SHOW"

    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 338
    .local v5, pref_ns:Landroid/content/SharedPreferences;
    const-string v8, "not_show"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 340
    .local v1, flag_ns:Z
    if-eqz v1, :cond_10

    .line 341
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mDoNotShowAgain:Z

    .line 345
    :goto_0
    const-string v8, "WifiApDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "## onCreate(),  mDoNotShowAgain = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mDoNotShowAgain:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mIsCreteMode:Z

    .line 350
    .end local v1           #flag_ns:Z
    .end local v5           #pref_ns:Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v8

    const-string v9, "US"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ATT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TMO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 351
    :cond_1
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TMO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 352
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04019f

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 378
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0399

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 379
    .local v3, mSecurity:Landroid/widget/Spinner;
    const/4 v2, 0x0

    .line 380
    .local v2, mMaxClient:Landroid/widget/Spinner;
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v8

    const-string v9, "US"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ATT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TMO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 381
    :cond_3
    const-string v8, "WifiApDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "## onCreate(),  mVisibilityType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibilityType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a03a3

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibility:Landroid/widget/CheckBox;

    .line 383
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibility:Landroid/widget/CheckBox;

    iget v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibilityType:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_13

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v9, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 384
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    iput-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 386
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a03a4

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #mMaxClient:Landroid/widget/Spinner;
    check-cast v2, Landroid/widget/Spinner;

    .line 387
    .restart local v2       #mMaxClient:Landroid/widget/Spinner;
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v8

    const/16 v9, 0xd

    if-eq v8, v9, :cond_14

    .line 388
    new-instance v8, Lcom/android/lgesettings/wifi/WifiApDialog$1;

    invoke-direct {v8, p0}, Lcom/android/lgesettings/wifi/WifiApDialog$1;-><init>(Lcom/android/lgesettings/wifi/WifiApDialog;)V

    invoke-virtual {v2, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 402
    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 403
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 405
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 407
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v8

    const-string v9, "US"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ATT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 408
    const v8, 0x7f08136a

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/wifi/WifiApDialog;->setTitle(I)V

    .line 415
    :goto_4
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0370

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0104

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    .line 417
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0384

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 420
    const-string v8, "USC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 421
    :cond_5
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    const-string v9, "showpassword"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->showPasswordCheckboxPref:Landroid/content/SharedPreferences;

    .line 422
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->showPasswordCheckboxPref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iput-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->showPasswordCheckboxPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 426
    :cond_6
    const/4 v8, -0x1

    const v9, 0x7f0802e6

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/lgesettings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 427
    const/4 v8, -0x2

    const v9, 0x7f0802e8

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/lgesettings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 430
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v8, :cond_8

    .line 431
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v3, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 434
    iget v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_7

    iget v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    .line 436
    :cond_7
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v9, "        "

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 437
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 445
    :cond_8
    :goto_5
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v8

    const-string v9, "US"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ATT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TMO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 446
    :cond_9
    iget v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mMaxClientNum:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 451
    :cond_a
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 453
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApDialog;->showSecurityFields()V

    .line 454
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApDialog;->validate()V

    .line 457
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 460
    new-instance v7, Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;

    const/16 v8, 0x20

    const-string v9, "UTF-8"

    invoke-direct {v7, p0, v0, v8, v9}, Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;-><init>(Lcom/android/lgesettings/wifi/WifiApDialog;Landroid/content/Context;ILjava/lang/String;)V

    .line 461
    .local v7, ssidByteLengthFilter:Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/text/InputFilter;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 462
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 465
    new-instance v4, Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;

    const/16 v8, 0x3f

    const-string v9, "UTF-8"

    invoke-direct {v4, p0, v0, v8, v9}, Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;-><init>(Lcom/android/lgesettings/wifi/WifiApDialog;Landroid/content/Context;ILjava/lang/String;)V

    .line 466
    .local v4, passwordByteLengthFilter:Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/text/InputFilter;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 470
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0397

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mShowPassword:Landroid/widget/CheckBox;

    .line 473
    const-string v8, "ro.build.target_country"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "AU"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "ro.build.target_operator"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "TEL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 474
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_18

    const/4 v8, 0x0

    :goto_6
    or-int/lit8 v8, v8, 0x2

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 482
    :cond_b
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v8

    const-string v9, "US"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ATT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TMO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 483
    :cond_c
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mShowPassword:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 484
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_19

    const/16 v8, 0x90

    :goto_7
    or-int/lit8 v8, v8, 0x1

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 489
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibility:Landroid/widget/CheckBox;

    invoke-virtual {v8, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mVisibility:Landroid/widget/CheckBox;

    invoke-virtual {v8, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 494
    :cond_d
    const-string v8, "USC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 495
    :cond_e
    const/4 v6, 0x0

    .line 496
    .local v6, showPassword:Z
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->showPasswordCheckboxPref:Landroid/content/SharedPreferences;

    const-string v9, "check"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 497
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v8, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 499
    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1a

    const/16 v8, 0x90

    :goto_8
    or-int/lit8 v8, v8, 0x1

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 504
    .end local v6           #showPassword:Z
    :cond_f
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v8, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v8, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 511
    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 513
    return-void

    .line 343
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #mMaxClient:Landroid/widget/Spinner;
    .end local v3           #mSecurity:Landroid/widget/Spinner;
    .end local v4           #passwordByteLengthFilter:Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;
    .end local v7           #ssidByteLengthFilter:Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;
    .restart local v1       #flag_ns:Z
    .restart local v5       #pref_ns:Landroid/content/SharedPreferences;
    :cond_10
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mDoNotShowAgain:Z

    goto/16 :goto_0

    .line 354
    .end local v1           #flag_ns:Z
    .end local v5           #pref_ns:Landroid/content/SharedPreferences;
    :cond_11
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04019c

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    goto/16 :goto_1

    .line 357
    :cond_12
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04019a

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 359
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "KDDI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 360
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a039b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a039c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a039f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mIpAddress:Landroid/widget/EditText;

    .line 363
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a03a0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSubnetMask:Landroid/widget/EditText;

    .line 364
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a03a1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mStartIp:Landroid/widget/EditText;

    .line 365
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a03a2

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mEndIp:Landroid/widget/EditText;

    .line 366
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mIpAddress:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "gateway"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSubnetMask:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "mask"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mStartIp:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "start_ip"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mEndIp:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->callerContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "end_ip"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mIpAddress:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 371
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSubnetMask:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 372
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mStartIp:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 373
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mEndIp:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_1

    .line 383
    .restart local v2       #mMaxClient:Landroid/widget/Spinner;
    .restart local v3       #mSecurity:Landroid/widget/Spinner;
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 397
    :cond_14
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_3

    .line 409
    .restart local v0       #context:Landroid/content/Context;
    :cond_15
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v8

    const-string v9, "US"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TMO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 410
    const v8, 0x7f0812a7

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/wifi/WifiApDialog;->setTitle(I)V

    goto/16 :goto_4

    .line 412
    :cond_16
    const v8, 0x7f081646

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/wifi/WifiApDialog;->setTitle(I)V

    goto/16 :goto_4

    .line 440
    :cond_17
    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 474
    .restart local v4       #passwordByteLengthFilter:Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;
    .restart local v7       #ssidByteLengthFilter:Lcom/android/lgesettings/wifi/WifiApDialog$RestartInputByteLengthFilter;
    :cond_18
    const/16 v8, 0x10

    goto/16 :goto_6

    .line 484
    :cond_19
    const/16 v8, 0x80

    goto/16 :goto_7

    .line 499
    .restart local v6       #showPassword:Z
    :cond_1a
    const/16 v8, 0x80

    goto/16 :goto_8
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 824
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 825
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApDialog;->showSecurityFields()V

    .line 826
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiApDialog;->validate()V

    .line 827
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 831
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v4, 0x0

    .line 781
    const-string v2, "ro.build.target_country"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 782
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 783
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, str:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 806
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 788
    .restart local v1       #str:Ljava/lang/String;
    :cond_1
    const-string v2, "Telstra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 790
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "SSID TelstraXXXX\nX=Alphanumeric only"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 791
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    add-int v3, p2, p3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 795
    :cond_2
    const-string v2, "Telstra"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, index:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 796
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_3

    .line 797
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "SSID TelstraXXXX\nX=Alphanumeric only"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 798
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 795
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
