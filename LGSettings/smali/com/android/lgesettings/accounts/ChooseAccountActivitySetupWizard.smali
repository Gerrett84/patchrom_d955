.class public Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;
.super Lcom/android/lgesettings/accounts/ChooseAccountActivity;
.source "ChooseAccountActivitySetupWizard.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field addAccountSettings:Lcom/android/lgesettings/accounts/AddAccountSettings;

.field private mBackButton:Landroid/widget/Button;

.field private mDescMessage:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field targetProduct:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/lgesettings/accounts/ChooseAccountActivity;-><init>()V

    .line 48
    const-string v0, "ChooseAccountActivitySetupWizard"

    iput-object v0, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->TAG:Ljava/lang/String;

    .line 51
    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->targetProduct:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/android/lgesettings/accounts/AddAccountSettings;

    invoke-direct {v0}, Lcom/android/lgesettings/accounts/AddAccountSettings;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->addAccountSettings:Lcom/android/lgesettings/accounts/AddAccountSettings;

    return-void
.end method

.method private finishWithAccountType(Ljava/lang/String;)V
    .locals 3
    .parameter "accountType"

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "selected_account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->setResult(ILandroid/content/Intent;)V

    .line 182
    iget-object v1, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->TAG:Ljava/lang/String;

    const-string v2, "finishWithAccountType"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->finish()V

    .line 184
    return-void
.end method

.method private isSNSAvailable()Z
    .locals 8

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 112
    .local v4, pkg:Landroid/content/pm/PackageManager;
    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, appinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 115
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 116
    .local v3, pi:Landroid/content/pm/PackageInfo;
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 117
    .local v1, appname:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appname = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v5, "com.lge.sns"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    iget-object v5, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->TAG:Ljava/lang/String;

    const-string v6, "isSNSAvailable true - Twitter"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v5, 0x1

    .line 125
    .end local v1           #appname:Ljava/lang/String;
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    :goto_1
    return v5

    .line 114
    .restart local v1       #appname:Ljava/lang/String;
    .restart local v3       #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v1           #appname:Ljava/lang/String;
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v5, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->TAG:Ljava/lang/String;

    const-string v6, "isSNSAvailable false"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected isVisibleAccount(Ljava/lang/String;)Z
    .locals 4
    .parameter "accountType"

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVisibleAccount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-super {p0, p1}, Lcom/android/lgesettings/accounts/ChooseAccountActivity;->isVisibleAccount(Ljava/lang/String;)Z

    move-result v0

    .line 135
    .local v0, bResult:Z
    const-string v1, "com.lge.android.finance.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 136
    :cond_0
    const-string v1, "com.lge.android.weather.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 137
    :cond_1
    const-string v1, "com.lge.android.news.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 138
    :cond_2
    const-string v1, "com.lge.android.todayplus.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 140
    :cond_3
    const-string v1, "com.lge.sns.myspace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .line 143
    :cond_4
    const-string v1, "com.android.nttdocomo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    .line 146
    :cond_5
    const-string v1, "com.kddi.ast.auoneid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    .line 147
    :cond_6
    const-string v1, "com.kddi.ast.au"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    .line 149
    :cond_7
    const-string v1, "lg.uplusbox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 150
    const/4 v0, 0x0

    .line 153
    :cond_8
    const-string v1, "com.skp.tcloud"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 154
    const/4 v0, 0x0

    .line 157
    :cond_9
    const-string v1, "ORG"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "geehrc_org_com"

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 158
    const-string v1, "com.google"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 159
    const/4 v0, 0x0

    .line 162
    :cond_a
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v1, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->targetProduct:Ljava/lang/String;

    const-string v2, "p2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const v1, 0x20a01c2

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->setTheme(I)V

    .line 61
    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/accounts/ChooseAccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 64
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 66
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :cond_1
    const v1, 0x7f040008

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->setContentView(I)V

    .line 72
    invoke-direct {p0}, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->isSNSAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    const v1, 0x7f080bd0

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->setTitle(I)V

    .line 75
    const v1, 0x7f0a0014

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->mDescMessage:Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->mDescMessage:Landroid/widget/TextView;

    const v2, 0x7f080b4d

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_2
    const v1, 0x7f0a0016

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->mBackButton:Landroid/widget/Button;

    .line 80
    iget-object v1, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->mBackButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard$1;-><init>(Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v1, 0x7f0a0017

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->mNextButton:Landroid/widget/Button;

    .line 89
    iget-object v1, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->mNextButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard$2;-><init>(Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 100
    packed-switch p1, :pswitch_data_0

    .line 106
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/accounts/ChooseAccountActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 104
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferences"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 166
    move-object v0, p2

    check-cast v0, Lcom/android/lgesettings/accounts/ProviderPreference;

    .line 167
    .local v0, pref:Lcom/android/lgesettings/accounts/ProviderPreference;
    instance-of v1, p2, Lcom/android/lgesettings/accounts/ProviderPreference;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to add account of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/lgesettings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v0}, Lcom/android/lgesettings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->finishWithAccountType(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Lcom/android/lgesettings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.twitter.android.auth.login"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/lgesettings/accounts/ChooseAccountActivitySetupWizard;->TAG:Ljava/lang/String;

    const-string v2, "isNullActivity = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sput-boolean v4, Lcom/android/lgesettings/accounts/AddAccountSettings;->isNullActivity:Z

    .line 175
    :cond_0
    return v4
.end method
