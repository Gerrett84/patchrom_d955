.class Lcom/android/lgesettings/wifi/WifiSettings$10;
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
    .line 1765
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettings$10;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$10;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$10;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/lgesettings/wifi/AccessPoint;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->access$700(Lcom/android/lgesettings/wifi/WifiSettings;)Lcom/android/lgesettings/wifi/AccessPoint;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/android/lgesettings/wifi/WifiSettings;->showDialog(Lcom/android/lgesettings/wifi/AccessPoint;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/wifi/WifiSettings;->access$800(Lcom/android/lgesettings/wifi/WifiSettings;Lcom/android/lgesettings/wifi/AccessPoint;Z)V

    .line 1770
    return-void
.end method
