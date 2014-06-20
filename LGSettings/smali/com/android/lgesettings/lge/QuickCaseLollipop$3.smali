.class Lcom/android/lgesettings/lge/QuickCaseLollipop$3;
.super Ljava/lang/Object;
.source "QuickCaseLollipop.java"

# interfaces
.implements Lcom/android/lgesettings/lge/LollipopRadioButtonPreference$OnImageButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/QuickCaseLollipop;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/QuickCaseLollipop;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/QuickCaseLollipop;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop$3;->this$0:Lcom/android/lgesettings/lge/QuickCaseLollipop;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageButtonClickListener()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.lollipop.action.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lollipop_cover_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/android/lgesettings/lge/QuickCaseLollipop$3;->this$0:Lcom/android/lgesettings/lge/QuickCaseLollipop;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/lge/QuickCaseLollipop;->startActivity(Landroid/content/Intent;)V

    .line 135
    const-string v1, "YSY"

    const-string v2, "click_2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method
