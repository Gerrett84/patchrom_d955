.class public Lcom/android/lgesettings/ProxySelector;
.super Landroid/app/Fragment;
.source "ProxySelector.java"

# interfaces
.implements Lcom/android/lgesettings/DialogCreatable;


# static fields
.field private static final EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final HOSTNAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field mClearButton:Landroid/widget/Button;

.field mClearHandler:Landroid/view/View$OnClickListener;

.field mDefaultButton:Landroid/widget/Button;

.field mDefaultHandler:Landroid/view/View$OnClickListener;

.field private mDialogFragment:Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

.field mExclusionListField:Landroid/widget/EditText;

.field mHostnameField:Landroid/widget/EditText;

.field mOKButton:Landroid/widget/Button;

.field mOKHandler:Landroid/view/View$OnClickListener;

.field mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field mPortField:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/ProxySelector;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 75
    const-string v0, "$|^\\.{0,1}[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/ProxySelector;->EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 276
    new-instance v0, Lcom/android/lgesettings/ProxySelector$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/ProxySelector$1;-><init>(Lcom/android/lgesettings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    .line 284
    new-instance v0, Lcom/android/lgesettings/ProxySelector$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/ProxySelector$2;-><init>(Lcom/android/lgesettings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mClearHandler:Landroid/view/View$OnClickListener;

    .line 292
    new-instance v0, Lcom/android/lgesettings/ProxySelector$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/ProxySelector$3;-><init>(Lcom/android/lgesettings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mDefaultHandler:Landroid/view/View$OnClickListener;

    .line 299
    new-instance v0, Lcom/android/lgesettings/ProxySelector$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/ProxySelector$4;-><init>(Lcom/android/lgesettings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 142
    const v0, 0x7f0a023d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    .line 143
    iget-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/lgesettings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    const v0, 0x7f0a023e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mPortField:Landroid/widget/EditText;

    .line 146
    iget-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mPortField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/lgesettings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mPortField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/lgesettings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 149
    const v0, 0x7f0a023f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    .line 150
    iget-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/lgesettings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 152
    const v0, 0x7f0a0240

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mOKButton:Landroid/widget/Button;

    .line 153
    iget-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mOKButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/lgesettings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v0, 0x7f0a00ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mClearButton:Landroid/widget/Button;

    .line 156
    iget-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mClearButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/lgesettings/ProxySelector;->mClearHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v0, 0x7f0a0241

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    .line 159
    iget-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/lgesettings/ProxySelector;->mDefaultHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method private showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mDialogFragment:Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "ProxySelector"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    new-instance v0, Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/lgesettings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mDialogFragment:Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 138
    iget-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mDialogFragment:Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/lgesettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "hostname"
    .parameter "port"
    .parameter "exclList"

    .prologue
    const v9, 0x7f0800c9

    .line 207
    sget-object v10, Lcom/android/lgesettings/ProxySelector;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 208
    .local v7, match:Ljava/util/regex/Matcher;
    const-string v10, ","

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, exclListArray:[Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_1

    const v9, 0x7f0800c5

    .line 235
    :cond_0
    :goto_0
    return v9

    .line 212
    :cond_1
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 213
    .local v2, excl:Ljava/lang/String;
    sget-object v10, Lcom/android/lgesettings/ProxySelector;->EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 214
    .local v6, m:Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_2

    const v9, 0x7f0800c6

    goto :goto_0

    .line 212
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 217
    .end local v2           #excl:Ljava/lang/String;
    .end local v6           #m:Ljava/util/regex/Matcher;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 218
    const v9, 0x7f0800c7

    goto :goto_0

    .line 221
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5

    .line 223
    const v9, 0x7f0800c8

    goto :goto_0

    .line 225
    :cond_5
    const/4 v8, -0x1

    .line 227
    .local v8, portVal:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 231
    if-lez v8, :cond_0

    const v10, 0xffff

    if-gt v8, v10, :cond_0

    .line 235
    .end local v8           #portVal:I
    :cond_6
    const/4 v9, 0x0

    goto :goto_0

    .line 228
    .restart local v8       #portVal:I
    :catch_0
    move-exception v1

    .line 229
    .local v1, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/lgesettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 104
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 106
    .local v1, userSetGlobalProxy:Z
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 107
    iget-object v2, p0, Lcom/android/lgesettings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 108
    iget-object v2, p0, Lcom/android/lgesettings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 109
    iget-object v2, p0, Lcom/android/lgesettings/ProxySelector;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    iget-object v2, p0, Lcom/android/lgesettings/ProxySelector;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    iget-object v2, p0, Lcom/android/lgesettings/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    return-void

    .line 104
    .end local v1           #userSetGlobalProxy:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 118
    if-nez p1, :cond_0

    .line 119
    iget-object v5, p0, Lcom/android/lgesettings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, hostname:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/lgesettings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, portStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/lgesettings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, exclList:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/lgesettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v1, v3, v0}, Lcom/android/lgesettings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, msg:Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0800c3

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0800c4

    invoke-virtual {v5, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 130
    .end local v0           #exclList:Ljava/lang/String;
    .end local v1           #hostname:Ljava/lang/String;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #portStr:Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 91
    const v0, 0x7f04010f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mView:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/ProxySelector;->initView(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/lgesettings/ProxySelector;->populateFields()V

    .line 95
    iget-object v0, p0, Lcom/android/lgesettings/ProxySelector;->mView:Landroid/view/View;

    return-object v0
.end method

.method populateFields()V
    .locals 12

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/lgesettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 164
    .local v0, activity:Landroid/app/Activity;
    const-string v4, ""

    .line 165
    .local v4, hostname:Ljava/lang/String;
    const/4 v6, -0x1

    .line 166
    .local v6, port:I
    const-string v3, ""

    .line 168
    .local v3, exclList:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/lgesettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 171
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getGlobalProxy()Landroid/net/ProxyProperties;

    move-result-object v8

    .line 172
    .local v8, proxy:Landroid/net/ProxyProperties;
    if-eqz v8, :cond_0

    .line 173
    invoke-virtual {v8}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-virtual {v8}, Landroid/net/ProxyProperties;->getPort()I

    move-result v6

    .line 175
    invoke-virtual {v8}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v3

    .line 178
    :cond_0
    if-nez v4, :cond_1

    .line 179
    const-string v4, ""

    .line 182
    :cond_1
    iget-object v10, p0, Lcom/android/lgesettings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v10, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const/4 v10, -0x1

    if-ne v6, v10, :cond_4

    const-string v7, ""

    .line 185
    .local v7, portStr:Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/android/lgesettings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v10, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v10, p0, Lcom/android/lgesettings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v10, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 191
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "button-label"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, buttonLabel:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 193
    iget-object v10, p0, Lcom/android/lgesettings/ProxySelector;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_2
    const-string v10, "title"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, title:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 198
    invoke-virtual {v0, v9}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    :cond_3
    return-void

    .line 184
    .end local v1           #buttonLabel:Ljava/lang/String;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #portStr:Ljava/lang/String;
    .end local v9           #title:Ljava/lang/String;
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method saveToDb()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 243
    iget-object v9, p0, Lcom/android/lgesettings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, hostname:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/lgesettings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, portStr:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/lgesettings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, exclList:Ljava/lang/String;
    const/4 v5, 0x0

    .line 248
    .local v5, port:I
    invoke-static {v3, v6, v2}, Lcom/android/lgesettings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 249
    .local v7, result:I
    if-lez v7, :cond_0

    .line 250
    invoke-direct {p0, v8}, Lcom/android/lgesettings/ProxySelector;->showDialog(I)V

    .line 273
    :goto_0
    return v8

    .line 254
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 256
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 262
    :cond_1
    new-instance v4, Landroid/net/ProxyProperties;

    invoke-direct {v4, v3, v5, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    .local v4, p:Landroid/net/ProxyProperties;
    invoke-virtual {p0}, Lcom/android/lgesettings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 272
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 273
    const/4 v8, 0x1

    goto :goto_0

    .line 257
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v4           #p:Landroid/net/ProxyProperties;
    :catch_0
    move-exception v1

    .line 259
    .local v1, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
