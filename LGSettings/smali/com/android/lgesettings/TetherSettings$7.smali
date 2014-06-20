.class Lcom/android/lgesettings/TetherSettings$7;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TetherSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings$7;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1495
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 1496
    const-string v1, "TetherSettings"

    const-string v2, "[myseokil] alertDialogHandler - KEYCODE_BACK"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings$7;->this$0:Lcom/android/lgesettings/TetherSettings;

    #setter for: Lcom/android/lgesettings/TetherSettings;->mDoNotShowAgain:Z
    invoke-static {v1, v0}, Lcom/android/lgesettings/TetherSettings;->access$2302(Lcom/android/lgesettings/TetherSettings;Z)Z

    .line 1500
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1501
    const/4 v0, 0x1

    .line 1503
    :cond_0
    return v0
.end method
