.class Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$3;
.super Ljava/lang/Object;
.source "WifiSettingsAsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->onInitView(Lcom/android/lgesettings/wifi/WifiSettings;Landroid/widget/Switch;)V
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
    .line 259
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    iget v0, v0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->mInterHelpIndex:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 269
    :cond_0
    return-void
.end method
