.class public Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "DeviceInfoLgeTSim.java"


# static fields
.field public static sim1_state:Ljava/lang/String;

.field public static sim2_state:Ljava/lang/String;

.field public static sim3_state:Ljava/lang/String;


# instance fields
.field private img_view:Landroid/widget/ImageView;

.field insertedSimvalue:I

.field private mAboutPhonePreference:Landroid/preference/Preference;

.field private mCurrentTab:Ljava/lang/String;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mListView:Landroid/widget/ListView;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTextView_sim1:Landroid/widget/TextView;

.field private mTextView_sim2:Landroid/widget/TextView;

.field private mTextView_sim3:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, ""

    sput-object v0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim1_state:Ljava/lang/String;

    .line 95
    const-string v0, ""

    sput-object v0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim2_state:Ljava/lang/String;

    .line 96
    const-string v0, ""

    sput-object v0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim3_state:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mCurrentTab:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->insertedSimvalue:I

    .line 183
    new-instance v0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim$1;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 193
    new-instance v0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim$2;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->updateBody()V

    return-void
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"
    .parameter "titleRes"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private display_multiSIM_tab12_menu(Z)V
    .locals 2
    .parameter "activate"

    .prologue
    .line 215
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->addPreferencesFromResource(I)V

    .line 216
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->img_view:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 222
    :cond_0
    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 405
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 408
    :cond_0
    return-void
.end method

