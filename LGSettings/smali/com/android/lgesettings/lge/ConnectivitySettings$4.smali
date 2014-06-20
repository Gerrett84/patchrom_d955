.class Lcom/android/lgesettings/lge/ConnectivitySettings$4;
.super Ljava/lang/Object;
.source "ConnectivitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/ConnectivitySettings;->onCreateTetherAlertDialg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/ConnectivitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 917
    iput-object p1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$4;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$4;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    #getter for: Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$1600(Lcom/android/lgesettings/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 921
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 922
    return-void
.end method
