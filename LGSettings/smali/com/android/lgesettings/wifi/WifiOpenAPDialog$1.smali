.class Lcom/android/lgesettings/wifi/WifiOpenAPDialog$1;
.super Ljava/lang/Object;
.source "WifiOpenAPDialog.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiOpenAPDialog;-><init>(Landroid/content/Context;Lcom/android/lgesettings/wifi/AccessPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiOpenAPDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiOpenAPDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiOpenAPDialog$1;->this$0:Lcom/android/lgesettings/wifi/WifiOpenAPDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiOpenAPDialog$1;->this$0:Lcom/android/lgesettings/wifi/WifiOpenAPDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiOpenAPDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802e3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
