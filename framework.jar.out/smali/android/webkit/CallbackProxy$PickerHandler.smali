.class Landroid/webkit/CallbackProxy$PickerHandler;
.super Ljava/lang/Object;
.source "CallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PickerHandler"
.end annotation


# static fields
.field private static final YEAR_BASE:I = 0x76c


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field onColorSetListener:Landroid/webkit/LGColorPickerDialog$OnColorSetListener;

.field onDateSetListener:Landroid/webkit/LGDatePickerDialog$OnDateSetListener;

.field onDateTimeSetListener:Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;

.field onDateTimeSetListenerLocal:Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;

.field onMonthSetListener:Landroid/webkit/LGMonthPickerDialog$OnMonthSetListener;

.field onTimeSetListener:Landroid/webkit/LGTimePickerDialog$OnTimeSetListener;

.field onWeekSetListener:Landroid/webkit/LGWeekPickerDialog$OnWeekSetListener;

.field final synthetic this$0:Landroid/webkit/CallbackProxy;


# direct methods
.method public constructor <init>(Landroid/webkit/CallbackProxy;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 212
    iput-object p1, p0, Landroid/webkit/CallbackProxy$PickerHandler;->this$0:Landroid/webkit/CallbackProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Landroid/webkit/CallbackProxy$PickerHandler$1;

    invoke-direct {v0, p0}, Landroid/webkit/CallbackProxy$PickerHandler$1;-><init>(Landroid/webkit/CallbackProxy$PickerHandler;)V

    iput-object v0, p0, Landroid/webkit/CallbackProxy$PickerHandler;->onDateSetListener:Landroid/webkit/LGDatePickerDialog$OnDateSetListener;

    .line 326
    new-instance v0, Landroid/webkit/CallbackProxy$PickerHandler$2;

    invoke-direct {v0, p0}, Landroid/webkit/CallbackProxy$PickerHandler$2;-><init>(Landroid/webkit/CallbackProxy$PickerHandler;)V

    iput-object v0, p0, Landroid/webkit/CallbackProxy$PickerHandler;->onTimeSetListener:Landroid/webkit/LGTimePickerDialog$OnTimeSetListener;

    .line 340
    new-instance v0, Landroid/webkit/CallbackProxy$PickerHandler$3;

    invoke-direct {v0, p0}, Landroid/webkit/CallbackProxy$PickerHandler$3;-><init>(Landroid/webkit/CallbackProxy$PickerHandler;)V

    iput-object v0, p0, Landroid/webkit/CallbackProxy$PickerHandler;->onDateTimeSetListener:Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;

    .line 356
    new-instance v0, Landroid/webkit/CallbackProxy$PickerHandler$4;

    invoke-direct {v0, p0}, Landroid/webkit/CallbackProxy$PickerHandler$4;-><init>(Landroid/webkit/CallbackProxy$PickerHandler;)V

    iput-object v0, p0, Landroid/webkit/CallbackProxy$PickerHandler;->onDateTimeSetListenerLocal:Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;

    .line 370
    new-instance v0, Landroid/webkit/CallbackProxy$PickerHandler$5;

    invoke-direct {v0, p0}, Landroid/webkit/CallbackProxy$PickerHandler$5;-><init>(Landroid/webkit/CallbackProxy$PickerHandler;)V

    iput-object v0, p0, Landroid/webkit/CallbackProxy$PickerHandler;->onMonthSetListener:Landroid/webkit/LGMonthPickerDialog$OnMonthSetListener;

    .line 384
    new-instance v0, Landroid/webkit/CallbackProxy$PickerHandler$6;

    invoke-direct {v0, p0}, Landroid/webkit/CallbackProxy$PickerHandler$6;-><init>(Landroid/webkit/CallbackProxy$PickerHandler;)V

    iput-object v0, p0, Landroid/webkit/CallbackProxy$PickerHandler;->onWeekSetListener:Landroid/webkit/LGWeekPickerDialog$OnWeekSetListener;

    .line 401
    new-instance v0, Landroid/webkit/CallbackProxy$PickerHandler$7;

    invoke-direct {v0, p0}, Landroid/webkit/CallbackProxy$PickerHandler$7;-><init>(Landroid/webkit/CallbackProxy$PickerHandler;)V

    iput-object v0, p0, Landroid/webkit/CallbackProxy$PickerHandler;->onColorSetListener:Landroid/webkit/LGColorPickerDialog$OnColorSetListener;

    .line 213
    iput-object p2, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mContext:Landroid/content/Context;

    .line 214
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    .line 215
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/CallbackProxy$PickerHandler;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method


# virtual methods
.method public chooseColor(Ljava/lang/String;)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 304
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 308
    .local v0, color:I
    :goto_0
    new-instance v1, Landroid/webkit/LGColorPickerDialog;

    iget-object v3, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/webkit/CallbackProxy$PickerHandler;->onColorSetListener:Landroid/webkit/LGColorPickerDialog$OnColorSetListener;

    invoke-direct {v1, v3, v4, v0}, Landroid/webkit/LGColorPickerDialog;-><init>(Landroid/content/Context;Landroid/webkit/LGColorPickerDialog$OnColorSetListener;I)V

    .line 309
    .local v1, colorPicker:Landroid/webkit/LGColorPickerDialog;
    invoke-virtual {v1}, Landroid/webkit/LGColorPickerDialog;->show()V

    .line 310
    return-void

    .line 305
    .end local v0           #color:I
    .end local v1           #colorPicker:Landroid/webkit/LGColorPickerDialog;
    :catch_0
    move-exception v2

    .line 306
    .local v2, ex:Ljava/lang/Exception;
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .restart local v0       #color:I
    goto :goto_0
.end method

.method public chooseDate(Ljava/lang/String;)V
    .locals 9
    .parameter "value"

    .prologue
    .line 226
    :try_start_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v8, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 227
    .local v8, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 231
    .end local v8           #sdf:Ljava/text/SimpleDateFormat;
    .local v6, date:Ljava/util/Date;
    :goto_0
    new-instance v0, Landroid/webkit/LGDatePickerDialog;

    iget-object v1, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/webkit/CallbackProxy$PickerHandler;->onDateSetListener:Landroid/webkit/LGDatePickerDialog$OnDateSetListener;

    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    invoke-virtual {v6}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v6}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/webkit/LGDatePickerDialog;-><init>(Landroid/content/Context;Landroid/webkit/LGDatePickerDialog$OnDateSetListener;III)V

    .line 232
    .local v0, datePicker:Landroid/webkit/LGDatePickerDialog;
    invoke-virtual {v0}, Landroid/webkit/LGDatePickerDialog;->show()V

    .line 233
    return-void

    .line 228
    .end local v0           #datePicker:Landroid/webkit/LGDatePickerDialog;
    .end local v6           #date:Ljava/util/Date;
    :catch_0
    move-exception v7

    .line 229
    .local v7, ex:Ljava/lang/Exception;
    new-instance v6, Ljava/util/Date;

    iget-object v1, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit16 v1, v1, -0x76c

    iget-object v2, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {v6, v1, v2, v3}, Ljava/util/Date;-><init>(III)V

    .restart local v6       #date:Ljava/util/Date;
    goto :goto_0
