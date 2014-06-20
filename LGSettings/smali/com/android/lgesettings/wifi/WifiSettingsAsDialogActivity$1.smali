.class Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity$1;
.super Ljava/lang/Object;
.source "WifiSettingsAsDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;->onInitView(Lcom/android/lgesettings/wifi/WifiSettings;Landroid/widget/Switch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity$1;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity;

    iput-object p2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity$1;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsDialogActivity$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 75
    return-void
.end method
