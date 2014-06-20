.class public Lcom/android/lgesettings/hotkey/ShortcutInfo;
.super Ljava/lang/Object;
.source "ShortcutInfo.java"


# instance fields
.field className:Ljava/lang/String;

.field customIconId:I

.field label:Ljava/lang/String;

.field packageName:Ljava/lang/String;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    const-string v0, "ShortcutInfo [label=%s, packageName=%s, className=%s, customIconId=%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/lgesettings/hotkey/ShortcutInfo;->label:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/lgesettings/hotkey/ShortcutInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/lgesettings/hotkey/ShortcutInfo;->className:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/lgesettings/hotkey/ShortcutInfo;->customIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
