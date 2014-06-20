.class Lcom/android/lgesettings/vpn2/CertInstallSender$4;
.super Ljava/lang/Object;
.source "CertInstallSender.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/vpn2/CertInstallSender;->keystoreUserDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/vpn2/CertInstallSender;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vpn2/CertInstallSender;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/lgesettings/vpn2/CertInstallSender$4;->this$0:Lcom/android/lgesettings/vpn2/CertInstallSender;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 143
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 144
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/CertInstallSender$4;->this$0:Lcom/android/lgesettings/vpn2/CertInstallSender;

    invoke-virtual {v0}, Lcom/android/lgesettings/vpn2/CertInstallSender;->finish()V

    .line 145
    return-void
.end method
