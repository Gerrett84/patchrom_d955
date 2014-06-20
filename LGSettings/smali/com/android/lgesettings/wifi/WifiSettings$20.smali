.class Lcom/android/lgesettings/wifi/WifiSettings$20;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/WifiSettings;
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
    .line 3194
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettings$20;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 3196
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 3198
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettings$20;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #calls: Lcom/android/lgesettings/wifi/WifiSettings;->InitSktCmFirstFlag()V
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1500(Lcom/android/lgesettings/wifi/WifiSettings;)V

    .line 3200
    :cond_0
    return-void
.end method
