.class public Lcom/android/lgesettings/SetFullBackupPassword;
.super Landroid/app/Activity;
.source "SetFullBackupPassword.java"


# instance fields
.field mBackupManager:Landroid/app/backup/IBackupManager;

.field mButtonListener:Landroid/view/View$OnClickListener;

.field mCancel:Landroid/widget/Button;

.field mConfirmNewPw:Landroid/widget/TextView;

.field mCurrentPw:Landroid/widget/TextView;

.field mNewPw:Landroid/widget/TextView;

.field mSet:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Lcom/android/lgesettings/SetFullBackupPassword$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/SetFullBackupPassword$1;-><init>(Lcom/android/lgesettings/SetFullBackupPassword;)V

    iput-object v0, p0, Lcom/android/lgesettings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/SetFullBackupPassword;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "currentPw"
    .parameter "newPw"

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, p2}, Landroid/app/backup/IBackupManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 124
    :goto_0
    return v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SetFullBackupPassword"

    const-string v2, "Unable to communicate with backup manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 87
    const v1, 0x7f040134

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/SetFullBackupPassword;->setContentView(I)V

    .line 89
    const v1, 0x7f0a029b

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/SetFullBackupPassword;->mCurrentPw:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f0a029d

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/SetFullBackupPassword;->mNewPw:Landroid/widget/TextView;

    .line 91
    const v1, 0x7f0a029f

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/SetFullBackupPassword;->mConfirmNewPw:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f0a02a0

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    .line 94
    const v1, 0x7f0a02a1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    .line 96
    iget-object v1, p0, Lcom/android/lgesettings/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/lgesettings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v1, p0, Lcom/android/lgesettings/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/lgesettings/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/lgesettings/SetFullBackupPassword;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 100
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 109
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 110
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/lgesettings/SetFullBackupPassword;->finish()V

    .line 112
    const/4 v1, 0x1

    .line 114
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
