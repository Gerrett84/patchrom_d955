.class public Lcom/lge/camera/command/CommandManager;
.super Ljava/lang/Object;
.source "CommandManager.java"


# instance fields
.field private beRemovedAll:Z

.field private mGet:Lcom/lge/camera/ControllerFunction;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/camera/command/Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .parameter "function"

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/CommandManager;->beRemovedAll:Z

    .line 17
    iput-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    .line 21
    iput-object p1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 22
    return-void
.end method


# virtual methods
.method public doCommand(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 88
    .local v0, c:Lcom/lge/camera/command/Command;
    if-nez v0, :cond_0

    .line 89
    const-string v1, "CameraApp"

    const-string v2, "command is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {v0}, Lcom/lge/camera/command/Command;->execute()V

    goto :goto_0
.end method

.method public doCommand(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "msg"
    .parameter "arg1"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 98
    .local v0, c:Lcom/lge/camera/command/Command;
    if-nez v0, :cond_0

    .line 99
    const-string v1, "CameraApp"

    const-string v2, "command is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {v0, p2}, Lcom/lge/camera/command/Command;->execute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "msg"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 108
    .local v0, c:Lcom/lge/camera/command/Command;
    if-nez v0, :cond_0

    .line 109
    const-string v1, "CameraApp"

    const-string v2, "command is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/lge/camera/command/Command;->execute(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public doCommandDelayed(Ljava/lang/String;J)V
    .locals 6
    .parameter "msg"
    .parameter "delay"

    .prologue
    .line 150
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/command/CommandManager;->doCommandWithFixedRate(Ljava/lang/String;JJ)V

    .line 151
    return-void
.end method

.method public doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 7
    .parameter "msg"
    .parameter "arg1"
    .parameter "delay"

    .prologue
    .line 167
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/command/CommandManager;->doCommandWithFixedRate(Ljava/lang/String;Ljava/lang/Object;JJ)V

    .line 168
    return-void
.end method

.method public doCommandNoneParameter(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 68
    .local v0, c:Lcom/lge/camera/command/Command;
    if-nez v0, :cond_0

    .line 69
    const-string v1, "CameraApp"

    const-string v2, "command is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Lcom/lge/camera/command/Command;->executeNoneParameter()V

    goto :goto_0
.end method

.method public doCommandNoneParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "msg"
    .parameter "arg1"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 78
    .local v0, c:Lcom/lge/camera/command/Command;
    if-nez v0, :cond_0

    .line 79
    const-string v1, "CameraApp"

    const-string v2, "command is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {v0, p2}, Lcom/lge/camera/command/Command;->executeNoneParameter(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public doCommandUi(Ljava/lang/String;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 118
    .local v0, c:Lcom/lge/camera/command/Command;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    if-nez v1, :cond_1

    .line 119
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "command:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/Command;->setArgument(Ljava/lang/Object;)V

    .line 123
    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter "msg"
    .parameter "arg1"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 129
    .local v0, c:Lcom/lge/camera/command/Command;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    if-nez v1, :cond_1

    .line 130
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "command:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {v0, p2}, Lcom/lge/camera/command/Command;->setArgument(Ljava/lang/Object;)V

    .line 134
    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public doCommandUi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .parameter "msg"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 140
    .local v0, c:Lcom/lge/camera/command/Command;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    if-nez v1, :cond_1

    .line 141
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "command:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/lge/camera/command/Command;->setArgument(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public doCommandWithFixedRate(Ljava/lang/String;JJ)V
    .locals 5
    .parameter "msg"
    .parameter "delay"
    .parameter "period"

    .prologue
    const/4 v3, 0x1

    .line 154
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 155
    .local v0, c:Lcom/lge/camera/command/Command;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 156
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "command:%s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/Command;->setArgument(Ljava/lang/Object;)V

    .line 160
    invoke-virtual {v0, p4, p5}, Lcom/lge/camera/command/Command;->setRepeat(J)V

    .line 161
    invoke-virtual {v0, v3}, Lcom/lge/camera/command/Command;->setPosted(Z)V

    .line 162
    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public doCommandWithFixedRate(Ljava/lang/String;Ljava/lang/Object;JJ)V
    .locals 5
    .parameter "msg"
    .parameter "arg1"
    .parameter "delay"
    .parameter "period"

    .prologue
    const/4 v3, 0x1

    .line 171
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 172
    .local v0, c:Lcom/lge/camera/command/Command;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 173
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "command:%s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {v0, p2}, Lcom/lge/camera/command/Command;->setArgument(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v0, p5, p6}, Lcom/lge/camera/command/Command;->setRepeat(J)V

    .line 178
    invoke-virtual {v0, v3}, Lcom/lge/camera/command/Command;->setPosted(Z)V

    .line 179
    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0, p3, p4}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public findScheduledCommand(Ljava/lang/String;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, c:Lcom/lge/camera/command/Command;
    iget-object v2, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/lge/camera/command/Command;
    check-cast v0, Lcom/lge/camera/command/Command;

    .line 224
    .restart local v0       #c:Lcom/lge/camera/command/Command;
    if-nez v0, :cond_1

    .line 225
    const-string v2, "CameraApp"

    const-string v3, "command is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    :goto_0
    return v1

    .line 228
    :cond_1
    invoke-virtual {v0}, Lcom/lge/camera/command/Command;->getPosted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    .local v2, command:Lcom/lge/camera/command/Command;
    iget-object v5, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 34
    iget-object v5, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #command:Lcom/lge/camera/command/Command;
    check-cast v2, Lcom/lge/camera/command/Command;

    .line 35
    .restart local v2       #command:Lcom/lge/camera/command/Command;
    if-nez v2, :cond_2

    .line 36
    const-string v5, "CameraApp"

    const-string v7, "getCommand error: command is null"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 59
    :goto_0
    return-object v5

    .line 41
    :cond_0
    iget-boolean v5, p0, Lcom/lge/camera/command/CommandManager;->beRemovedAll:Z

    if-eqz v5, :cond_1

    .line 42
    const-string v5, "CameraApp"

    const-string v7, "all commands are removing now...so return!"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 43
    goto :goto_0

    .line 46
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 48
    .local v1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/lge/camera/ControllerFunction;

    aput-object v8, v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 49
    .local v3, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    aput-object v8, v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/lge/camera/command/Command;

    move-object v2, v0

    .line 50
    iget-object v5, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    invoke-virtual {v2}, Lcom/lge/camera/command/Command;->resetStartTime()V

    move-object v5, v2

    .line 59
    goto :goto_0

    .line 51
    :catch_0
    move-exception v4

    .line 52
    .local v4, e:Ljava/lang/Exception;
    const-string v5, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCommand error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .line 54
    goto :goto_0
.end method

.method public getCommandHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/camera/command/Command;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public removeScheduledAllCommand()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 194
    iput-boolean v6, p0, Lcom/lge/camera/command/CommandManager;->beRemovedAll:Z

    .line 196
    iget-object v4, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 197
    .local v1, cmd:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 198
    .local v0, c:Lcom/lge/camera/command/Command;
    const/4 v2, 0x0

    .line 199
    .local v2, key:Ljava/lang/Object;
    const/4 v3, 0x0

    .line 200
    .end local v2           #key:Ljava/lang/Object;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 202
    .restart local v2       #key:Ljava/lang/Object;
    iget-object v4, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 203
    .local v3, value:Ljava/lang/Object;
    if-eqz v3, :cond_2

    move-object v0, v3

    .line 204
    check-cast v0, Lcom/lge/camera/command/Command;

    .line 205
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v4

    if-nez v4, :cond_1

    .line 206
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, "command:%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iput-boolean v7, p0, Lcom/lge/camera/command/CommandManager;->beRemovedAll:Z

    .line 217
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #value:Ljava/lang/Object;
    :goto_1
    return-void

    .line 210
    .restart local v2       #key:Ljava/lang/Object;
    .restart local v3       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0, v7}, Lcom/lge/camera/command/Command;->setPosted(Z)V

    .line 211
    iget-object v4, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 213
    :cond_2
    const-string v4, "CameraApp"

    const-string v5, " value is null"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #value:Ljava/lang/Object;
    :cond_3
    iput-boolean v7, p0, Lcom/lge/camera/command/CommandManager;->beRemovedAll:Z

    goto :goto_1
.end method

.method public removeScheduledCommand(Ljava/lang/String;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v0

    .line 185
    .local v0, c:Lcom/lge/camera/command/Command;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 186
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "command:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {v0, v4}, Lcom/lge/camera/command/Command;->setPosted(Z)V

    .line 190
    iget-object v1, p0, Lcom/lge/camera/command/CommandManager;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/CommandManager;->mHashMap:Ljava/util/HashMap;

    .line 29
    :cond_0
    return-void
.end method
