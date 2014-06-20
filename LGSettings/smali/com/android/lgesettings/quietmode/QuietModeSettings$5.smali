.class Lcom/android/lgesettings/quietmode/QuietModeSettings$5;
.super Ljava/lang/Object;
.source "QuietModeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeSettings;->updateContactsAllowed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings$5;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 234
    const-string v0, "QuietModeSettings"

    const-string v1, "Contacs Allowed update"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 236
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings$5;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/number"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 237
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings$5;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->access$400(Lcom/android/lgesettings/quietmode/QuietModeSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings$5;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->access$400(Lcom/android/lgesettings/quietmode/QuietModeSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 238
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 239
    return-void
.end method
