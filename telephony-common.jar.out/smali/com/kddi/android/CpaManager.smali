.class public Lcom/kddi/android/CpaManager;
.super Ljava/lang/Object;
.source "CpaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/CpaManager$ConnInfo;,
        Lcom/kddi/android/CpaManager$Settings;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_ERROR:I = -0x3

.field public static final CONNECTED:I = 0x2

.field public static final CONNECTING:I = 0x1

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

.field public static final DISCONNECTED:I = 0x4

.field public static final DISCONNECTING:I = 0x3

.field public static final EXTRA_CONNECTIVITY_STATUS:Ljava/lang/String; = "connStatus"

.field public static final EXTRA_ERRNO:Ljava/lang/String; = "errno"

.field public static final MODE_DEFAULT:Ljava/lang/String; = "DEFAULT"

.field public static final MODE_NAVI:Ljava/lang/String; = "NAVI"

.field public static final PARAMETER_ERROR:I = -0x1

.field public static final RADIO_NOT_AVAILABLE:I = -0x2

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RIL_Cpa"

.field public static final UNKNOWN_ERROR:I = -0x4


# instance fields
.field private mCPAStatus:I

.field private mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

.field private mContext:Landroid/content/Context;

.field private mErrno:I

.field private mPackageName:Ljava/lang/String;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettings:Lcom/kddi/android/CpaManager$Settings;

.field private final permName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/kddi/android/CpaManager;->mSettings:Lcom/kddi/android/CpaManager$Settings;

    .line 29
    iput-object v1, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    .line 30
    const/4 v1, 0x4

    iput v1, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    .line 31
    const/4 v1, -0x4

    iput v1, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    .line 58
    const-string v1, "com.kddi.android.permission.MANAGE_CPA"

    iput-object v1, p0, Lcom/kddi/android/CpaManager;->permName:Ljava/lang/String;

    .line 60
    new-instance v1, Lcom/kddi/android/CpaManager$1;

    invoke-direct {v1, p0}, Lcom/kddi/android/CpaManager$1;-><init>(Lcom/kddi/android/CpaManager;)V

    iput-object v1, p0, Lcom/kddi/android/CpaManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    iput-object p1, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    .line 167
    iget-object v1, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.kddi.android.permission.MANAGE_CPA"

    iget-object v3, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 168
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "PERMISSION_DENIED"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kddi/android/CpaManager;->mPackageName:Ljava/lang/String;

    .line 171
    new-instance v1, Lcom/kddi/android/CpaManager$ConnInfo;

    invoke-direct {v1}, Lcom/kddi/android/CpaManager$ConnInfo;-><init>()V

    iput-object v1, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "cpa_onSetupConnectionCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kddi/android/CpaManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    const-string v1, "RIL_Cpa"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CpaManager mPackageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kddi/android/CpaManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/kddi/android/CpaManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/kddi/android/CpaManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/kddi/android/CpaManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    return v0
.end method

