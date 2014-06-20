.class Lcom/kddi/net/PreferredNetworkService$2;
.super Lcom/kddi/net/IPreferredNetworkService$Stub;
.source "PreferredNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/net/PreferredNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kddi/net/PreferredNetworkService;


# direct methods
.method constructor <init>(Lcom/kddi/net/PreferredNetworkService;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-direct {p0}, Lcom/kddi/net/IPreferredNetworkService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreferredNetworkType(Landroid/os/Message;)I
    .locals 5
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 194
    const-string v2, "RIL_PreferredNetworkService"

    const-string v3, "getPreferredNetworkType()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iput-object p1, v2, Lcom/kddi/net/PreferredNetworkService;->mResponse:Landroid/os/Message;

    .line 197
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-virtual {v2}, Lcom/kddi/net/PreferredNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.kddi.android.permission.PREFERRED_NETWORK_SETTINGS"

    iget-object v4, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-virtual {v4}, Lcom/kddi/net/PreferredNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 198
    const/4 v1, -0x2

    .line 205
    :cond_0
    :goto_0
    return v1

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v2, v2, Lcom/kddi/net/PreferredNetworkService;->mAction:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "GetNetworkMode_KDDI_LTE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-virtual {v2}, Lcom/kddi/net/PreferredNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/kddi/net/PreferredNetworkService;->mAction:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)I
    .locals 13
    .parameter "networkType"
    .parameter "response"

    .prologue
    const/4 v9, -0x1

    const/4 v7, -0x2

    const/4 v8, 0x0

    .line 123
    const-string v10, "RIL_PreferredNetworkService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setPreferredNetworkType()  networkType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/16 v5, 0xa

    .line 126
    .local v5, setNetworkType:I
    const/16 v6, 0xa

    .line 127
    .local v6, settingsNetworkMode:I
    iget-object v10, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iput-object p2, v10, Lcom/kddi/net/PreferredNetworkService;->mResponse:Landroid/os/Message;

    .line 129
    iget-object v10, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-virtual {v10}, Lcom/kddi/net/PreferredNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.kddi.android.permission.PREFERRED_NETWORK_SETTINGS"

    iget-object v12, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-virtual {v12}, Lcom/kddi/net/PreferredNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-ne v10, v9, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v7

    .line 131
    :cond_1
    iget-object v10, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v10, v10, Lcom/kddi/net/PreferredNetworkService;->mAction:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 132
    packed-switch p1, :pswitch_data_0

    move v7, v9

    .line 183
    goto :goto_0

    .line 134
    :pswitch_0
    iget-object v7, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-virtual {v7}, Lcom/kddi/net/PreferredNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "preferred_network_mode"

    iget-object v10, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget v10, v10, Lcom/kddi/net/PreferredNetworkService;->preferredNetworkMode:I

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 139
    const-string v7, "RIL_PreferredNetworkService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NT_MODE_DEFAULT settingsNetworkMode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "preNetworkType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/kddi/net/PreferredNetworkService;->preNetworkType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget v7, Lcom/kddi/net/PreferredNetworkService;->preNetworkType:I

    const/16 v9, 0xa

    if-ne v7, v9, :cond_2

    const/4 v7, 0x7

    if-eq v6, v7, :cond_5

    :cond_2
    sget v7, Lcom/kddi/net/PreferredNetworkService;->preNetworkType:I

    const/16 v9, 0x9

    if-ne v7, v9, :cond_3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    :cond_3
    sget v7, Lcom/kddi/net/PreferredNetworkService;->preNetworkType:I

    const/16 v9, 0x8

    if-ne v7, v9, :cond_4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_5

    :cond_4
    move v7, v8

    .line 148
    goto :goto_0

    .line 151
    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "SetNetworkMode_KDDI_LTE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v7, "NetworkType"

    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    iget-object v7, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-virtual {v7}, Lcom/kddi/net/PreferredNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    iget-object v7, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v7, Lcom/kddi/net/PreferredNetworkService;->mAction:Ljava/lang/Boolean;

    .end local v2           #intent:Landroid/content/Intent;
    :cond_6
    :goto_1
    move v7, v8

    .line 187
    goto/16 :goto_0

    .line 160
    :pswitch_1
    iget-object v9, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-virtual {v9}, Lcom/kddi/net/PreferredNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    iget-object v11, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget v11, v11, Lcom/kddi/net/PreferredNetworkService;->preferredNetworkMode:I

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 165
    iget-object v9, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v0, v9, Lcom/kddi/net/PreferredNetworkService;->lteOffNetworkType:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v3, :cond_8

    aget v4, v0, v1

    .line 166
    .local v4, mNetworkType:I
    if-ne v4, v6, :cond_7

    move v7, v8

    .line 167
    goto/16 :goto_0

    .line 165
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 170
    .end local v4           #mNetworkType:I
    :cond_8
    const/16 v9, 0xb

    if-eq v6, v9, :cond_0

    .line 173
    sput v6, Lcom/kddi/net/PreferredNetworkService;->preNetworkType:I

    .line 174
    const-string v7, "RIL_PreferredNetworkService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NT_MODE_LTEOFF settingsNetworkMode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "preNetworkType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/kddi/net/PreferredNetworkService;->preNetworkType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 177
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v7, "SetNetworkMode_KDDI_LTE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v7, "NetworkType"

    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    iget-object v7, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-virtual {v7}, Lcom/kddi/net/PreferredNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 180
    iget-object v7, p0, Lcom/kddi/net/PreferredNetworkService$2;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v7, Lcom/kddi/net/PreferredNetworkService;->mAction:Ljava/lang/Boolean;

    goto :goto_1

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
