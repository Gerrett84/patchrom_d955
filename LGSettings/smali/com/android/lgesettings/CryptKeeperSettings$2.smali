.class Lcom/android/lgesettings/CryptKeeperSettings$2;
.super Ljava/lang/Object;
.source "CryptKeeperSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/CryptKeeperSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/lgesettings/CryptKeeperSettings$2;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/lgesettings/CryptKeeperSettings$2;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    const/16 v1, 0x37

    #calls: Lcom/android/lgesettings/CryptKeeperSettings;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/CryptKeeperSettings;->access$300(Lcom/android/lgesettings/CryptKeeperSettings;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/lgesettings/CryptKeeperSettings$2;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08014d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08014e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/CryptKeeperSettings$2;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/CryptKeeperSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08059d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/CryptKeeperSettings$2$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/CryptKeeperSettings$2$2;-><init>(Lcom/android/lgesettings/CryptKeeperSettings$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/CryptKeeperSettings$2;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/CryptKeeperSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/CryptKeeperSettings$2$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/CryptKeeperSettings$2$1;-><init>(Lcom/android/lgesettings/CryptKeeperSettings$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 157
    :cond_0
    return-void
.end method
