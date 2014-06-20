.class Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;
.super Ljava/lang/Object;
.source "NfcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/nfc/NfcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcListenerInfo"
.end annotation


# instance fields
.field listener:Lcom/android/lgesettings/nfc/NfcStateListener;

.field states:I

.field final synthetic this$0:Lcom/android/lgesettings/nfc/NfcManager;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/nfc/NfcManager;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;->this$0:Lcom/android/lgesettings/nfc/NfcManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/nfc/NfcManager;Lcom/android/lgesettings/nfc/NfcManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/lgesettings/nfc/NfcManager$NfcListenerInfo;-><init>(Lcom/android/lgesettings/nfc/NfcManager;)V

    return-void
.end method
