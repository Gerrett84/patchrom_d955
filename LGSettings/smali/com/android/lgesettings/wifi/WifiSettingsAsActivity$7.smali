.class Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$7;
.super Ljava/lang/Object;
.source "WifiSettingsAsActivity.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->showExpandableNotificationGuide2(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$7;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 660
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$7;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->access$200(Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020249

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 661
    .local v0, drawFromPath:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 662
    return-object v0
.end method
