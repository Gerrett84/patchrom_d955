.class public Lcom/android/lgesettings/FontServerConnection;
.super Ljava/lang/Object;
.source "FontServerConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final parent:Landroid/content/Context;

.field private service:Lcom/hy/system/fontserver/IFontServerRemoteService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "parent"
    .parameter "handler"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    .line 48
    iput-object p1, p0, Lcom/android/lgesettings/FontServerConnection;->parent:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/lgesettings/FontServerConnection;->handler:Landroid/os/Handler;

    .line 50
    return-void
.end method


# virtual methods
.method public connectFontServerService()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 77
    iget-object v1, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-nez v1, :cond_0

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SYSTEM_FONTSERVER_BIND_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, bindIntent:Landroid/content/Intent;
    const-string v1, "com.hy.system.fontserver"

    const-string v2, "com.hy.system.fontserver.FontServer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/android/lgesettings/FontServerConnection;->parent:Landroid/content/Context;

    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 81
    const-string v1, "HyFontServerConnection"

    const-string v2, "FontServer Connecting.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0           #bindIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public disconnectFontServerService()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/FontServerConnection;->parent:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    .line 74
    :cond_0
    return-void
.end method

.method public getAllFontNames()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v2, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-nez v2, :cond_0

    .line 170
    :goto_0
    return-object v1

    .line 166
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v2}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getAllFontNames()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "HyFontServerConnection"

    const-string v3, "An error occured during the call."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAllFontWebFaceNames()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v2, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-nez v2, :cond_0

    .line 180
    :goto_0
    return-object v1

    .line 176
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v2}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getAllFontWebFaceNames()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "HyFontServerConnection"

    const-string v3, "An error occured during the call."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDefaultTypefaceIndex()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v2, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-nez v2, :cond_0

    .line 130
    :goto_0
    return v1

    .line 126
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v2}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getDefaultTypefaceIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "HyFontServerConnection"

    const-string v3, "An error occured during the call."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFontFullPath(I)Ljava/lang/String;
    .locals 4
    .parameter "fontIndex"

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v2, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-nez v2, :cond_0

    .line 200
    :goto_0
    return-object v1

    .line 196
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v2, p1}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getFontFullPath(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "HyFontServerConnection"

    const-string v3, "An error occured during the call."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNumAllFonts()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-nez v2, :cond_0

    .line 140
    :goto_0
    return v1

    .line 136
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v2}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getNumAllFonts()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "HyFontServerConnection"

    const-string v3, "An error occured during the call."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNumEmbeddedFonts()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v2, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-nez v2, :cond_0

    .line 150
    :goto_0
    return v1

    .line 146
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v2}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getNumEmbeddedFonts()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "HyFontServerConnection"

    const-string v3, "An error occured during the call."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v2, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-nez v2, :cond_0

    .line 160
    :goto_0
    return-object v1

    .line 156
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v2}, Lcom/hy/system/fontserver/IFontServerRemoteService;->getSummary()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "HyFontServerConnection"

    const-string v3, "An error occured during the call."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 57
    invoke-static {p2}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hy/system/fontserver/IFontServerRemoteService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    .line 58
    iget-object v0, p0, Lcom/android/lgesettings/FontServerConnection;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/lgesettings/FontServerConnection;->handler:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    :cond_0
    const-string v0, "HyFontServerConnection"

    const-string v1, "FontServer Connected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    .line 67
    return-void
.end method

.method public selectDefaultTypeface(I)V
    .locals 3
    .parameter "fontIndex"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-nez v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v1, p1}, Lcom/hy/system/fontserver/IFontServerRemoteService;->selectDefaultTypeface(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "HyFontServerConnection"

    const-string v2, "An error occured during the call."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateFontServer()V
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-nez v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 92
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/FontServerConnection;->service:Lcom/hy/system/fontserver/IFontServerRemoteService;

    invoke-interface {v1}, Lcom/hy/system/fontserver/IFontServerRemoteService;->updateFontServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "HyFontServerConnection"

    const-string v2, "An error occured during the call."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
