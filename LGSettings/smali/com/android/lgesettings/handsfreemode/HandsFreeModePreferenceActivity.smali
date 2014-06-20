.class public Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "HandsFreeModePreferenceActivity.java"


# instance fields
.field listDownRtlIcon:Landroid/graphics/drawable/Drawable;

.field private mCall:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

.field private mHandsFreeModeSwitch:Landroid/widget/Switch;

.field private mMessage:Landroid/preference/CheckBoxPreference;

.field private mReadMessage:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;

.field private mReadOutCategory:Landroid/preference/PreferenceCategory;

.field private mTTSLanguage:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->listDownRtlIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->do_setMenuStatus(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;)Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    return-object v0
.end method

.method private do_Init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 130
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 131
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 132
    const v3, 0x7f020335

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setIcon(I)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 137
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mContext:Landroid/content/Context;

    .line 138
    new-instance v3, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    iget-object v4, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    .line 139
    const v3, 0x7f060025

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->addPreferencesFromResource(I)V

    .line 141
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeSwitch:Landroid/widget/Switch;

    .line 144
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 145
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 147
    iget-object v3, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity$1;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity$1;-><init>(Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 153
    iget-object v3, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity$2;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity$2;-><init>(Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    iget-object v3, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity$3;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity$3;-><init>(Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-void
.end method

.method private do_InitPreferenceMenu()V
    .locals 2

    .prologue
    .line 192
    const-string v0, "hands_free_mode_settings_category"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mReadOutCategory:Landroid/preference/PreferenceCategory;

    .line 193
    const-string v0, "hands_free_mode_tts_settings"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mTTSLanguage:Landroid/preference/Preference;

    .line 194
    const-string v0, "hands_free_mode_call"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mCall:Landroid/preference/CheckBoxPreference;

    .line 195
    const-string v0, "hands_free_mode_message"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mMessage:Landroid/preference/CheckBoxPreference;

    .line 196
    const-string v0, "hands_free_mode_readmessage"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;

    iput-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mReadMessage:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;

    .line 197
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mReadMessage:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;

    iget-object v1, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->listDownRtlIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 200
    :cond_1
    const-string v0, "JP"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "hands_free_mode_settings_category"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mReadOutCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mReadOutCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mReadOutCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mReadMessage:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    :cond_2
    return-void
.end method

.method private do_setMenuStatus(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mMessage:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mReadMessage:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mReadMessage:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;->setEnabled(Z)V

    .line 190
    :cond_0
    return-void
.end method

.method private do_updateUI()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 209
    iget-object v3, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->getDBHandsFreeModeState()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 210
    const-string v0, "JP"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    iget-object v3, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->getDBHandsFreeModeState()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->setDBHandsFreeModeCall(I)V

    .line 213
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mCall:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->getDBHandsFreeModeCall()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mMessage:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mReadMessage:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;

    if-eqz v0, :cond_1

    .line 215
    iget-object v3, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mMessage:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->getDBHandsFreeModeMessage()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->do_setMenuStatus(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 218
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mReadMessage:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;

    iget-object v3, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->getDBHandsFreeModeReadMessage()I

    move-result v3

    if-ne v3, v1, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;->setChecked(Z)V

    .line 223
    :cond_1
    :goto_4
    return-void

    :cond_2
    move v0, v2

    .line 209
    goto :goto_0

    :cond_3
    move v0, v2

    .line 213
    goto :goto_1

    :cond_4
    move v0, v2

    .line 215
    goto :goto_2

    :cond_5
    move v1, v2

    .line 218
    goto :goto_3

    .line 220
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mReadMessage:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;->setChecked(Z)V

    goto :goto_4
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 229
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-direct {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->do_Init()V

    .line 117
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->listDownRtlIcon:Landroid/graphics/drawable/Drawable;

    .line 118
    invoke-direct {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->do_InitPreferenceMenu()V

    .line 119
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 120
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/high16 v11, 0x6400

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 286
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const v9, 0x102002c

    if-ne v7, v9, :cond_4

    .line 288
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "settings_style"

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 289
    .local v5, settingStyle:I
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 290
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 292
    .local v4, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 293
    .local v6, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v6           #topActivity:Landroid/content/ComponentName;
    :goto_0
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, baseActivityClassName:Ljava/lang/String;
    if-ne v5, v8, :cond_2

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 302
    const-string v7, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.android.lgesettings.Settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->onBackPressed()V

    move v7, v8

    .line 328
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    .end local v4           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5           #settingStyle:I
    :goto_1
    return v7

    .line 294
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v4       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v5       #settingStyle:I
    :catch_0
    move-exception v2

    .line 295
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 307
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v1       #baseActivityClassName:Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 309
    const-string v7, "com.android.lgesettings.SOUND_SETTINGS"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->finish()V

    move v7, v8

    .line 312
    goto :goto_1

    .line 315
    .end local v3           #i:Landroid/content/Intent;
    :cond_2
    const-string v7, "com.android.lgesettings.Settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 316
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->onBackPressed()V

    move v7, v8

    .line 317
    goto :goto_1

    .line 320
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .restart local v3       #i:Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    const-string v7, "com.android.lgesettings.SOUND_SETTINGS"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->finish()V

    move v7, v8

    .line 325
    goto :goto_1

    .line 328
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5           #settingStyle:I
    :cond_4
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 233
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 257
    iget-object v4, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mTTSLanguage:Landroid/preference/Preference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 259
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    const-string v2, "com.android.lgesettings.TTS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f080e1a

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 268
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 269
    iget-object v4, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    iget-object v5, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-ne v5, v2, :cond_2

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->setDBHandsFreeModeCall(I)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 271
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 272
    iget-object v4, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    iget-object v5, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-ne v5, v2, :cond_4

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->setDBHandsFreeModeMessage(I)V

    .line 273
    iget-object v2, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mReadMessage:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v2, v3

    .line 272
    goto :goto_2

    .line 278
    :cond_5
    iget-object v4, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mReadMessage:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 279
    iget-object v4, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    iget-object v5, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mReadMessage:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;

    invoke-virtual {v5}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSubPreference;->isChecked()Z

    move-result v5

    if-ne v5, v2, :cond_6

    :goto_3
    invoke-virtual {v4, v2}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->setDBHandsFreeModeReadMessage(I)V

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 125
    invoke-direct {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->do_updateUI()V

    .line 126
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/16 v1, 0x10

    const/4 v4, -0x2

    .line 238
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 239
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 241
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->mHandsFreeModeSwitch:Landroid/widget/Switch;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const v3, 0x800015

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 245
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 250
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 251
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 252
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 253
    return-void
.end method
