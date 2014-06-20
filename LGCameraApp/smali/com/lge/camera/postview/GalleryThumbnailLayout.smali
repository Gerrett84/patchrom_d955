.class public Lcom/lge/camera/postview/GalleryThumbnailLayout;
.super Landroid/widget/RelativeLayout;
.source "GalleryThumbnailLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private mCheckbox:Landroid/widget/ImageView;

.field private mChecked:Z

.field private mIndex:I

.field private mThumbnail:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/graphics/drawable/BitmapDrawable;IIZ)V
    .locals 4
    .parameter "contex"
    .parameter "tagIndex"
    .parameter "thumb"
    .parameter "width"
    .parameter "height"
    .parameter "hasCheckbox"

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-boolean v3, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mChecked:Z

    .line 36
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    .line 37
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 38
    const-string v1, "CameraApp"

    const-string v2, " mThumbnail is null."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setTag(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0, p3, p4, p5}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setThumbBitmap(Landroid/graphics/drawable/BitmapDrawable;II)V

    .line 45
    const v1, 0x7f0a0002

    invoke-static {p1, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 46
    .local v0, thumb_padding:I
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    const v2, 0x7f020322

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 48
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 50
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 51
    iput p2, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mIndex:I

    .line 53
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->addView(Landroid/view/View;)V

    .line 55
    if-eqz p6, :cond_0

    .line 56
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    .line 57
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    .line 58
    const-string v1, "CameraApp"

    const-string v2, " mCheckbox is null."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 62
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    const v2, 0x7f0200e8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 64
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 67
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 70
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mChecked:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mChecked:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getCheckboxVisibility()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 146
    :cond_0
    return v0
.end method

.method public getChecked()Z
    .locals 3

    .prologue
    .line 116
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thumbnail item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", checked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-boolean v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mChecked:Z

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mIndex:I

    return v0
.end method

.method public getThumbnailView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-boolean v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mChecked:Z

    if-eqz v0, :cond_1

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setChecked(Z)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setChecked(Z)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "pressed"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    if-eqz p1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    const v1, 0x7f02032d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 138
    iput-boolean p1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mChecked:Z

    .line 140
    :cond_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    const v1, 0x7f02032c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "onClickListener"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .parameter "selected"

    .prologue
    const v1, 0x7f020322

    .line 105
    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 107
    if-eqz p1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setThumbBitmap(Landroid/graphics/drawable/BitmapDrawable;II)V
    .locals 7
    .parameter "thumb"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 79
    .local v5, thumbWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 80
    .local v4, thumbHeight:I
    move v3, p2

    .local v3, targetWidth:I
    move v2, p3

    .line 81
    .local v2, targetHeight:I
    if-lt v5, v4, :cond_1

    .line 82
    move v3, p2

    .line 83
    mul-int v6, p2, v4

    div-int v2, v6, v5

    .line 88
    :goto_0
    const/4 v6, 0x1

    invoke-static {v0, v3, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 89
    .local v1, resizeBmp:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #resizeBmp:Landroid/graphics/Bitmap;
    .end local v2           #targetHeight:I
    .end local v3           #targetWidth:I
    .end local v4           #thumbHeight:I
    .end local v5           #thumbWidth:I
    :cond_0
    return-void

    .line 85
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #targetHeight:I
    .restart local v3       #targetWidth:I
    .restart local v4       #thumbHeight:I
    .restart local v5       #thumbWidth:I
    :cond_1
    move v2, p3

    .line 86
    mul-int v6, p3, v5

    div-int v3, v6, v4

    goto :goto_0
.end method

.method public setThumbSize(III)V
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "leftMargin"

    .prologue
    .line 168
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GalleryThumbnailLayout : width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 170
    .local v1, thislp:Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 171
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 172
    iput p3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 173
    invoke-virtual {p0, v1}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v3, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 177
    .local v2, thumblp:Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 178
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    iget-object v3, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .end local v2           #thumblp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 183
    .local v0, checkBoxlp:Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 184
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    iget-object v3, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .end local v0           #checkBoxlp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->postInvalidate()V

    .line 188
    return-void
.end method

.method public showCheckbox(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    if-eqz p1, :cond_2

    .line 154
    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p0, v1}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    const-string v1, "CameraApp"

    const-string v2, "GalleryThumbnailLayout unbind()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 197
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_1

    .line 201
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 202
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_2

    .line 208
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 209
    iget-object v1, p0, Lcom/lge/camera/postview/GalleryThumbnailLayout;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :cond_2
    return-void
.end method
