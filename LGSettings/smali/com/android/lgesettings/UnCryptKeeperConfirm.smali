.class public Lcom/android/lgesettings/UnCryptKeeperConfirm;
.super Landroid/app/Fragment;
.source "UnCryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/UnCryptKeeperConfirm$Blank;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 46
    new-instance v0, Lcom/android/lgesettings/UnCryptKeeperConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/UnCryptKeeperConfirm$1;-><init>(Lcom/android/lgesettings/UnCryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    new-instance v0, Lcom/android/lgesettings/UnCryptKeeperConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/UnCryptKeeperConfirm$2;-><init>(Lcom/android/lgesettings/UnCryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/UnCryptKeeperConfirm;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    return-object v0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    .line 146
    iget-object v0, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm;->mIntentFilter:Landroid/content/IntentFilter;

    .line 154
    iget-object v0, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/MDMSettingsAdapter;->checkDeviceEncryption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/lgesettings/UnCryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 166
    :cond_0
    const v0, 0x7f040172

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm;->mContentView:Landroid/view/View;

    .line 167
    instance-of v0, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/UnCryptKeeperConfirm;->establishFinalConfirmationState()V

    .line 171
    iget-object v0, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 183
    invoke-virtual {p0}, Lcom/android/lgesettings/UnCryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 177
    invoke-virtual {p0}, Lcom/android/lgesettings/UnCryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/lgesettings/UnCryptKeeperConfirm;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    return-void
.end method
