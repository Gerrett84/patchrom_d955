.class Lcom/android/lgesettings/lge/ConnectivitySettings$2;
.super Ljava/lang/Object;
.source "ConnectivitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 930
    iput-object p1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$2;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$2;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    const/4 v1, 0x1

    #calls: Lcom/android/lgesettings/lge/ConnectivitySettings;->connectUsbTether(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$500(Lcom/android/lgesettings/lge/ConnectivitySettings;Z)V

    .line 934
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 935
    return-void
.end method
