.class Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference$1;
.super Ljava/lang/Object;
.source "LGBluetoothHiddenSettingsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->onCheckBoxClicked()V

    .line 57
    return-void
.end method
