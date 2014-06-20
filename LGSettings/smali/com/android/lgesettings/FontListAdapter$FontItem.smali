.class Lcom/android/lgesettings/FontListAdapter$FontItem;
.super Ljava/lang/Object;
.source "FontListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/FontListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FontItem"
.end annotation


# instance fields
.field public rbFontChoice:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/android/lgesettings/FontListAdapter;

.field public tvFontName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/FontListAdapter;Landroid/view/View;I)V
    .locals 11
    .parameter
    .parameter "v"
    .parameter "position"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 161
    iput-object p1, p0, Lcom/android/lgesettings/FontListAdapter$FontItem;->this$0:Lcom/android/lgesettings/FontListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const v7, 0x7f0a0114

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/lgesettings/FontListAdapter$FontItem;->tvFontName:Landroid/widget/TextView;

    .line 170
    iget-object v7, p0, Lcom/android/lgesettings/FontListAdapter$FontItem;->tvFontName:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    .line 171
    .local v4, textSize:F
    #getter for: Lcom/android/lgesettings/FontListAdapter;->mFontScales:[F
    invoke-static {p1}, Lcom/android/lgesettings/FontListAdapter;->access$000(Lcom/android/lgesettings/FontListAdapter;)[F

    move-result-object v7

    #getter for: Lcom/android/lgesettings/FontListAdapter;->mFontScaleIndex:I
    invoke-static {p1}, Lcom/android/lgesettings/FontListAdapter;->access$100(Lcom/android/lgesettings/FontListAdapter;)I

    move-result v10

    aget v7, v7, v10

    mul-float/2addr v4, v7

    .line 172
    iget-object v7, p0, Lcom/android/lgesettings/FontListAdapter$FontItem;->tvFontName:Landroid/widget/TextView;

    invoke-virtual {v7, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 179
    invoke-virtual {p1}, Lcom/android/lgesettings/FontListAdapter;->isDCM()Z

    move-result v7

    if-ne v7, v8, :cond_2

    .line 180
    invoke-virtual {p1, p3}, Lcom/android/lgesettings/FontListAdapter;->isDefaultTypefaceAndJapanLocale(I)Z

    move-result v7

    if-ne v7, v8, :cond_1

    .line 181
    iget-object v7, p0, Lcom/android/lgesettings/FontListAdapter$FontItem;->tvFontName:Landroid/widget/TextView;

    const-string v10, "/system/fonts/MTLmr3m.ttf"

    invoke-static {v10}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v7, v10, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 182
    iget-object v10, p0, Lcom/android/lgesettings/FontListAdapter$FontItem;->tvFontName:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Lcom/android/lgesettings/FontListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :goto_0
    move v6, p3

    .line 222
    .local v6, which:I
    const v7, 0x7f0a0115

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, p0, Lcom/android/lgesettings/FontListAdapter$FontItem;->rbFontChoice:Landroid/widget/RadioButton;

    .line 223
    iget-object v7, p0, Lcom/android/lgesettings/FontListAdapter$FontItem;->rbFontChoice:Landroid/widget/RadioButton;

    invoke-virtual {v7, p3}, Landroid/widget/RadioButton;->setId(I)V

    .line 224
    iget-object v10, p0, Lcom/android/lgesettings/FontListAdapter$FontItem;->rbFontChoice:Landroid/widget/RadioButton;

    #getter for: Lcom/android/lgesettings/FontListAdapter;->mDefaultTypefaceIndex:I
    invoke-static {p1}, Lcom/android/lgesettings/FontListAdapter;->access$300(Lcom/android/lgesettings/FontListAdapter;)I

    move-result v7

    if-ne p3, v7, :cond_6

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 226
    iget-object v7, p0, Lcom/android/lgesettings/FontListAdapter$FontItem;->rbFontChoice:Landroid/widget/RadioButton;

    new-instance v8, Lcom/android/lgesettings/FontListAdapter$FontItem$1;

    invoke-direct {v8, p0, p1}, Lcom/android/lgesettings/FontListAdapter$FontItem$1;-><init>(Lcom/android/lgesettings/FontListAdapter$FontItem;Lcom/android/lgesettings/FontListAdapter;)V

    invoke-virtual {v7, v8}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    .end local v6           #which:I
    :cond_0
    return-void

    .line 184
    :cond_1
    #getter for: Lcom/android/lgesettings/FontListAdapter;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;
    invoke-static {p1}, Lcom/android/lgesettings/FontListAdapter;->access$200(Lcom/android/lgesettings/FontListAdapter;)Lcom/android/lgesettings/FontServerConnection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/lgesettings/FontServerConnection;->getAllFontWebFaceNames()[Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, allWebFacename:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<FONT face="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v10, v0, p3

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ">"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1, p3}, Lcom/android/lgesettings/FontListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "</FONT>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 190
    .local v2, fontItemName:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/lgesettings/FontListAdapter$FontItem;->tvFontName:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 194
    .end local v0           #allWebFacename:[Ljava/lang/String;
    .end local v2           #fontItemName:Ljava/lang/CharSequence;
    :cond_2
    #getter for: Lcom/android/lgesettings/FontListAdapter;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;
    invoke-static {p1}, Lcom/android/lgesettings/FontListAdapter;->access$200(Lcom/android/lgesettings/FontListAdapter;)Lcom/android/lgesettings/FontServerConnection;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 195
    #getter for: Lcom/android/lgesettings/FontListAdapter;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;
    invoke-static {p1}, Lcom/android/lgesettings/FontListAdapter;->access$200(Lcom/android/lgesettings/FontListAdapter;)Lcom/android/lgesettings/FontServerConnection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/lgesettings/FontServerConnection;->getAllFontWebFaceNames()[Ljava/lang/String;

    move-result-object v0

    .line 196
    .restart local v0       #allWebFacename:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 197
    #getter for: Lcom/android/lgesettings/FontListAdapter;->mDefaultTypefaceIndex:I
    invoke-static {p1}, Lcom/android/lgesettings/FontListAdapter;->access$300(Lcom/android/lgesettings/FontListAdapter;)I

    move-result v7

    aget-object v7, v0, v7

    invoke-static {v7, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 198
    .local v1, dtf:Landroid/graphics/Typeface;
    aget-object v7, v0, p3

    invoke-static {v7, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    .line 199
    .local v5, tf:Landroid/graphics/Typeface;
    #getter for: Lcom/android/lgesettings/FontListAdapter;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;
    invoke-static {p1}, Lcom/android/lgesettings/FontListAdapter;->access$200(Lcom/android/lgesettings/FontListAdapter;)Lcom/android/lgesettings/FontServerConnection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/lgesettings/FontServerConnection;->getNumEmbeddedFonts()I

    move-result v3

    .line 201
    .local v3, numEmbeddedFonts:I
    if-lt p3, v3, :cond_3

    #getter for: Lcom/android/lgesettings/FontListAdapter;->mDefaultTypefaceIndex:I
    invoke-static {p1}, Lcom/android/lgesettings/FontListAdapter;->access$300(Lcom/android/lgesettings/FontListAdapter;)I

    move-result v7

    if-eq p3, v7, :cond_3

    invoke-virtual {v1, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 202
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<FONT face="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v10, v0, p3

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ">"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1, p3}, Lcom/android/lgesettings/FontListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "</FONT>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 203
    .restart local v2       #fontItemName:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/lgesettings/FontListAdapter$FontItem;->tvFontName:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 205
    .end local v2           #fontItemName:Ljava/lang/CharSequence;
    :cond_4
    iget-object v7, p0, Lcom/android/lgesettings/FontListAdapter$FontItem;->tvFontName:Landroid/widget/TextView;

    #getter for: Lcom/android/lgesettings/FontListAdapter;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;
    invoke-static {p1}, Lcom/android/lgesettings/FontListAdapter;->access$200(Lcom/android/lgesettings/FontListAdapter;)Lcom/android/lgesettings/FontServerConnection;

    move-result-object v10

    invoke-virtual {v10, p3}, Lcom/android/lgesettings/FontServerConnection;->getFontFullPath(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v7, v10, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 207
    iget-object v10, p0, Lcom/android/lgesettings/FontListAdapter$FontItem;->tvFontName:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Lcom/android/lgesettings/FontListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 210
    .end local v0           #allWebFacename:[Ljava/lang/String;
    .end local v1           #dtf:Landroid/graphics/Typeface;
    .end local v3           #numEmbeddedFonts:I
    .end local v5           #tf:Landroid/graphics/Typeface;
    :cond_5
    iget-object v10, p0, Lcom/android/lgesettings/FontListAdapter$FontItem;->tvFontName:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Lcom/android/lgesettings/FontListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .restart local v6       #which:I
    :cond_6
    move v7, v9

    .line 224
    goto/16 :goto_1
.end method
