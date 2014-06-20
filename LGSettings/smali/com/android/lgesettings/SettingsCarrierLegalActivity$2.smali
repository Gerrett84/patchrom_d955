.class Lcom/android/lgesettings/SettingsCarrierLegalActivity$2;
.super Ljava/lang/Object;
.source "SettingsCarrierLegalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/SettingsCarrierLegalActivity;->PrivacyAlert_Detail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/SettingsCarrierLegalActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/SettingsCarrierLegalActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity$2;->this$0:Lcom/android/lgesettings/SettingsCarrierLegalActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity$2;->this$0:Lcom/android/lgesettings/SettingsCarrierLegalActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->finish()V

    .line 343
    return-void
.end method
