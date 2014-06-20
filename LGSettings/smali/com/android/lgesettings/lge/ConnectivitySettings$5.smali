.class Lcom/android/lgesettings/lge/ConnectivitySettings$5;
.super Ljava/lang/Object;
.source "ConnectivitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 907
    iput-object p1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$5;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 910
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$5;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    #getter for: Lcom/android/lgesettings/lge/ConnectivitySettings;->mUsbTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$1600(Lcom/android/lgesettings/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 912
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 914
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
