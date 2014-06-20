.class Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog$1;
.super Ljava/lang/Object;
.source "WifiInternetUnavailableDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog$1;->this$0:Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 58
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 59
    const-string v0, "WifiInternetUnavailableDialog"

    const-string v1, "OK Button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    return-void
.end method
