.class Lcom/android/lgesettings/wifi/WifiDialog$1;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiDialog;->showExpandableNotificationGuide(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiDialog$1;->this$0:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog$1;->this$0:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->hideExpandableNotificationGuide()V

    .line 179
    return-void
.end method
