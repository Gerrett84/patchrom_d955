.class Lcom/android/lgesettings/deviceinfo/Memory$1;
.super Landroid/os/storage/StorageEventListener;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/Memory$1;->this$0:Lcom/android/lgesettings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const/4 v8, 0x1

    .line 223
    const-string v5, "hsmodel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received storage state changed notification that "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " changed state from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/Memory$1;->this$0:Lcom/android/lgesettings/deviceinfo/Memory;

    #getter for: Lcom/android/lgesettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/lgesettings/deviceinfo/Memory;->access$000(Lcom/android/lgesettings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 229
    .local v0, category:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    const-string v5, "/storage/USBstorage"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 230
    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getVolumePath()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, theVolumePath:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, theKey:Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 233
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/Memory$1;->this$0:Lcom/android/lgesettings/deviceinfo/Memory;

    invoke-virtual {v5, p1}, Lcom/android/lgesettings/deviceinfo/Memory;->isConnectedToUSBStorage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    const-string v5, "hsmodel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "To update : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iput-boolean v8, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->isNeededToCheckUSBRefresh:Z

    .line 237
    invoke-virtual {v0, p1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->setVolumePath(Ljava/lang/String;)V

    .line 238
    const-string v5, "already_defined"

    invoke-virtual {v0, v5}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->onStorageStateChanged()V

    .line 278
    .end local v0           #category:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2           #theKey:Ljava/lang/String;
    .end local v3           #theVolumePath:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 243
    .restart local v0       #category:Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;
    .restart local v2       #theKey:Ljava/lang/String;
    .restart local v3       #theVolumePath:Ljava/lang/String;
    :cond_2
    const-string v5, "hsmodel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "To remove : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->isNeededToCheckUSBRefresh:Z

    .line 245
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->setVolumePath(Ljava/lang/String;)V

    .line 246
    const-string v5, "already_defined"

    invoke-virtual {v0, v5}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 248
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/Memory$1;->this$0:Lcom/android/lgesettings/deviceinfo/Memory;

    invoke-virtual {v5}, Lcom/android/lgesettings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 251
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v2, :cond_0

    const-string v5, "already_defined"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/storage/USBstorage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 252
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/Memory$1;->this$0:Lcom/android/lgesettings/deviceinfo/Memory;

    invoke-virtual {v5, p1}, Lcom/android/lgesettings/deviceinfo/Memory;->isConnectedToUSBStorage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 253
    const-string v5, "hsmodel"

    const-string v6, "skip"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_5
    const-string v5, "hsmodel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "To add : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iput-boolean v8, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->isNeededToCheckUSBRefresh:Z

    .line 258
    invoke-virtual {v0, p1}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->setVolumePath(Ljava/lang/String;)V

    .line 259
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/Memory$1;->this$0:Lcom/android/lgesettings/deviceinfo/Memory;

    invoke-virtual {v5}, Lcom/android/lgesettings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 260
    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "already_defined"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 261
    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->onStorageStateChanged()V

    goto/16 :goto_0

    .line 263
    :cond_6
    if-nez v2, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 265
    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    goto/16 :goto_0

    .line 270
    .end local v2           #theKey:Ljava/lang/String;
    .end local v3           #theVolumePath:Ljava/lang/String;
    :cond_7
    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 271
    .local v4, volume:Landroid/os/storage/StorageVolume;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    iput-boolean v8, v0, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->isNeededToCheckUSBRefresh:Z

    .line 273
    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/StorageVolumePreferenceCategory;->onStorageStateChanged()V

    goto/16 :goto_0
.end method
