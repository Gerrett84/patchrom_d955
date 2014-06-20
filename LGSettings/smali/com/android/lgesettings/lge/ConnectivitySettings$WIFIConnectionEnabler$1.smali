.class Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$1;
.super Ljava/lang/Object;
.source "ConnectivitySettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$1;->this$1:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$1;->this$1:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    iget-object v0, v0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    #getter for: Lcom/android/lgesettings/lge/ConnectivitySettings;->mOSPWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$700(Lcom/android/lgesettings/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 820
    :try_start_0
    invoke-static {}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$1500()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$1;->this$1:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    iget-object v0, v0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    invoke-static {}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$1500()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #setter for: Lcom/android/lgesettings/lge/ConnectivitySettings;->mIOSPService:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$1102(Lcom/android/lgesettings/lge/ConnectivitySettings;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 825
    :catch_0
    move-exception v0

    goto :goto_0

    .line 824
    :catch_1
    move-exception v0

    goto :goto_0

    .line 823
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler$1;->this$1:Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;

    iget-object v0, v0, Lcom/android/lgesettings/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/lgesettings/lge/ConnectivitySettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/lge/ConnectivitySettings;->mIOSPService:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/lgesettings/lge/ConnectivitySettings;->access$1102(Lcom/android/lgesettings/lge/ConnectivitySettings;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    return-void
.end method