.method private updateAboutPhoneTabSubmenu()V
    .locals 11

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 228
    .local v0, act:Landroid/app/Activity;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 229
    .local v1, activePhoneType:I
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 231
    .local v2, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v3, "network"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 232
    const-string v3, "phoneidentity"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 234
    const-string v3, "system_update_settings"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 235
    const-string v3, "battery"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 236
    const-string v3, "hardwareinformation"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 237
    const-string v3, "softwareinformation"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 238
    const-string v3, "legalinformation"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim1:Landroid/widget/TextView;

    const v4, 0x7f080bc3

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim2:Landroid/widget/TextView;

    const v4, 0x7f080bc3

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim3:Landroid/widget/TextView;

    const v4, 0x7f080bc3

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim1:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim2:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim3:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 253
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mCurrentTab:Ljava/lang/String;

    const-string v4, "sim1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mCurrentTab:Ljava/lang/String;

    const-string v4, "sim2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mCurrentTab:Ljava/lang/String;

    const-string v4, "sim3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 254
    :cond_1
    const-string v3, "aboutphone # DeviceInfoLgeTSim"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertedSimvalue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->insertedSimvalue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mCurrentTab:Ljava/lang/String;

    const-string v4, "sim1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 257
    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->insertedSimvalue:I

    if-eq v3, v8, :cond_2

    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->insertedSimvalue:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->insertedSimvalue:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->insertedSimvalue:I

    if-ne v3, v10, :cond_a

    .line 258
    :cond_2
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim1_state:Ljava/lang/String;

    const-string v4, "pin_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim1_state:Ljava/lang/String;

    const-string v4, "puk_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim1_state:Ljava/lang/String;

    const-string v4, "perm_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 259
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 260
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim1_state:Ljava/lang/String;

    const-string v4, "pin_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 263
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim1:Landroid/widget/TextView;

    const v4, 0x7f080bb6

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :goto_0
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    :goto_1
    const-string v3, "phoneidentity"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mAboutPhonePreference:Landroid/preference/Preference;

    .line 331
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mAboutPhonePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_4

    .line 332
    if-eq v9, v1, :cond_1b

    .line 333
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mAboutPhonePreference:Landroid/preference/Preference;

    const v4, 0x7f0803c9

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 349
    :cond_4
    :goto_2
    const-string v3, "phoneidentity"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mAboutPhonePreference:Landroid/preference/Preference;

    .line 350
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mAboutPhonePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_5

    .line 351
    if-eq v9, v1, :cond_1e

    .line 352
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mAboutPhonePreference:Landroid/preference/Preference;

    const v4, 0x7f0803c9

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    :cond_5
    :goto_3
    return-void

    .line 264
    :cond_6
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim1_state:Ljava/lang/String;

    const-string v4, "puk_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 265
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim1:Landroid/widget/TextView;

    const v4, 0x7f080bb8

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 267
    :cond_7
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim1:Landroid/widget/TextView;

    const v4, 0x7f080bba

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 270
    :cond_8
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim1_state:Ljava/lang/String;

    const-string v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 271
    invoke-direct {p0, v6}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->display_multiSIM_tab12_menu(Z)V

    goto :goto_1

    .line 273
    :cond_9
    invoke-direct {p0, v8}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->display_multiSIM_tab12_menu(Z)V

    goto :goto_1

    .line 276
    :cond_a
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 277
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 280
    :cond_b
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mCurrentTab:Ljava/lang/String;

    const-string v4, "sim2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 281
    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->insertedSimvalue:I

    if-eq v3, v9, :cond_c

    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->insertedSimvalue:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_c

    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->insertedSimvalue:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_c

    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->insertedSimvalue:I

    if-ne v3, v10, :cond_12

    .line 282
    :cond_c
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim2_state:Ljava/lang/String;

    const-string v4, "pin_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim2_state:Ljava/lang/String;

    const-string v4, "puk_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim2_state:Ljava/lang/String;

    const-string v4, "perm_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 283
    :cond_d
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 284
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim2_state:Ljava/lang/String;

    const-string v4, "pin_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 287
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim2:Landroid/widget/TextView;

    const v4, 0x7f080bb7

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :goto_4
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 288
    :cond_e
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim2_state:Ljava/lang/String;

    const-string v4, "puk_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 289
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim2:Landroid/widget/TextView;

    const v4, 0x7f080bb9

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 291
    :cond_f
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim2:Landroid/widget/TextView;

    const v4, 0x7f080bbb

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 294
    :cond_10
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim2_state:Ljava/lang/String;

    const-string v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 295
    invoke-direct {p0, v6}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->display_multiSIM_tab12_menu(Z)V

    goto/16 :goto_1

    .line 297
    :cond_11
    invoke-direct {p0, v8}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->display_multiSIM_tab12_menu(Z)V

    goto/16 :goto_1

    .line 300
    :cond_12
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 301
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 305
    :cond_13
    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->insertedSimvalue:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_14

    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->insertedSimvalue:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_14

    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->insertedSimvalue:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_14

    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->insertedSimvalue:I

    if-ne v3, v10, :cond_1a

    .line 306
    :cond_14
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim3_state:Ljava/lang/String;

    const-string v4, "pin_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim3_state:Ljava/lang/String;

    const-string v4, "puk_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim3_state:Ljava/lang/String;

    const-string v4, "perm_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 307
    :cond_15
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 308
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim3_state:Ljava/lang/String;

    const-string v4, "pin_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 311
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim3:Landroid/widget/TextView;

    const v4, 0x7f080f5e

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :goto_5
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim3:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 312
    :cond_16
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim3_state:Ljava/lang/String;

    const-string v4, "puk_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 313
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim3:Landroid/widget/TextView;

    const v4, 0x7f080f5f

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 315
    :cond_17
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim3:Landroid/widget/TextView;

    const v4, 0x7f080f60

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 318
    :cond_18
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim3_state:Ljava/lang/String;

    const-string v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 319
    invoke-direct {p0, v6}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->display_multiSIM_tab12_menu(Z)V

    goto/16 :goto_1

    .line 321
    :cond_19
    invoke-direct {p0, v8}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->display_multiSIM_tab12_menu(Z)V

    goto/16 :goto_1

    .line 324
    :cond_1a
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 325
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim3:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 335
    :cond_1b
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mAboutPhonePreference:Landroid/preference/Preference;

    const v4, 0x7f0803d7

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 338
    :cond_1c
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mCurrentTab:Ljava/lang/String;

    const-string v4, "common"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 339
    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->insertedSimvalue:I

    if-nez v3, :cond_1d

    .line 340
    const v3, 0x7f06001a

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->addPreferencesFromResource(I)V

    .line 345
    :goto_6
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 346
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 342
    :cond_1d
    const v3, 0x7f060019

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->addPreferencesFromResource(I)V

    goto :goto_6

    .line 354
    :cond_1e
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mAboutPhonePreference:Landroid/preference/Preference;

    const v4, 0x7f0803d7

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private updateBody()V
    .locals 3

    .prologue
    .line 200
    const-string v1, "aboutphone # DeviceInfoLgeTSim"

    const-string v2, "updateBody"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, new_currentTab:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mCurrentTab:Ljava/lang/String;

    .line 208
    const-string v1, "tab"

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/lgesettings/lge/OverlayUtils;->write_SharedPreference(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->updateAboutPhoneTabSubmenu()V

    .line 212
    return-void
.end method

.method private updateTabs()V
    .locals 3

    .prologue
    .line 177
    const-string v1, "aboutphone # DeviceInfoLgeTSim"

    const-string v2, "updateTabs"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 180
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->updateBody()V

    .line 181
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, context:Landroid/content/Context;
    const v2, 0x7f040063

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0a00dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->img_view:Landroid/widget/ImageView;

    .line 109
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->img_view:Landroid/widget/ImageView;

    const v3, 0x7f020229

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    const v2, 0x1020012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabHost:Landroid/widget/TabHost;

    .line 113
    const v2, 0x7f0a00bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabsContainer:Landroid/view/ViewGroup;

    .line 114
    const v2, 0x1020013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabWidget;

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabWidget:Landroid/widget/TabWidget;

    .line 115
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mListView:Landroid/widget/ListView;

    .line 116
    const v2, 0x7f0a00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim1:Landroid/widget/TextView;

    .line 117
    const v2, 0x7f0a00de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim2:Landroid/widget/TextView;

    .line 118
    const v2, 0x7f0a00df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTextView_sim3:Landroid/widget/TextView;

    .line 120
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v1, v2, v6}, Lcom/android/lgesettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 125
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 126
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 128
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 129
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 130
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->img_view:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 133
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "sim1"

    const v4, 0x7f080bbc

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 134
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "sim2"

    const v4, 0x7f080bbd

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 135
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "sim3"

    const v4, 0x7f080bbe

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 136
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "common"

    const v4, 0x7f080bbf

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 138
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2, v5}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 141
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2, v5}, Landroid/widget/TabWidget;->setMeasureWithLargestChildEnabled(Z)V

    .line 142
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 145
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mCurrentTab:Ljava/lang/String;

    .line 147
    const-string v2, "aboutphone # DeviceInfoLgeTSim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oncreateView () , addTab called, mCurrentTab:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/lge/OverlayUtils;->check_SIM_inserted(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->insertedSimvalue:I

    .line 150
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/lgesettings/lge/OverlayUtils;->get_SIM_state(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim1_state:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/lgesettings/lge/OverlayUtils;->get_SIM_state(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim2_state:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/lgesettings/lge/OverlayUtils;->get_SIM_state(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->sim3_state:Ljava/lang/String;

    .line 154
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 174
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 167
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->updateTabs()V

    .line 168
    return-void
.end method
