.class Lcom/android/internal/telephony/LgeTimeZoneMonitor$3;
.super Ljava/lang/Object;
.source "LgeTimeZoneMonitor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LgeTimeZoneMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$3;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 285
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 287
    iget-object v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$3;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mManagedTimeZoneSettingDialog:Landroid/app/AlertDialog;

    .line 289
    packed-switch p2, :pswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 291
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$3;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    #getter for: Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->access$100(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    iget-object v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$3;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    #getter for: Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->access$100(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_zone"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, zoneListIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$ZonePickerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 296
    iget-object v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$3;->this$0:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    #getter for: Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->access$100(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
