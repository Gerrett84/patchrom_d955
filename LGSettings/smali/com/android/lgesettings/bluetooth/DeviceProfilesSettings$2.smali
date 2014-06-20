.class Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$2;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->askLGSmartOnekeyDisconnect(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->access$200(Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getLGSmartOnekeyFunctionNumber()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getLGSmartOnekeyAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setOnekeyControl(IZLjava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;

    #calls: Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->refresh()V
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->access$300(Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;)V

    .line 646
    return-void
.end method
