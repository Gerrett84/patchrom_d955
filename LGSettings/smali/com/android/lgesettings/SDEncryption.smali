.class public Lcom/android/lgesettings/SDEncryption;
.super Ljava/lang/Object;
.source "SDEncryption.java"


# instance fields
.field isEnable:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SDEncryption;->isEnable:Ljava/lang/Boolean;

    .line 11
    return-void
.end method


# virtual methods
.method public getSDcardEncryptedMenuId()I
    .locals 1

    .prologue
    .line 17
    const v0, 0x7f060052

    return v0
.end method

.method public getSDcardUnencryptedMenuId()I
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f06005a

    return v0
.end method
