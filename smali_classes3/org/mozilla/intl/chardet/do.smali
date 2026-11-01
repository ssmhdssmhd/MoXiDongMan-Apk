.class public Lorg/mozilla/intl/chardet/do;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static do:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do([Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    array-length v0, p0

    if-eq v0, v1, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Usage: HtmlCharsetDetector <url> [<languageHint>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Where <url> is http://..."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "For optional <languageHint>. Use following..."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\t\t1 => Japanese"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\t\t2 => Chinese"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\t\t3 => Simplified Chinese"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\t\t4 => Traditional Chinese"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\t\t5 => Korean"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\t\t6 => Dont know (default)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    array-length v0, p0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Landroid/support/v4/dm2;

    invoke-direct {v1, v0}, Landroid/support/v4/dm2;-><init>(I)V

    new-instance v0, Lorg/mozilla/intl/chardet/do$do;

    invoke-direct {v0}, Lorg/mozilla/intl/chardet/do$do;-><init>()V

    invoke-virtual {v1, v0}, Landroid/support/v4/dm2;->Init(Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;)V

    new-instance v0, Ljava/net/URL;

    aget-object p0, p0, v3

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x400

    new-array v4, v0, [B

    const/4 v5, 0x1

    const/4 v6, 0x0

    :cond_2
    :goto_1
    invoke-virtual {p0, v4, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    if-eqz v5, :cond_3

    invoke-virtual {v1, v4, v7}, Landroid/support/v4/dm2;->this([BI)Z

    move-result v5

    :cond_3
    if-nez v5, :cond_2

    if-nez v6, :cond_2

    invoke-virtual {v1, v4, v7, v3}, Landroid/support/v4/dm2;->DoIt([BIZ)Z

    move-result v6

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/pm2;->do()V

    if-eqz v5, :cond_5

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "CHARSET = ASCII"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sput-boolean v2, Lorg/mozilla/intl/chardet/do;->do:Z

    :cond_5
    sget-boolean p0, Lorg/mozilla/intl/chardet/do;->do:Z

    if-nez p0, :cond_6

    invoke-virtual {v1}, Landroid/support/v4/pm2;->else()[Ljava/lang/String;

    move-result-object p0

    :goto_2
    array-length v0, p0

    if-ge v3, v0, :cond_6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Probable Charset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method