.method static synthetic access$102(Lcom/kddi/android/CpaManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    return p1
.end method

.method static synthetic access$200(Lcom/kddi/android/CpaManager;)Lcom/kddi/android/CpaManager$ConnInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/kddi/android/CpaManager;Lcom/kddi/android/CpaManager$ConnInfo;)Lcom/kddi/android/CpaManager$ConnInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kddi/android/CpaManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public changeMode(Ljava/lang/String;Lcom/kddi/android/CpaManager$Settings;)I
    .locals 10
    .parameter "mode"
    .parameter "settings"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 181
    const/4 v4, -0x1

    iput v4, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    .line 184
    iget-object v4, p0, Lcom/kddi/android/CpaManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_0

    .line 185
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "cpa_onSetupConnectionCompleted"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    iget-object v4, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/kddi/android/CpaManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    const-string v4, "RIL_Cpa"

    const-string v5, "changeMode() recreate registerReceiver"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    const-string v4, "NAVI"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 194
    iget-object v4, p2, Lcom/kddi/android/CpaManager$Settings;->apn:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 195
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "apn name null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 198
    :cond_1
    iget v4, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    if-eq v4, v7, :cond_2

    iget v4, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 200
    :cond_2
    iput v6, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    .line 203
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v3, sintent:Landroid/content/Intent;
    const-string v4, "connStatus"

    iget v5, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v4, "errno"

    iget v5, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    iget-object v4, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    const-string v4, "RIL_Cpa"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=============1)MODE_NAVI changeMode() send intent CONNECTIVITY_ACTION mCPAStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mErrno="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget v4, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    .line 298
    :goto_0
    return v4

    .line 222
    .end local v3           #sintent:Landroid/content/Intent;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.kddi.android.cpa_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "cpa_enable"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    const-string v4, "cpa_apn"

    iget-object v5, p2, Lcom/kddi/android/CpaManager$Settings;->apn:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v4, "cpa_user"

    iget-object v5, p2, Lcom/kddi/android/CpaManager$Settings;->userId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v4, "cpa_password"

    iget-object v5, p2, Lcom/kddi/android/CpaManager$Settings;->password:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v4, "cpa_authType"

    iget v5, p2, Lcom/kddi/android/CpaManager$Settings;->authType:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string v4, "cpa_dns1"

    iget-object v5, p2, Lcom/kddi/android/CpaManager$Settings;->dns1:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v4, "cpa_dns2"

    iget-object v5, p2, Lcom/kddi/android/CpaManager$Settings;->dns2:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v4, "cpa_PackageName"

    iget-object v5, p0, Lcom/kddi/android/CpaManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object v4, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 233
    iput-object p2, p0, Lcom/kddi/android/CpaManager;->mSettings:Lcom/kddi/android/CpaManager$Settings;

    .line 234
    iput v7, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    .line 235
    iput v6, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    .line 238
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .restart local v3       #sintent:Landroid/content/Intent;
    const-string v4, "connStatus"

    iget v5, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    const-string v4, "errno"

    iget v5, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    iget-object v4, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    const-string v4, "RIL_Cpa"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=============2)MODE_NAVI changeMode() send intent CONNECTIVITY_ACTION mCPAStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mErrno="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v4, "RIL_Cpa"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeMode() MODE_NAVI mode apn("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/kddi/android/CpaManager$Settings;->apn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") userId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/kddi/android/CpaManager$Settings;->userId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") password("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/kddi/android/CpaManager$Settings;->password:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") authType("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/kddi/android/CpaManager$Settings;->authType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") dns1 ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/kddi/android/CpaManager$Settings;->dns1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") dns2 ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/kddi/android/CpaManager$Settings;->dns2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_1
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 298
    iget v4, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    goto/16 :goto_0

    .line 250
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #sintent:Landroid/content/Intent;
    :cond_4
    const-string v4, "DEFAULT"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 253
    iget v4, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    if-eq v4, v8, :cond_5

    iget v4, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    if-ne v4, v9, :cond_7

    .line 255
    :cond_5
    iput v6, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    .line 258
    const-string v4, "ril.btdun.send"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, mSendIntent:Ljava/lang/String;
    iget v4, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    if-ne v4, v8, :cond_6

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 260
    iput v9, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    .line 263
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .restart local v3       #sintent:Landroid/content/Intent;
    const-string v4, "connStatus"

    iget v5, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string v4, "errno"

    iget v5, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    iget-object v4, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    const-string v4, "RIL_Cpa"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "============= 3)MODE_DEFAULT changeMode() send intent CONNECTIVITY_ACTION mCPAStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mErrno="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v4, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    goto/16 :goto_0

    .line 274
    .end local v2           #mSendIntent:Ljava/lang/String;
    .end local v3           #sintent:Landroid/content/Intent;
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.kddi.android.cpa_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "cpa_enable"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    iget-object v4, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    iput v8, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    .line 279
    iput v6, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    .line 282
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .restart local v3       #sintent:Landroid/content/Intent;
    const-string v4, "connStatus"

    iget v5, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v4, "errno"

    iget v5, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    iget-object v4, p0, Lcom/kddi/android/CpaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 287
    const-string v4, "RIL_Cpa"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "============= 4) MODE_DEFAULT changeMode() send intent CONNECTIVITY_ACTION mCPAStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mErrno="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v4, "RIL_Cpa"

    const-string v5, "changeMode() MODE_DEFAULT mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 294
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #sintent:Landroid/content/Intent;
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wrong mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getConnInfo()Lcom/kddi/android/CpaManager$ConnInfo;
    .locals 4

    .prologue
    .line 307
    const-string v0, "RIL_Cpa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnInfo() mCPAStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mErrno:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget v0, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/kddi/android/CpaManager;->mErrno:I

    if-eqz v0, :cond_1

    .line 309
    :cond_0
    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    if-nez v0, :cond_2

    .line 312
    const-string v0, "RIL_Cpa"

    const-string v1, "getConnInfo() mConnInfo == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_1
    iget-object v0, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    goto :goto_0

    .line 315
    :cond_2
    const-string v0, "RIL_Cpa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnInfo() mConnInfo.localAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    iget-object v2, v2, Lcom/kddi/android/CpaManager$ConnInfo;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v0, "RIL_Cpa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnInfo() mConnInfo.dnsAddress[0]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    iget-object v2, v2, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v0, "RIL_Cpa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnInfo() mConnInfo.dnsAddress[1]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kddi/android/CpaManager;->mConnInfo:Lcom/kddi/android/CpaManager$ConnInfo;

    iget-object v2, v2, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getConnStatus()I
    .locals 3

    .prologue
    .line 302
    const-string v0, "RIL_Cpa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnStatus() mCPAStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget v0, p0, Lcom/kddi/android/CpaManager;->mCPAStatus:I

    return v0
.end method
