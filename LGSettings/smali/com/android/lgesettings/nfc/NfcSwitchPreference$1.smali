.class Lcom/android/lgesettings/nfc/NfcSwitchPreference$1;
.super Ljava/lang/Object;
.source "NfcSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/NfcSwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/nfc/NfcSwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/nfc/NfcSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcSwitchPreference$1;->this$0:Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 69
    const-string v0, "NFC_SWITCH_PREFERENCE"

    const-string v1, "setOnClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method
