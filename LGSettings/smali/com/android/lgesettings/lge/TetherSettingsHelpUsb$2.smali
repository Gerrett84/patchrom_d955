.class Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$2;
.super Ljava/lang/Object;
.source "TetherSettingsHelpUsb.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$2;->this$0:Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a0312

    if-ne v2, v3, :cond_0

    .line 275
    const-string v2, "http://www.lg.com/us/products/documents/LGAndroidDriver_WHQL_ML_Ver_1.0_All_Win7.exe"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 276
    .local v1, downloadUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 277
    .local v0, downloadIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb$2;->this$0:Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;

    invoke-virtual {v2, v0}, Lcom/android/lgesettings/lge/TetherSettingsHelpUsb;->startActivity(Landroid/content/Intent;)V

    .line 279
    .end local v0           #downloadIntent:Landroid/content/Intent;
    .end local v1           #downloadUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method