.end method

.method public chooseDateTime(Ljava/lang/String;)V
    .locals 12
    .parameter "value"

    .prologue
    const/4 v9, 0x1

    .line 251
    :try_start_0
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v11, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 252
    .local v11, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v11, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 256
    .end local v11           #sdf:Ljava/text/SimpleDateFormat;
    .local v0, date:Ljava/util/Date;
    :goto_0
    new-instance v1, Landroid/webkit/LGDateTimePickerDialog;

    iget-object v2, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/webkit/CallbackProxy$PickerHandler;->onDateTimeSetListener:Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v4

    add-int/lit16 v4, v4, 0x76c

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v5

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v6

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v7

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v8

    invoke-direct/range {v1 .. v9}, Landroid/webkit/LGDateTimePickerDialog;-><init>(Landroid/content/Context;Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;IIIIIZ)V

    .line 257
    .local v1, dateTimePicker:Landroid/webkit/LGDateTimePickerDialog;
    invoke-virtual {v1}, Landroid/webkit/LGDateTimePickerDialog;->show()V

    .line 258
    return-void

    .line 253
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #dateTimePicker:Landroid/webkit/LGDateTimePickerDialog;
    :catch_0
    move-exception v10

    .line 254
    .local v10, ex:Ljava/lang/Exception;
    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit16 v1, v2, -0x76c

    iget-object v2, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    .restart local v0       #date:Ljava/util/Date;
    goto :goto_0
.end method

.method public chooseDateTimeLocal(Ljava/lang/String;)V
    .locals 12
    .parameter "value"

    .prologue
    const/4 v9, 0x1

    .line 263
    :try_start_0
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v11, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 264
    .local v11, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v11, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 268
    .end local v11           #sdf:Ljava/text/SimpleDateFormat;
    .local v0, date:Ljava/util/Date;
    :goto_0
    new-instance v1, Landroid/webkit/LGDateTimePickerDialog;

    iget-object v2, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/webkit/CallbackProxy$PickerHandler;->onDateTimeSetListenerLocal:Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v4

    add-int/lit16 v4, v4, 0x76c

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v5

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v6

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v7

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v8

    invoke-direct/range {v1 .. v9}, Landroid/webkit/LGDateTimePickerDialog;-><init>(Landroid/content/Context;Landroid/webkit/LGDateTimePickerDialog$OnDateTimeSetListener;IIIIIZ)V

    .line 269
    .local v1, dateTimePicker:Landroid/webkit/LGDateTimePickerDialog;
    invoke-virtual {v1}, Landroid/webkit/LGDateTimePickerDialog;->show()V

    .line 270
    return-void

    .line 265
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #dateTimePicker:Landroid/webkit/LGDateTimePickerDialog;
    :catch_0
    move-exception v10

    .line 266
    .local v10, ex:Ljava/lang/Exception;
    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit16 v1, v2, -0x76c

    iget-object v2, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    .restart local v0       #date:Ljava/util/Date;
    goto :goto_0
