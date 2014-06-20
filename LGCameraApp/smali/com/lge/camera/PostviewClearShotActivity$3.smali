.class Lcom/lge/camera/PostviewClearShotActivity$3;
.super Ljava/lang/Object;
.source "PostviewClearShotActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewClearShotActivity;->saveClearShotImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewClearShotActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewClearShotActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 33

    .prologue
    .line 724
    :try_start_0
    const-string v19, ".jpg"

    .line 725
    .local v19, fileExt:Ljava/lang/String;
    const/16 v26, 0x0

    .line 726
    .local v26, newFilePath:Ljava/lang/String;
    const/4 v11, 0x0

    .line 727
    .local v11, newFileDir:Ljava/lang/String;
    const/4 v4, 0x0

    .line 728
    .local v4, newFileName:Ljava/lang/String;
    const/16 v25, 0x0

    .line 729
    .local v25, newFile:Ljava/io/File;
    const/16 v30, 0x0

    .line 731
    .local v30, resultUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    #getter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjectInfoList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/PostviewClearShotActivity;->access$800(Lcom/lge/camera/PostviewClearShotActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    #getter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjectInfoList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/PostviewClearShotActivity;->access$800(Lcom/lge/camera/PostviewClearShotActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Z

    move-object/from16 v32, v0

    .line 733
    .local v32, tempArr:[Z
    const/16 v24, 0x0

    .line 734
    .local v24, j:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    #getter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjectInfoList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lge/camera/PostviewClearShotActivity;->access$800(Lcom/lge/camera/PostviewClearShotActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;

    .line 735
    .local v27, objectInfo:Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;
    const-string v3, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveClearShotImages: index() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->getObjectTagIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", selected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->getSelected()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {v27 .. v27}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->getSelected()Z

    move-result v3

    aput-boolean v3, v32, v24

    .line 737
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 739
    .end local v27           #objectInfo:Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;
    :cond_0
    invoke-static {}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getInstance()Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->setObjectList([Z)V

    .line 742
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v24           #j:I
    .end local v32           #tempArr:[Z
    :cond_1
    invoke-static {}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getInstance()Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->processingSaveData()[B

    move-result-object v31

    .line 744
    .local v31, saveBuffer:[B
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v5}, Lcom/lge/camera/PostviewClearShotActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .end local v4           #newFileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    iget-object v5, v5, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    iget-object v6, v6, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorage()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    iget-object v7, v7, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v7}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/lge/camera/util/FileNamer;->getFileName(Landroid/content/Context;IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 746
    .restart local v4       #newFileName:Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newFileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    iget-object v3, v3, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v11

    .line 748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 749
    new-instance v25, Ljava/io/File;

    .end local v25           #newFile:Ljava/io/File;
    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 751
    .restart local v25       #newFile:Ljava/io/File;
    const-string v3, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rename clear shot newFilePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 754
    .local v15, dir:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 755
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 757
    :cond_2
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 758
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 759
    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-static {v0, v11, v4, v1}, Lcom/lge/camera/util/ImageManager;->saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 761
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    iget-object v5, v5, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "ClearShotImage1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".jpg"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 763
    .local v29, originalFilePath:Ljava/lang/String;
    new-instance v28, Landroid/media/ExifInterface;

    invoke-direct/range {v28 .. v29}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 764
    .local v28, originalExif:Landroid/media/ExifInterface;
    new-instance v20, Landroid/media/ExifInterface;

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 765
    .local v20, finalExif:Landroid/media/ExifInterface;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v3, 0x0

    const-string v5, "ImageLength"

    aput-object v5, v17, v3

    const/4 v3, 0x1

    const-string v5, "ImageWidth"

    aput-object v5, v17, v3

    .line 766
    .local v17, exceptionTags:[Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/ExifUtil;->copyExif(Landroid/media/ExifInterface;Landroid/media/ExifInterface;[Ljava/lang/String;)V

    .line 767
    invoke-virtual/range {v20 .. v20}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v3}, Lcom/lge/camera/PostviewClearShotActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    iget-object v7, v7, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v7}, Lcom/lge/camera/postview/PostViewParameters;->getLocationLatitude()D

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    iget-object v9, v9, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v9}, Lcom/lge/camera/postview/PostViewParameters;->getLocationLongitude()D

    move-result-wide v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    #getter for: Lcom/lge/camera/PostviewClearShotActivity;->mImageDegree:I
    invoke-static {v13}, Lcom/lge/camera/PostviewClearShotActivity;->access$900(Lcom/lge/camera/PostviewClearShotActivity;)I

    move-result v13

    invoke-static/range {v3 .. v13}, Lcom/lge/camera/util/ImageManager;->insertToContentResolver(Landroid/content/ContentResolver;Ljava/lang/String;JDDLjava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v30

    .line 775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v3}, Lcom/lge/camera/PostviewClearShotActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-static {v3, v0}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v3}, Lcom/lge/camera/PostviewClearShotActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-static {v3, v0}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v3}, Lcom/lge/camera/PostviewClearShotActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    const-string v6, "key_uplus_box"

    invoke-virtual {v5, v6}, Lcom/lge/camera/PostviewClearShotActivity;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/lge/camera/util/Util;->requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    move-object/from16 v0, v30

    #calls: Lcom/lge/camera/PostviewClearShotActivity;->addSecureImageList(Landroid/net/Uri;)V
    invoke-static {v3, v0}, Lcom/lge/camera/PostviewClearShotActivity;->access$1000(Lcom/lge/camera/PostviewClearShotActivity;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 783
    .end local v17           #exceptionTags:[Ljava/lang/String;
    .end local v20           #finalExif:Landroid/media/ExifInterface;
    .end local v28           #originalExif:Landroid/media/ExifInterface;
    .end local v29           #originalFilePath:Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    .line 784
    .local v14, clearShotFilename:Ljava/lang/String;
    const/16 v21, 0x0

    .line 786
    .local v21, fullFilePath:Ljava/lang/String;
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    const/4 v3, 0x6

    move/from16 v0, v22

    if-ge v0, v3, :cond_6

    .line 787
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClearShotImage"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v22, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 788
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    iget-object v5, v5, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".jpg"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 791
    invoke-static/range {v21 .. v21}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 792
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 793
    .local v18, file:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_4

    .line 794
    const-string v3, "CameraApp"

    const-string v5, "clear shot temp file delete fail."

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    .end local v18           #file:Ljava/io/File;
    :cond_4
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 797
    :cond_5
    const-string v3, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file is not exist : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 800
    :catch_0
    move-exception v16

    .line 801
    .local v16, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CameraApp"

    const-string v5, "deleteClearShotImages fail!:"

    move-object/from16 v0, v16

    invoke-static {v3, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 804
    .end local v16           #e:Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    new-instance v5, Lcom/lge/camera/PostviewClearShotActivity$3$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/lge/camera/PostviewClearShotActivity$3$1;-><init>(Lcom/lge/camera/PostviewClearShotActivity$3;)V

    invoke-virtual {v3, v5}, Lcom/lge/camera/PostviewClearShotActivity;->postOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 815
    .end local v4           #newFileName:Ljava/lang/String;
    .end local v11           #newFileDir:Ljava/lang/String;
    .end local v14           #clearShotFilename:Ljava/lang/String;
    .end local v15           #dir:Ljava/io/File;
    .end local v19           #fileExt:Ljava/lang/String;
    .end local v21           #fullFilePath:Ljava/lang/String;
    .end local v22           #i:I
    .end local v25           #newFile:Ljava/io/File;
    .end local v26           #newFilePath:Ljava/lang/String;
    .end local v30           #resultUri:Landroid/net/Uri;
    .end local v31           #saveBuffer:[B
    :goto_3
    return-void

    .line 811
    :catch_1
    move-exception v16

    .line 812
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v5, "Exception!"

    move-object/from16 v0, v16

    invoke-static {v3, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v3}, Lcom/lge/camera/PostviewClearShotActivity;->finish()V

    goto :goto_3
.end method
