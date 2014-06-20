.class public Lcom/android/lgesettings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final WAPI_PSK_TYPE_VALUES:[I

.field private static final mLgeKtCm:Z


# instance fields
.field private final mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private final mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mHasWapiAsCert:Z

.field private mHasWapiUserCert:Z

.field private mHiddenSsid:Z

.field private final mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mNetworkSetupSpinner:Landroid/widget/Spinner;

.field private mPasswordView:Landroid/widget/EditText;

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mShowPassword:Landroid/widget/CheckBox;

.field private mSsidView:Landroid/widget/TextView;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private final mView:Landroid/view/View;

.field private mWapiAsCert:Landroid/widget/Spinner;

.field private mWapiCertIndex:I

.field private mWapiPskType:Landroid/widget/Spinner;

.field private mWapiUserCert:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 160
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/lgesettings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    .line 176
    const-string v1, "wifi.lge.kt.cm"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mLgeKtCm:Z

    return-void

    .line 160
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/lgesettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/lgesettings/wifi/AccessPoint;Z)V
    .locals 24
    .parameter "parent"
    .parameter "view"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 205
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    sget-object v20, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 153
    sget-object v20, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 154
    new-instance v20, Landroid/net/LinkProperties;

    invoke-direct/range {v20 .. v20}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 169
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mHasWapiAsCert:Z

    .line 170
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mHasWapiUserCert:Z

    .line 173
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mHiddenSsid:Z

    .line 206
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    .line 207
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/lgesettings/wifi/WifiConfigUiForSetupWizardXL;

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 209
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 210
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    .line 211
    if-nez p3, :cond_4

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 213
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mEdit:Z

    .line 215
    new-instance v20, Landroid/os/Handler;

    invoke-direct/range {v20 .. v20}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 217
    .local v6, context:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 219
    .local v14, resources:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a03c1

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a03ba

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    if-nez v20, :cond_6

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f08029c

    invoke-interface/range {v20 .. v21}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a0104

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 230
    sget-boolean v20, Lcom/android/lgesettings/wifi/WifiConfigController;->mLgeKtCm:Z

    if-nez v20, :cond_0

    .line 232
    new-instance v18, Lcom/android/lgesettings/wifi/ByteLengthFilter;

    const/16 v20, 0x20

    const-string v21, "UTF-8"

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v6, v1, v2}, Lcom/android/lgesettings/wifi/ByteLengthFilter;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 233
    .local v18, ssidByteLengthFilter:Lcom/android/lgesettings/wifi/ByteLengthFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v18, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 236
    .end local v18           #ssidByteLengthFilter:Lcom/android/lgesettings/wifi/ByteLengthFilter;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a0399

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Spinner;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 238
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a03a9

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a03af

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 243
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v20, 0x7f0401be

    const v21, 0x1020014

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090032

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v4, v6, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 246
    .local v4, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 251
    .end local v4           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 252
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/wifi/WifiConfigController;->showProxyFields()V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a039b

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a039c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a039c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/CheckBox;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 260
    sget-boolean v20, Lcom/android/lgesettings/wifi/WifiConfigController;->mLgeKtCm:Z

    if-eqz v20, :cond_1

    .line 261
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mHiddenSsid:Z

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a03d4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a03d5

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a03d5

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mHiddenSsid:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 267
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f0802e2

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 385
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    if-nez v20, :cond_18

    .line 409
    :cond_3
    :goto_3
    return-void

    .line 211
    .end local v6           #context:Landroid/content/Context;
    .end local v14           #resources:Landroid/content/res/Resources;
    :cond_4
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->security:I

    move/from16 v20, v0

    goto/16 :goto_0

    .line 248
    .restart local v6       #context:Landroid/content/Context;
    .restart local v14       #resources:Landroid/content/res/Resources;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a0370

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 273
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a0398

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 277
    .local v7, group:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/lgesettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    .line 278
    .local v19, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v19, :cond_7

    .line 279
    const v20, 0x7f0802bd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/lgesettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/android/lgesettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 282
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/lgesettings/wifi/AccessPoint;->getLevel()I

    move-result v11

    .line 283
    .local v11, level:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_8

    .line 284
    const v20, 0x7f09003d

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 285
    .local v17, signal:[Ljava/lang/String;
    const v20, 0x7f0802bc

    aget-object v21, v17, v11

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/android/lgesettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 288
    .end local v17           #signal:[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/lgesettings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 289
    .local v9, info:Landroid/net/wifi/WifiInfo;
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 290
    const v20, 0x7f0802be

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "Mbps"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/android/lgesettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 293
    :cond_9
    const v20, 0x7f0802bb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/lgesettings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/android/lgesettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 295
    const/16 v16, 0x0

    .line 296
    .local v16, showAdvancedFields:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_f

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/lgesettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 298
    .local v5, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Spinner;->setSelection(I)V

    .line 300
    const/16 v16, 0x1

    .line 305
    :goto_4
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 306
    .local v3, a:Ljava/net/InetAddress;
    const v20, 0x7f0802bf

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/android/lgesettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_5

    .line 302
    .end local v3           #a:Ljava/net/InetAddress;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 310
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_b
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/RouteInfo;

    .line 311
    .local v15, route:Landroid/net/RouteInfo;
    invoke-virtual {v15}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 312
    const v20, 0x7f0802ff

    invoke-virtual {v15}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/android/lgesettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 317
    .end local v15           #route:Landroid/net/RouteInfo;
    :cond_d
    iget-object v13, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 318
    .local v13, linkProperties:Landroid/net/LinkProperties;
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 319
    .local v10, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 320
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/LinkAddress;

    .line 321
    .local v12, linkAddress:Landroid/net/LinkAddress;
    const v20, 0x7f080301

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lcom/android/lgesettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 325
    .end local v12           #linkAddress:Landroid/net/LinkAddress;
    :cond_e
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Spinner;->setSelection(I)V

    .line 327
    const/16 v16, 0x1

    .line 333
    :goto_6
    sget-boolean v20, Lcom/android/lgesettings/wifi/WifiConfigController;->mLgeKtCm:Z

    if-eqz v20, :cond_f

    .line 334
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/lgesettings/wifi/WifiConfigController;->mHiddenSsid:Z

    .line 338
    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v13           #linkProperties:Landroid/net/LinkProperties;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    .line 339
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 340
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 341
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/wifi/WifiConfigController;->showProxyFields()V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a039b

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a039c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a039c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/CheckBox;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 348
    if-eqz v16, :cond_11

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a039c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/CheckBox;

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a03d6

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 354
    :cond_11
    sget-boolean v20, Lcom/android/lgesettings/wifi/WifiConfigController;->mLgeKtCm:Z

    if-eqz v20, :cond_12

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a03d4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a03d5

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a03d5

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mHiddenSsid:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 361
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f0802e6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 329
    .restart local v5       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v10       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .restart local v13       #linkProperties:Landroid/net/LinkProperties;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    .line 364
    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v13           #linkProperties:Landroid/net/LinkProperties;
    :cond_14
    if-nez v19, :cond_17

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_17

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f0802e2

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 374
    :cond_15
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 376
    sget-boolean v20, Lcom/android/lgesettings/wifi/WifiConfigController;->mLgeKtCm:Z

    if-eqz v20, :cond_16

    const-string v20, "ollehWiFi"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 377
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f0802e4

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 367
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0a03c0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 369
    sget-boolean v20, Lcom/android/lgesettings/wifi/WifiConfigController;->mLgeKtCm:Z

    if-eqz v20, :cond_15

    const-string v20, "ollehWiFi"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    sget-object v20, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f081673

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 390
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v9           #info:Landroid/net/wifi/WifiInfo;
    .end local v11           #level:I
    .end local v16           #showAdvancedFields:Z
    .end local v19           #state:Landroid/net/NetworkInfo$DetailedState;
    :cond_18
    sget-boolean v20, Lcom/android/lgesettings/wifi/WifiConfigController;->mLgeKtCm:Z

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19

    const-string v20, "ollehWiFi"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/lgesettings/wifi/AccessPoint;->getLevel()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f081672

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 398
    :goto_8
    const-string v20, "WifiConfigController"

    const-string v21, "WifiConfigController setCancelButton"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 404
    sget-boolean v20, Lcom/android/lgesettings/wifi/WifiConfigController;->mLgeKtCm:Z

    if-nez v20, :cond_3

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto/16 :goto_3

    .line 395
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    move-object/from16 v20, v0

    const v21, 0x7f0802e8

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401a5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 413
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 414
    const v1, 0x7f0a017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 416
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 675
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->clear()V

    .line 676
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_1

    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 680
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v7, v10, :cond_2

    .line 681
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v7}, Lcom/android/lgesettings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    .line 682
    .local v6, result:I
    if-eqz v6, :cond_2

    .line 684
    sget-boolean v7, Lcom/android/lgesettings/wifi/WifiConfigController;->mLgeKtCm:Z

    if-eqz v7, :cond_0

    .line 685
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :cond_0
    move v7, v8

    .line 746
    .end local v6           #result:I
    :goto_1
    return v7

    .line 676
    :cond_1
    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 692
    :cond_2
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_3

    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 696
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v7, v10, :cond_a

    .line 698
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v7, :cond_5

    .line 699
    iget-boolean v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEdit:Z

    if-nez v7, :cond_4

    .line 700
    const-string v7, "WifiConfigController"

    const-string v8, "ipAndProxyFieldsAreValid mEdit false"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    .line 701
    goto :goto_1

    .line 692
    :cond_3
    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 703
    :cond_4
    const-string v7, "WifiConfigController"

    const-string v9, "ipAndProxyFieldsAreValid mEdit true"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 704
    goto :goto_1

    .line 708
    :cond_5
    const/4 v2, 0x0

    .line 709
    .local v2, host:Ljava/lang/String;
    const/4 v4, 0x0

    .line 710
    .local v4, portStr:Ljava/lang/String;
    const/4 v1, 0x0

    .line 712
    .local v1, exclusionList:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v7, :cond_6

    .line 713
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 716
    :cond_6
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v7, :cond_7

    .line 717
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 720
    :cond_7
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v7, :cond_8

    .line 721
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 724
    :cond_8
    const/4 v3, 0x0

    .line 725
    .local v3, port:I
    const/4 v6, 0x0

    .line 727
    .restart local v6       #result:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 728
    if-eqz v2, :cond_9

    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    .line 729
    invoke-static {v2, v4, v1}, Lcom/android/lgesettings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 734
    :cond_9
    :goto_3
    if-nez v6, :cond_b

    .line 735
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 736
    .local v5, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .end local v1           #exclusionList:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v4           #portStr:Ljava/lang/String;
    .end local v5           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v6           #result:I
    :cond_a
    move v7, v9

    .line 746
    goto/16 :goto_1

    .line 731
    .restart local v1       #exclusionList:Ljava/lang/String;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #port:I
    .restart local v4       #portStr:Ljava/lang/String;
    .restart local v6       #result:I
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Ljava/lang/NumberFormatException;
    const v6, 0x7f0800c9

    goto :goto_3

    .line 739
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_b
    sget-boolean v7, Lcom/android/lgesettings/wifi/WifiConfigController;->mLgeKtCm:Z

    if-eqz v7, :cond_c

    .line 740
    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :cond_c
    move v7, v8

    .line 743
    goto/16 :goto_1
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1195
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1196
    const v0, 0x7f0802cb

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1198
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1199
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    .line 1200
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    .line 1208
    :goto_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, v1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1210
    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1211
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1212
    return-void

    .line 1202
    :cond_1
    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1203
    aput-object v2, v0, v4

    .line 1204
    array-length v2, v3

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method static requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .parameter "config"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 185
    if-nez p0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v5

    .line 188
    :cond_1
    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    move v5, v6

    .line 189
    goto :goto_0

    .line 191
    :cond_2
    const/4 v7, 0x4

    new-array v4, v7, [Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    aput-object v7, v4, v5

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    aput-object v7, v4, v6

    const/4 v7, 0x2

    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x3

    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 196
    .local v4, values:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 197
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v7, "keystore://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 198
    goto :goto_0

    .line 196
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 1215
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/lgesettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1218
    :cond_0
    return-void
.end method

.method private setCheckBoxSection(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const v2, 0x7f0a03d6

    .line 1240
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0397

    if-ne v0, v1, :cond_2

    .line 1241
    const-string v0, "WifiConfigController"

    const-string v1, "[myseokil] setCheckBoxSection - show_password"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 1244
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 1247
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1251
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 1267
    :cond_0
    :goto_1
    return-void

    .line 1247
    :cond_1
    const/16 v0, 0x80

    goto :goto_0

    .line 1253
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a039c

    if-ne v0, v1, :cond_4

    .line 1254
    const-string v0, "WifiConfigController"

    const-string v1, "[myseokil] setCheckBoxSection - wifi_advanced_togglebox"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1256
    const-string v0, "WifiConfigController"

    const-string v1, "[myseokil] setCheckBoxSection - wifi_advanced_togglebox - isChecked(TRUE)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1259
    :cond_3
    const-string v0, "WifiConfigController"

    const-string v1, "[myseokil] setCheckBoxSection - wifi_advanced_togglebox - isChecked(FALSE)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1264
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a03d5

    if-ne v0, v1, :cond_0

    .line 1265
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mHiddenSsid:Z

    goto :goto_1
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 1221
    if-eqz p2, :cond_0

    .line 1223
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1224
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1225
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1226
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1231
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 1224
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private showIpConfigFields()V
    .locals 5

    .prologue
    const v4, 0x7f0a03c2

    const/4 v3, 0x0

    .line 1105
    const/4 v0, 0x0

    .line 1107
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1109
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 1110
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1113
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 1114
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a039f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 1117
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1118
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03c3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 1119
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1120
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03c4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1122
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1123
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03c5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 1124
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1125
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03c6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 1126
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1128
    :cond_0
    if-eqz v1, :cond_5

    .line 1129
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1130
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1131
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 1133
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 1139
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1140
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1145
    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1146
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1147
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1150
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    :cond_5
    :goto_1
    return-void

    .line 1154
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showProxyFields()V
    .locals 7

    .prologue
    const v6, 0x7f0a03bc

    const v5, 0x7f0a03bb

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1159
    const/4 v0, 0x0

    .line 1161
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1164
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1167
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1168
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1169
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1170
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03bd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 1172
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1173
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03be

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 1174
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1175
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03bf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1176
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1178
    :cond_0
    if-eqz v1, :cond_1

    .line 1179
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 1180
    if-eqz v0, :cond_1

    .line 1181
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1190
    :cond_1
    :goto_1
    return-void

    .line 1187
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1188
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showSecurityFields()V
    .locals 9

    .prologue
    const/16 v1, 0x1a

    const/4 v8, -0x1

    const/4 v4, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 858
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    iget v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v0, v2, v3}, Lcom/android/lgesettings/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1102
    :goto_0
    return-void

    .line 865
    :cond_0
    iget v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03ac

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 871
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v0, :cond_2

    .line 874
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0384

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    .line 875
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 878
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0397

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mShowPassword:Landroid/widget/CheckBox;

    .line 879
    const-string v0, "USC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 880
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 884
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x90

    :goto_2
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 889
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 894
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    if-eq v0, v8, :cond_2

    .line 895
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v2, 0x7f0802ca

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 902
    :cond_2
    iget v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v0, v4, :cond_9

    move v0, v1

    .line 909
    :goto_3
    iget v2, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-le v2, v1, :cond_3

    .line 910
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 911
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 915
    :cond_3
    new-instance v1, Lcom/android/lgesettings/wifi/ByteLengthFilter;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v0, v3}, Lcom/android/lgesettings/wifi/ByteLengthFilter;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 917
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    new-array v2, v4, [Landroid/text/InputFilter;

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 922
    :cond_4
    iget v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    .line 923
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 934
    :cond_5
    :goto_4
    iget v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    .line 935
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 956
    :cond_6
    :goto_5
    iget v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    .line 957
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 882
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 884
    :cond_8
    const/16 v0, 0x80

    goto/16 :goto_2

    .line 905
    :cond_9
    const/16 v0, 0x40

    goto/16 :goto_3

    .line 925
    :cond_a
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    .line 928
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    if-eq v0, v8, :cond_5

    .line 929
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 930
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 937
    :cond_b
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 939
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    .line 940
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    .line 942
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    const-string v1, "WAPIAS_"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    const-string v1, "WAPIUSR_"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    if-eq v0, v8, :cond_6

    .line 946
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 947
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    iput v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiCertIndex:I

    .line 948
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    const-string v2, "WAPIAS_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/lgesettings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    const-string v2, "WAPIUSR_"

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/lgesettings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 960
    :cond_c
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 963
    const-string v0, "wlan.lge.supportsimaka"

    const-string v1, "NO"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 965
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_10

    .line 969
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 970
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 971
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 972
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 1016
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1017
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 1018
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1019
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 1020
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 1021
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 1023
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "u+zone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "u+acn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1030
    :cond_e
    const-string v0, "MSCHAPV2"

    .line 1031
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const-string v1, "MSCHAPV2"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1035
    :cond_f
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    if-eq v0, v8, :cond_10

    .line 1036
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1037
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/lgesettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1039
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    .line 1040
    if-eqz v1, :cond_15

    const-string v2, "auth="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1041
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const-string v3, "auth="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/lgesettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1046
    :goto_7
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "keystore://CACERT_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/lgesettings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/lgesettings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    :cond_10
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1059
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0384

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0397

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    const-string v1, "PWD"

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1068
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1069
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 975
    :cond_11
    if-ne v0, v4, :cond_14

    .line 978
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 981
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03b2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03c8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 983
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03c8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 986
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_d

    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "HK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 988
    const/4 v0, 0x3

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 993
    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 996
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[kun.liu] numeric = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mcc_s = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mnc_s = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const-string v1, "WifiConfigController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[kun.liu] mnc_s.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_d

    .line 999
    const-string v1, "454"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "19"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    const-string v1, "454"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "16"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1001
    :cond_13
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    const-string v1, "SIM"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1009
    :cond_14
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1013
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    goto/16 :goto_6

    .line 1043
    :cond_15
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-direct {p0, v2, v1}, Lcom/android/lgesettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1077
    :cond_16
    const-string v1, "AKA"

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v1, "SIM"

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1079
    :cond_17
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1081
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1082
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1083
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1085
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0384

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0397

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1089
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1093
    :cond_18
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1094
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1099
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const v4, 0x7f0802f9

    const v1, 0x7f0802f7

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 751
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v5, :cond_1

    .line 753
    iget-boolean v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEdit:Z

    if-nez v1, :cond_0

    .line 754
    const-string v0, "WifiConfigController"

    const-string v1, "validateIpConfigFields mEdit false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 847
    :goto_0
    return v0

    .line 757
    :cond_0
    const-string v1, "WifiConfigController"

    const-string v2, "validateIpConfigFields mEdit true"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 765
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    goto :goto_0

    .line 769
    :cond_2
    :try_start_0
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 774
    const/4 v0, -0x1

    .line 776
    :try_start_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 777
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 779
    :cond_3
    if-ltz v0, :cond_4

    const/16 v1, 0x20

    if-le v0, v1, :cond_5

    .line 780
    :cond_4
    const v0, 0x7f0802fa

    goto :goto_0

    .line 770
    :catch_0
    move-exception v0

    move v0, v1

    .line 771
    goto :goto_0

    .line 782
    :cond_5
    new-instance v1, Landroid/net/LinkAddress;

    invoke-direct {v1, v5, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 792
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    .line 793
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 796
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 799
    :try_start_2
    invoke-static {v5, v0}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 800
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 801
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v5, 0x1

    aput-byte v5, v0, v1

    .line 802
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 803
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5

    .line 819
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 820
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 824
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 826
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0802fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    :goto_4
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 837
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 838
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 840
    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    .line 844
    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    :cond_8
    move v0, v3

    .line 847
    goto/16 :goto_0

    .line 783
    :catch_1
    move-exception v1

    .line 785
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    invoke-interface {v6}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080302

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 811
    :cond_9
    :try_start_4
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    .line 815
    new-instance v1, Landroid/net/RouteInfo;

    invoke-direct {v1, v0}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_3

    .line 812
    :catch_2
    move-exception v0

    .line 813
    const v0, 0x7f0802f8

    goto/16 :goto_0

    .line 829
    :cond_a
    :try_start_5
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v0

    .line 833
    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_4

    .line 830
    :catch_3
    move-exception v0

    move v0, v4

    .line 831
    goto/16 :goto_0

    .line 841
    :catch_4
    move-exception v0

    move v0, v4

    .line 842
    goto/16 :goto_0

    .line 806
    :catch_5
    move-exception v0

    goto/16 :goto_3

    .line 805
    :catch_6
    move-exception v0

    goto/16 :goto_3

    :cond_b
    move-object v1, v2

    goto/16 :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1273
    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mLgeKtCm:Z

    if-nez v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/lgesettings/wifi/WifiConfigController$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/WifiConfigController$1;-><init>(Lcom/android/lgesettings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1281
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1286
    return-void
.end method

.method chosenNetworkSetupMethod()I
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 854
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method configValidKt()I
    .locals 9

    .prologue
    const/16 v8, 0x40

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v7, -0x1

    .line 619
    const/4 v2, 0x0

    .line 620
    .local v2, ssidLength:I
    const/4 v1, 0x0

    .line 621
    .local v1, keyLength:I
    const/4 v0, 0x0

    .line 623
    .local v0, keyInvalid:Z
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 625
    :try_start_0
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KSC5601"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v2, v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :goto_0
    const/16 v5, 0x20

    if-le v2, v5, :cond_0

    .line 630
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configValidKt ssid length is invalid length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :goto_1
    return v3

    .line 632
    :cond_0
    if-nez v2, :cond_1

    .line 633
    const-string v3, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configValidKt ssid length is zero length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 634
    goto :goto_1

    .line 638
    :cond_1
    iget v5, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v5, v4, :cond_5

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v4, :cond_5

    .line 639
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 640
    const/16 v4, 0x8

    if-lt v1, v4, :cond_2

    if-gt v1, v8, :cond_2

    if-ne v1, v8, :cond_3

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[0-9A-Fa-f]{64}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 642
    :cond_2
    const/4 v0, 0x1

    .line 644
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    if-eq v4, v7, :cond_4

    if-nez v1, :cond_4

    .line 645
    const/4 v0, 0x0

    .line 647
    :cond_4
    if-eqz v0, :cond_5

    .line 648
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configValidKt wpapsk password is not valid length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v3, 0x3

    goto :goto_1

    .line 653
    :cond_5
    iget v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v4, v3, :cond_8

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v3, :cond_8

    .line 654
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 655
    const/4 v3, 0x5

    if-eq v1, v3, :cond_6

    const/16 v3, 0xd

    if-eq v1, v3, :cond_6

    const/16 v3, 0xa

    if-eq v1, v3, :cond_6

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_6

    .line 656
    const/4 v0, 0x1

    .line 658
    :cond_6
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    if-eq v3, v7, :cond_7

    if-nez v1, :cond_7

    .line 659
    const/4 v0, 0x0

    .line 661
    :cond_7
    if-eqz v0, :cond_8

    .line 662
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configValidKt wep password is invalid length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v3, 0x4

    goto/16 :goto_1

    .line 666
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 626
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method enableSubmitIfAppropriate()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/16 v7, 0x1a

    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 420
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/lgesettings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/lgesettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v2

    .line 421
    .local v2, submit:Landroid/widget/Button;
    if-nez v2, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    const/4 v0, 0x0

    .line 424
    .local v0, enabled:Z
    const/4 v1, 0x0

    .line 428
    .local v1, passwordInvalid:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiConfigController;->chosenNetworkSetupMethod()I

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eq v3, v6, :cond_2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-ne v3, v7, :cond_3

    :cond_2
    iget v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v3, v9, :cond_4

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_4

    .line 434
    :cond_3
    const/4 v1, 0x1

    .line 436
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    if-eq v3, v8, :cond_4

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 437
    const/4 v1, 0x0

    .line 444
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    if-ne v3, v8, :cond_8

    :cond_6
    if-eqz v1, :cond_8

    .line 448
    :cond_7
    const/4 v0, 0x0

    .line 482
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 450
    :cond_8
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v3, :cond_9

    if-eqz v1, :cond_9

    .line 451
    const/4 v0, 0x0

    goto :goto_1

    .line 455
    :cond_9
    const-string v3, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a03ac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_c

    iget v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v3, v5, :cond_a

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_a

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_a

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eq v3, v6, :cond_a

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-ne v3, v7, :cond_b

    :cond_a
    iget v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v3, v9, :cond_c

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_c

    .line 462
    :cond_b
    const/4 v0, 0x0

    goto :goto_1

    .line 465
    :cond_c
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a03ac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_f

    iget v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v3, v5, :cond_f

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-ne v3, v6, :cond_d

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[0-9A-Fa-f]{10}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-ne v3, v7, :cond_f

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[0-9A-Fa-f]{26}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 469
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 472
    :cond_f
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v3, :cond_10

    iget v3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v3, :cond_0

    .line 476
    :cond_10
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 477
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 479
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/16 v8, 0x22

    const/4 v5, 0x0

    .line 486
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    if-eq v6, v7, :cond_0

    iget-boolean v6, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEdit:Z

    if-nez v6, :cond_0

    move-object v0, v4

    .line 614
    :goto_0
    return-object v0

    .line 490
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 492
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    if-nez v6, :cond_2

    .line 493
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/lgesettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 496
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 511
    :goto_1
    sget-boolean v6, Lcom/android/lgesettings/wifi/WifiConfigController;->mLgeKtCm:Z

    if-eqz v6, :cond_1

    .line 512
    iget-boolean v6, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mHiddenSsid:Z

    iput-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 515
    :cond_1
    iget v6, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v6, :pswitch_data_0

    move-object v0, v4

    .line 607
    goto :goto_0

    .line 497
    :cond_2
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    if-ne v6, v7, :cond_3

    .line 498
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v6, v6, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/lgesettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 502
    :cond_3
    sget-boolean v6, Lcom/android/lgesettings/wifi/WifiConfigController;->mLgeKtCm:Z

    if-eqz v6, :cond_4

    const-string v6, "ollehWiFi"

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 503
    const-string v6, "WifiConfigController"

    const-string v7, "getConfig config.ssid = ollehWiFi"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget-object v6, v6, Lcom/android/lgesettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/lgesettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 507
    :cond_4
    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/lgesettings/wifi/AccessPoint;->networkId:I

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 517
    :pswitch_0
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 610
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 611
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 612
    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 521
    :pswitch_1
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 522
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 523
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 524
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 525
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 526
    .local v2, length:I
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, password:Ljava/lang/String;
    const/16 v4, 0xa

    if-eq v2, v4, :cond_6

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_6

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_7

    :cond_6
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 530
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, v4, v5

    goto :goto_2

    .line 532
    :cond_7
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_2

    .line 538
    .end local v2           #length:I
    .end local v3           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 539
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 540
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 541
    .restart local v3       #password:Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 542
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 544
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 550
    .end local v3           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 551
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 552
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 554
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_9

    const-string v4, ""

    :goto_3
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 556
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_a

    const-string v4, ""

    :goto_4
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 559
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_b

    const-string v4, ""

    :goto_5
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 562
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_c

    .line 563
    .local v1, isEmptyKeyId:Z
    :goto_6
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_d

    const-string v4, ""

    :goto_7
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 565
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->engine:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_e

    const-string v4, "0"

    :goto_8
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 567
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->engine_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_f

    const-string v4, ""

    :goto_9
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 568
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_10

    const-string v4, ""

    :goto_a
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 570
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_11

    const-string v4, ""

    :goto_b
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 572
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 573
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 554
    .end local v1           #isEmptyKeyId:Z
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "auth="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 556
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore://CACERT_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 559
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore://USRCERT_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    :cond_c
    move v1, v5

    .line 562
    goto/16 :goto_6

    .line 563
    .restart local v1       #isEmptyKeyId:Z
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    .line 565
    :cond_e
    const-string v4, "1"

    goto/16 :goto_8

    .line 567
    :cond_f
    const-string v4, "keystore"

    goto/16 :goto_9

    .line 568
    :cond_10
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_a

    .line 570
    :cond_11
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b

    .line 579
    .end local v1           #isEmptyKeyId:Z
    :pswitch_4
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 580
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_12

    .line 581
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 582
    .restart local v3       #password:Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 583
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 588
    .end local v3           #password:Ljava/lang/String;
    :cond_12
    :goto_c
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiPskType.getSelectedItemPosition() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    sget-object v4, Lcom/android/lgesettings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    aget v4, v4, v5

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_2

    .line 585
    .restart local v3       #password:Ljava/lang/String;
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_c

    .line 593
    .end local v3           #password:Ljava/lang/String;
    :pswitch_5
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 594
    iput v1, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiCertIndex:I

    .line 595
    iget v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiCertIndex:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 596
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiAsCert.getSelectedItemPosition() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiAsCert.getSelectedItem() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_14

    const-string v4, ""

    :goto_d
    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 600
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiUserCert.getSelectedItemPosition() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiUserCert.getSelectedItem() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_15

    const-string v4, ""

    :goto_e
    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_2

    .line 598
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://WAPIAS_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/lgesettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    .line 602
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://WAPIUSR_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/lgesettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method ipAndProxyFieldsAreValidKt()Z
    .locals 1

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v0

    return v0
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 1234
    iget-boolean v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "c"
    .parameter "cb"

    .prologue
    .line 1297
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/WifiConfigController;->setCheckBoxSection(Landroid/view/View;)V

    .line 1298
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1305
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/WifiConfigController;->setCheckBoxSection(Landroid/view/View;)V

    .line 1307
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 1311
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 1312
    iput p3, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1313
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 1322
    :goto_0
    sget-boolean v0, Lcom/android/lgesettings/wifi/WifiConfigController;->mLgeKtCm:Z

    if-nez v0, :cond_0

    .line 1323
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1326
    :cond_0
    return-void

    .line 1314
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 1315
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_0

    .line 1316
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_3

    .line 1317
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 1319
    :cond_3
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_0
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
    .line 1331
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1291
    return-void
.end method
