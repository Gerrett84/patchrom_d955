.class Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$2;
.super Ljava/lang/Object;
.source "QuickCaseLollipopSettings.java"

# interfaces
.implements Lcom/android/lgesettings/lge/LollipopRadioButtonPreference$OnImageButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$2;->this$0:Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageButtonClickListener()V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.lollipop.action.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lollipop_cover_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$2;->this$0:Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->startActivity(Landroid/content/Intent;)V

    .line 126
    const-string v1, "YSY"

    const-string v2, "click_3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method
