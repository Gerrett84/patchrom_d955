.class Lcom/android/lgesettings/wifi/WifiStatusTest$4;
.super Ljava/lang/Object;
.source "WifiStatusTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiStatusTest;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiStatusTest;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiStatusTest$4;->this$0:Lcom/android/lgesettings/wifi/WifiStatusTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiStatusTest$4;->this$0:Lcom/android/lgesettings/wifi/WifiStatusTest;

    #getter for: Lcom/android/lgesettings/wifi/WifiStatusTest;->mPingIpAddr:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiStatusTest;->access$1800(Lcom/android/lgesettings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiStatusTest$4;->this$0:Lcom/android/lgesettings/wifi/WifiStatusTest;

    #getter for: Lcom/android/lgesettings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiStatusTest;->access$1700(Lcom/android/lgesettings/wifi/WifiStatusTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiStatusTest$4;->this$0:Lcom/android/lgesettings/wifi/WifiStatusTest;

    #getter for: Lcom/android/lgesettings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiStatusTest;->access$2000(Lcom/android/lgesettings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiStatusTest$4;->this$0:Lcom/android/lgesettings/wifi/WifiStatusTest;

    #getter for: Lcom/android/lgesettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiStatusTest;->access$1900(Lcom/android/lgesettings/wifi/WifiStatusTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiStatusTest$4;->this$0:Lcom/android/lgesettings/wifi/WifiStatusTest;

    #getter for: Lcom/android/lgesettings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiStatusTest;->access$2200(Lcom/android/lgesettings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiStatusTest$4;->this$0:Lcom/android/lgesettings/wifi/WifiStatusTest;

    #getter for: Lcom/android/lgesettings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiStatusTest;->access$2100(Lcom/android/lgesettings/wifi/WifiStatusTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    return-void
.end method
