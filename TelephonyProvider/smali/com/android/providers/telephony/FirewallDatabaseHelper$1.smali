.class Lcom/android/providers/telephony/FirewallDatabaseHelper$1;
.super Ljava/lang/Object;
.source "FirewallDatabaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/telephony/FirewallDatabaseHelper;->upgradeToVersion8(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/FirewallDatabaseHelper;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/FirewallDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/providers/telephony/FirewallDatabaseHelper$1;->this$0:Lcom/android/providers/telephony/FirewallDatabaseHelper;

    iput-object p2, p0, Lcom/android/providers/telephony/FirewallDatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/providers/telephony/FirewallDatabaseHelper$1;->this$0:Lcom/android/providers/telephony/FirewallDatabaseHelper;

    iget-object v1, p0, Lcom/android/providers/telephony/FirewallDatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    #calls: Lcom/android/providers/telephony/FirewallDatabaseHelper;->moveSms(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, v1}, Lcom/android/providers/telephony/FirewallDatabaseHelper;->access$000(Lcom/android/providers/telephony/FirewallDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 401
    return-void
.end method
