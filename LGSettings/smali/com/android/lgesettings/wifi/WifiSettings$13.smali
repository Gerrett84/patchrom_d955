.class Lcom/android/lgesettings/wifi/WifiSettings$13;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1825
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettings$13;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "dialogId"

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$13;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->mDialog:Lcom/android/lgesettings/wifi/WifiDialog;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->access$900(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/WifiDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->show()V

    .line 1829
    return-void
.end method
