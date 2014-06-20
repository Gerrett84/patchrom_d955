.class public Landroid/emoji/EmojiFactory$UnicodeRangeContainer;
.super Ljava/lang/Object;
.source "EmojiFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/emoji/EmojiFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnicodeRangeContainer"
.end annotation


# instance fields
.field private final mEightByteCodeMax:Ljava/lang/String;

.field private final mEightByteCodeMin:Ljava/lang/String;

.field private final mExtraRangeMax:Ljava/lang/String;

.field private final mExtraRangeMin:Ljava/lang/String;

.field private final mOneFRangeMax:Ljava/lang/String;

.field private final mOneFRangeMin:Ljava/lang/String;

.field private final mThousandRangeMax:Ljava/lang/String;

.field private final mThousandRangeMin:Ljava/lang/String;

.field final synthetic this$0:Landroid/emoji/EmojiFactory;


# direct methods
.method public constructor <init>(Landroid/emoji/EmojiFactory;)V
    .locals 1
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->this$0:Landroid/emoji/EmojiFactory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const-string v0, "-1"

    iput-object v0, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mOneFRangeMax:Ljava/lang/String;

    .line 172
    const-string v0, "-1"

    iput-object v0, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mOneFRangeMin:Ljava/lang/String;

    .line 173
    const-string v0, "-1"

    iput-object v0, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mThousandRangeMax:Ljava/lang/String;

    .line 174
    const-string v0, "-1"

    iput-object v0, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mThousandRangeMin:Ljava/lang/String;

    .line 175
    const-string v0, "-1"

    iput-object v0, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mExtraRangeMax:Ljava/lang/String;

    .line 176
    const-string v0, "-1"

    iput-object v0, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mExtraRangeMin:Ljava/lang/String;

    .line 177
    const-string v0, "-1"

    iput-object v0, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mEightByteCodeMax:Ljava/lang/String;

    .line 178
    const-string v0, "-1"

    iput-object v0, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mEightByteCodeMin:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/emoji/EmojiFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "onefMax"
    .parameter "onefMin"
    .parameter "thousandMax"
    .parameter "thousandMin"

    .prologue
    .line 181
    iput-object p1, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->this$0:Landroid/emoji/EmojiFactory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p2, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mOneFRangeMax:Ljava/lang/String;

    .line 183
    iput-object p3, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mOneFRangeMin:Ljava/lang/String;

    .line 184
    iput-object p4, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mThousandRangeMax:Ljava/lang/String;

    .line 185
    iput-object p5, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mThousandRangeMin:Ljava/lang/String;

    .line 186
    const-string v0, "-1"

    iput-object v0, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mExtraRangeMax:Ljava/lang/String;

    .line 187
    const-string v0, "-1"

    iput-object v0, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mExtraRangeMin:Ljava/lang/String;

    .line 188
    const-string v0, "-1"

    iput-object v0, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mEightByteCodeMax:Ljava/lang/String;

    .line 189
    const-string v0, "-1"

    iput-object v0, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mEightByteCodeMin:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/emoji/EmojiFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "onefMax"
    .parameter "onefMin"
    .parameter "thousandMax"
    .parameter "thousandMin"
    .parameter "extraMax"
    .parameter "extraMin"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->this$0:Landroid/emoji/EmojiFactory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p2, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mOneFRangeMax:Ljava/lang/String;

    .line 194
    iput-object p3, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mOneFRangeMin:Ljava/lang/String;

    .line 195
    iput-object p4, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mThousandRangeMax:Ljava/lang/String;

    .line 196
    iput-object p5, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mThousandRangeMin:Ljava/lang/String;

    .line 197
    iput-object p6, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mExtraRangeMax:Ljava/lang/String;

    .line 198
    iput-object p7, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mExtraRangeMin:Ljava/lang/String;

    .line 199
    const-string v0, "-1"

    iput-object v0, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mEightByteCodeMax:Ljava/lang/String;

    .line 200
    const-string v0, "-1"

    iput-object v0, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mEightByteCodeMin:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/emoji/EmojiFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "onefMax"
    .parameter "onefMin"
    .parameter "thousandMax"
    .parameter "thousandMin"
    .parameter "extraMax"
    .parameter "extraMin"
    .parameter "eightMax"
    .parameter "eightMin"

    .prologue
    .line 206
    iput-object p1, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->this$0:Landroid/emoji/EmojiFactory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p2, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mOneFRangeMax:Ljava/lang/String;

    .line 208
    iput-object p3, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mOneFRangeMin:Ljava/lang/String;

    .line 209
    iput-object p4, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mThousandRangeMax:Ljava/lang/String;

    .line 210
    iput-object p5, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mThousandRangeMin:Ljava/lang/String;

    .line 211
    iput-object p6, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mExtraRangeMax:Ljava/lang/String;

    .line 212
    iput-object p7, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mExtraRangeMin:Ljava/lang/String;

    .line 213
    iput-object p8, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mEightByteCodeMax:Ljava/lang/String;

    .line 214
    iput-object p9, p0, Landroid/emoji/EmojiFactory$UnicodeRangeContainer;->mEightByteCodeMin:Ljava/lang/String;

    .line 215
    return-void
.end method
