.class Lcom/android/internal/telephony/LGDataRecovery$DataLogFormatter;
.super Ljava/util/logging/Formatter;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataLogFormatter"
.end annotation


# instance fields
.field timestamp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1815
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 1813
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/LGDataRecovery$DataLogFormatter;->timestamp:Z

    .line 1816
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "time"

    .prologue
    .line 1818
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 1813
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/LGDataRecovery$DataLogFormatter;->timestamp:Z

    .line 1819
    iput-boolean p1, p0, Lcom/android/internal/telephony/LGDataRecovery$DataLogFormatter;->timestamp:Z

    .line 1820
    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 9
    .parameter "r"

    .prologue
    .line 1824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1825
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-boolean v5, p0, Lcom/android/internal/telephony/LGDataRecovery$DataLogFormatter;->timestamp:Z

    if-eqz v5, :cond_0

    .line 1826
    const-string v5, "yyyy-MM-dd kk:mm:ss"

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1828
    const-string v5, " [LGDataRecovery] "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGDataRecovery$DataLogFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1833
    const-string v5, "Throwable occurred: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v4

    .line 1835
    .local v4, t:Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 1837
    .local v0, pw:Ljava/io/PrintWriter;
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 1838
    .local v3, sw:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1839
    .end local v0           #pw:Ljava/io/PrintWriter;
    .local v1, pw:Ljava/io/PrintWriter;
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1840
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1842
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1845
    .end local v1           #pw:Ljava/io/PrintWriter;
    .end local v3           #sw:Ljava/io/StringWriter;
    .end local v4           #t:Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1842
    .restart local v0       #pw:Ljava/io/PrintWriter;
    .restart local v4       #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .end local v0           #pw:Ljava/io/PrintWriter;
    .restart local v1       #pw:Ljava/io/PrintWriter;
    .restart local v3       #sw:Ljava/io/StringWriter;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #pw:Ljava/io/PrintWriter;
    .restart local v0       #pw:Ljava/io/PrintWriter;
    goto :goto_0
.end method
