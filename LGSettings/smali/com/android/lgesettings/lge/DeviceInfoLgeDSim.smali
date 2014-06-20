.class public Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "DeviceInfoLgeDSim.java"


# static fields
.field public static sim1_state:Ljava/lang/String;

.field public static sim2_state:Ljava/lang/String;


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
    .line 89
    const-string v0, ""

    sput-object v0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->sim1_state:Ljava/lang/String;

    .line 90
    const-string v0, ""

    sput-object v0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->sim2_state:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mCurrentTab:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->insertedSimvalue:I

    .line 167
    new-instance v0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim$1;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 177
    new-instance v0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim$2;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->updateBody()V

    return-void
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"
    .parameter "titleRes"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 346
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 349
    :cond_0
    return-void
.end method

.method private updateAboutPhoneTabSubmenu()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const v5, 0x7f080bc3

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 199
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 202
    .local v0, act:Landroid/app/Activity;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 203
    .local v1, activePhoneType:I
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 205
    .local v2, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v3, "network"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 206
    const-string v3, "phoneidentity"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 208
    const-string v3, "system_update_settings"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 209
    const-string v3, "battery"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 210
    const-string v3, "hardwareinformation"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 211
    const-string v3, "softwareinformation"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 212
    const-string v3, "legalinformation"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim1:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim2:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim3:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mCurrentTab:Ljava/lang/String;

    const-string v4, "sim1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mCurrentTab:Ljava/lang/String;

    const-string v4, "sim2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 220
    :cond_0
    const-string v3, "aboutphone # DeviceInfoLgeDSim"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertedSimvalue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->insertedSimvalue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mCurrentTab:Ljava/lang/String;

    const-string v4, "sim1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 223
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->insertedSimvalue:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->insertedSimvalue:I

    if-ne v3, v9, :cond_8

    .line 225
    :cond_1
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->sim1_state:Ljava/lang/String;

    const-string v4, "pin_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->sim1_state:Ljava/lang/String;

    const-string v4, "puk_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->sim1_state:Ljava/lang/String;

    const-string v4, "perm_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 226
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 227
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->sim1_state:Ljava/lang/String;

    const-string v4, "pin_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 230
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim1:Landroid/widget/TextView;

    const v4, 0x7f080bb6

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :goto_0
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim1:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :goto_1
    const v3, 0x7f060018

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->addPreferencesFromResource(I)V

    .line 290
    :cond_3
    :goto_2
    const-string v3, "phoneidentity"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mAboutPhonePreference:Landroid/preference/Preference;

    .line 291
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mAboutPhonePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_4

    .line 292
    if-eq v8, v1, :cond_12

    .line 293
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mAboutPhonePreference:Landroid/preference/Preference;

    const v4, 0x7f0803c9

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    :cond_4
    :goto_3
    return-void

    .line 231
    :cond_5
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->sim1_state:Ljava/lang/String;

    const-string v4, "puk_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 232
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim1:Landroid/widget/TextView;

    const v4, 0x7f080bb8

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 234
    :cond_6
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim1:Landroid/widget/TextView;

    const v4, 0x7f080bba

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 238
    :cond_7
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 239
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 245
    :cond_8
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 246
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim1:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 250
    :cond_9
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->insertedSimvalue:I

    if-eq v3, v8, :cond_a

    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->insertedSimvalue:I

    if-ne v3, v9, :cond_f

    .line 252
    :cond_a
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->sim2_state:Ljava/lang/String;

    const-string v4, "pin_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->sim2_state:Ljava/lang/String;

    const-string v4, "puk_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->sim2_state:Ljava/lang/String;

    const-string v4, "perm_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 253
    :cond_b
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 254
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->sim2_state:Ljava/lang/String;

    const-string v4, "pin_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 257
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim2:Landroid/widget/TextView;

    const v4, 0x7f080bb7

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :goto_4
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim2:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    :goto_5
    const v3, 0x7f060018

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    .line 258
    :cond_c
    sget-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->sim2_state:Ljava/lang/String;

    const-string v4, "puk_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 259
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim2:Landroid/widget/TextView;

    const v4, 0x7f080bb9

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 261
    :cond_d
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim2:Landroid/widget/TextView;

    const v4, 0x7f080bbb

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 265
    :cond_e
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 266
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 272
    :cond_f
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 273
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim2:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 277
    :cond_10
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mCurrentTab:Ljava/lang/String;

    const-string v4, "common"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 278
    iget v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->insertedSimvalue:I

    if-nez v3, :cond_11

    .line 279
    const v3, 0x7f06001a

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->addPreferencesFromResource(I)V

    .line 284
    :goto_6
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 287
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 281
    :cond_11
    const v3, 0x7f060019

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->addPreferencesFromResource(I)V

    goto :goto_6

    .line 295
    :cond_12
    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mAboutPhonePreference:Landroid/preference/Preference;

    const v4, 0x7f0803d7

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private updateBody()V
    .locals 3

    .prologue
    .line 184
    const-string v1, "aboutphone # DeviceInfoLgeDSim"

    const-string v2, "updateBody"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, new_currentTab:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mCurrentTab:Ljava/lang/String;

    .line 192
    const-string v1, "tab"

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/lgesettings/lge/OverlayUtils;->write_SharedPreference(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->updateAboutPhoneTabSubmenu()V

    .line 196
    return-void
.end method

.method private updateTabs()V
    .locals 3

    .prologue
    .line 161
    const-string v1, "aboutphone # DeviceInfoLgeDSim"

    const-string v2, "updateTabs"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 164
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->updateBody()V

    .line 165
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 97
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    .local v0, context:Landroid/content/Context;
    const v2, 0x7f040063

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0a00dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->img_view:Landroid/widget/ImageView;

    .line 100
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->img_view:Landroid/widget/ImageView;

    const v3, 0x7f020229

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    const v2, 0x1020012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTabHost:Landroid/widget/TabHost;

    .line 103
    const v2, 0x7f0a00bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTabsContainer:Landroid/view/ViewGroup;

    .line 104
    const v2, 0x1020013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabWidget;

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTabWidget:Landroid/widget/TabWidget;

    .line 105
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mListView:Landroid/widget/ListView;

    .line 106
    const v2, 0x7f0a00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim1:Landroid/widget/TextView;

    .line 107
    const v2, 0x7f0a00de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim2:Landroid/widget/TextView;

    .line 108
    const v2, 0x7f0a00df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim3:Landroid/widget/TextView;

    .line 110
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v1, v2, v6}, Lcom/android/lgesettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 115
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 116
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 118
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 119
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 120
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTextView_sim3:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 124
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "sim1"

    const v4, 0x7f080bbc

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 125
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "sim2"

    const v4, 0x7f080bbd

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 126
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "common"

    const v4, 0x7f080bbf

    invoke-direct {p0, v3, v4}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 128
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2, v5}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 130
    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mCurrentTab:Ljava/lang/String;

    .line 132
    const-string v2, "aboutphone # DeviceInfoLgeDSim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oncreateView () , addTab called, mCurrentTab:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/lge/OverlayUtils;->check_SIM_inserted(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->insertedSimvalue:I

    .line 135
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/lgesettings/lge/OverlayUtils;->get_SIM_state(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->sim1_state:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/lgesettings/lge/OverlayUtils;->get_SIM_state(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->sim2_state:Ljava/lang/String;

    .line 138
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 158
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 145
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 151
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->updateTabs()V

    .line 152
    return-void
.end method