.end method

.method public chooseMonth(Ljava/lang/String;)V
    .locals 8
    .parameter "value"

    .prologue
    .line 275
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 276
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 280
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    .local v0, date:Ljava/util/Date;
    :goto_0
    new-instance v2, Landroid/webkit/LGMonthPickerDialog;

    iget-object v4, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/webkit/CallbackProxy$PickerHandler;->onMonthSetListener:Landroid/webkit/LGMonthPickerDialog$OnMonthSetListener;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v6

    add-int/lit16 v6, v6, 0x76c

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v7

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/webkit/LGMonthPickerDialog;-><init>(Landroid/content/Context;Landroid/webkit/LGMonthPickerDialog$OnMonthSetListener;II)V

    .line 281
    .local v2, monthPicker:Landroid/webkit/LGMonthPickerDialog;
    invoke-virtual {v2}, Landroid/webkit/LGMonthPickerDialog;->show()V

    .line 282
    return-void

    .line 277
    .end local v0           #date:Ljava/util/Date;
    .end local v2           #monthPicker:Landroid/webkit/LGMonthPickerDialog;
    :catch_0
    move-exception v1

    .line 278
    .local v1, ex:Ljava/lang/Exception;
    new-instance v0, Ljava/util/Date;

    iget-object v4, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit16 v4, v4, -0x76c

    iget-object v5, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Ljava/util/Date;-><init>(III)V

    .restart local v0       #date:Ljava/util/Date;
    goto :goto_0
.end method

.method public chooseTime(Ljava/lang/String;)V
    .locals 10
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    .line 238
    :try_start_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-direct {v8, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 239
    .local v8, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 243
    .end local v8           #sdf:Ljava/text/SimpleDateFormat;
    .local v0, date:Ljava/util/Date;
    :goto_0
    new-instance v1, Landroid/webkit/LGTimePickerDialog;

    iget-object v2, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/webkit/CallbackProxy$PickerHandler;->onTimeSetListener:Landroid/webkit/LGTimePickerDialog$OnTimeSetListener;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v4

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-direct/range {v1 .. v6}, Landroid/webkit/LGTimePickerDialog;-><init>(Landroid/content/Context;Landroid/webkit/LGTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 244
    .local v1, timePicker:Landroid/webkit/LGTimePickerDialog;
    invoke-virtual {v1}, Landroid/webkit/LGTimePickerDialog;->show()V

    .line 245
    return-void

    .line 240
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #timePicker:Landroid/webkit/LGTimePickerDialog;
    :catch_0
    move-exception v7

    .line 241
    .local v7, ex:Ljava/lang/Exception;
    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit16 v1, v2, -0x76c

    iget-object v2, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xc

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    .restart local v0       #date:Ljava/util/Date;
    goto :goto_0
.end method

.method public chooseWeek(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    .line 290
    :try_start_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 291
    .local v1, nf:Ljava/text/NumberFormat;
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 292
    .local v4, year:I
    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 297
    .end local v1           #nf:Ljava/text/NumberFormat;
    .local v2, week:I
    :goto_0
    new-instance v3, Landroid/webkit/LGWeekPickerDialog;

    iget-object v5, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/webkit/CallbackProxy$PickerHandler;->onWeekSetListener:Landroid/webkit/LGWeekPickerDialog$OnWeekSetListener;

    invoke-direct {v3, v5, v6, v4, v2}, Landroid/webkit/LGWeekPickerDialog;-><init>(Landroid/content/Context;Landroid/webkit/LGWeekPickerDialog$OnWeekSetListener;II)V

    .line 298
    .local v3, weekPicker:Landroid/webkit/LGWeekPickerDialog;
    invoke-virtual {v3}, Landroid/webkit/LGWeekPickerDialog;->show()V

    .line 299
    return-void

    .line 293
    .end local v2           #week:I
    .end local v3           #weekPicker:Landroid/webkit/LGWeekPickerDialog;
    .end local v4           #year:I
    :catch_0
    move-exception v0

    .line 294
    .local v0, ex:Ljava/lang/Exception;
    iget-object v5, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 295
    .restart local v4       #year:I
    iget-object v5, p0, Landroid/webkit/CallbackProxy$PickerHandler;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .restart local v2       #week:I
    goto :goto_0
.end method

.method public valueSelected(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 219
    return-void
.end method
