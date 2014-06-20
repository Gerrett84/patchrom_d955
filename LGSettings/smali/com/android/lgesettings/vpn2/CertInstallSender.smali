.class public Lcom/android/lgesettings/vpn2/CertInstallSender;
.super Landroid/app/Activity;
.source "CertInstallSender.java"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private keystoreUserCheck:Z

.field public mType:I

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    iput v0, p0, Lcom/android/lgesettings/vpn2/CertInstallSender;->mType:I

    .line 34
    iput-boolean v0, p0, Lcom/android/lgesettings/vpn2/CertInstallSender;->keystoreUserCheck:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/vpn2/CertInstallSender;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/CertInstallSender;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/vpn2/CertInstallSender;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/lgesettings/vpn2/CertInstallSender;->editor:Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/vpn2/CertInstallSender;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/CertInstallSender;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private keystoreUserDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 103
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/vpn2/CertInstallSender;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 104
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04018e

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 106
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0a002e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 107
    .local v3, notShowAgain:Landroid/widget/CheckBox;
    new-instance v4, Lcom/android/lgesettings/vpn2/CertInstallSender$1;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/vpn2/CertInstallSender$1;-><init>(Lcom/android/lgesettings/vpn2/CertInstallSender;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f080bfa

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 116
    const v4, 0x1010355

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 118
    const v4, 0x7f08059e

    new-instance v5, Lcom/android/lgesettings/vpn2/CertInstallSender$2;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/vpn2/CertInstallSender$2;-><init>(Lcom/android/lgesettings/vpn2/CertInstallSender;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    const v4, 0x7f08059d

    new-instance v5, Lcom/android/lgesettings/vpn2/CertInstallSender$3;

    invoke-direct {v5, p0, v3}, Lcom/android/lgesettings/vpn2/CertInstallSender$3;-><init>(Lcom/android/lgesettings/vpn2/CertInstallSender;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    new-instance v4, Lcom/android/lgesettings/vpn2/CertInstallSender$4;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/vpn2/CertInstallSender$4;-><init>(Lcom/android/lgesettings/vpn2/CertInstallSender;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 82
    const-string v3, "CertInstallerSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resultCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    if-eqz p3, :cond_1

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, CertKey:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 86
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 87
    const-string v3, "CertKey"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.lge.vpn.friendlyvpn"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v3, "Type"

    iget v4, p0, Lcom/android/lgesettings/vpn2/CertInstallSender;->mType:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string v3, "CertKey"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vpn2/CertInstallSender;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    .end local v0           #CertKey:Ljava/lang/String;
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/CertInstallSender;->finish()V

    .line 100
    return-void

    .line 96
    :cond_1
    const-string v3, "CertInstallerIntent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown request code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/vpn2/CertInstallSender;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/CertInstallSender;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/CertInstallSender;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 44
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 46
    const-string v2, "Type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/vpn2/CertInstallSender;->mType:I

    .line 52
    :cond_0
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 71
    packed-switch p1, :pswitch_data_0

    .line 75
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 73
    :pswitch_0
    invoke-direct {p0}, Lcom/android/lgesettings/vpn2/CertInstallSender;->keystoreUserDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 58
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/vpn2/CertInstallSender;->preferences:Landroid/content/SharedPreferences;

    .line 59
    iget-object v1, p0, Lcom/android/lgesettings/vpn2/CertInstallSender;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "keystore_user_check"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/lgesettings/vpn2/CertInstallSender;->keystoreUserCheck:Z

    .line 60
    iget-boolean v1, p0, Lcom/android/lgesettings/vpn2/CertInstallSender;->keystoreUserCheck:Z

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/vpn2/CertInstallSender;->showDialog(I)V

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.credentials.INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v4}, Lcom/android/lgesettings/vpn2/CertInstallSender;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
