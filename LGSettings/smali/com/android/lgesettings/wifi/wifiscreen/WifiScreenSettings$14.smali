.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$14;
.super Ljava/lang/Object;
.source "WifiScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$14;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1108
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1111
    :cond_0
    return-void
.end method
