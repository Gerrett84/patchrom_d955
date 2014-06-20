.class Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$4;
.super Ljava/lang/Object;
.source "WifiSettingsAsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->showExpandableNotificationGuide(Landroid/view/View;I)V
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
    .line 487
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity$4;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiSettingsAsActivity;->hideExpandableNotificationGuide()V

    .line 491
    return-void
.end method
