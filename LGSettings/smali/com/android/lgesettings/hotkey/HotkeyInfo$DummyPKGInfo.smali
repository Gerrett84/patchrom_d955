.class Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;
.super Ljava/lang/Object;
.source "HotkeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/hotkey/HotkeyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DummyPKGInfo"
.end annotation


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private pkg:Ljava/lang/String;

.field private pkgname_resID:I

.field final synthetic this$0:Lcom/android/lgesettings/hotkey/HotkeyInfo;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/hotkey/HotkeyInfo;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter "_pkg"
    .parameter "_pkgname_resID"
    .parameter "_icon"

    .prologue
    const/4 v1, 0x0

    .line 119
    iput-object p1, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;->this$0:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object v1, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;->pkg:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;->pkgname_resID:I

    .line 117
    iput-object v1, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 121
    iput-object p2, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;->pkg:Ljava/lang/String;

    .line 122
    iput p3, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;->pkgname_resID:I

    .line 123
    iput-object p4, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 124
    return-void
.end method


# virtual methods
.method public getPKG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;->pkg:Ljava/lang/String;

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method

.method public getPKG_resID()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/lgesettings/hotkey/HotkeyInfo$DummyPKGInfo;->pkgname_resID:I

    return v0
.end method
