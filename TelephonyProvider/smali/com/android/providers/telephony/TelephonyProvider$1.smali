.class Lcom/android/providers/telephony/TelephonyProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/TelephonyProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/TelephonyProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 1968
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1971
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1972
    .local v0, action:Ljava/lang/String;
    const-string v2, "TelephonyProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[backupAPN] intent received :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    const-string v2, "lge.android.intent.action.DATA_DM_UPDATE_COMPLETE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1975
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    #getter for: Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
    invoke-static {v2}, Lcom/android/providers/telephony/TelephonyProvider;->access$800(Lcom/android/providers/telephony/TelephonyProvider;)Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1976
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    const-string v3, "/persist-lg/lgdrm/new-apns-conf.xml"

    invoke-virtual {v2, v1, v3}, Lcom/android/providers/telephony/TelephonyProvider;->saveTelephonyDBToXml(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1978
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void
.end method
