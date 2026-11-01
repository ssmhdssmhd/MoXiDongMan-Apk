.class public Lfreemarker/ext/dom/final;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private case:Lfreemarker/template/do;

.field private do:Ljava/io/File;

.field private for:Ljava/io/File;

.field private if:Ljava/io/File;

.field private new:Ljava/lang/String;

.field private try:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p5, :cond_0

    const-string p5, "file.encoding"

    .line 2
    invoke-static {p5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_0
    if-nez p4, :cond_1

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    .line 4
    :cond_1
    iput-object p5, p0, Lfreemarker/ext/dom/final;->new:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lfreemarker/ext/dom/final;->try:Ljava/util/Locale;

    .line 6
    iput-object p1, p0, Lfreemarker/ext/dom/final;->do:Ljava/io/File;

    .line 7
    iput-object p2, p0, Lfreemarker/ext/dom/final;->if:Ljava/io/File;

    .line 8
    iput-object p3, p0, Lfreemarker/ext/dom/final;->for:Ljava/io/File;

    .line 9
    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 10
    new-instance p2, Lfreemarker/template/do;

    invoke-direct {p2}, Lfreemarker/template/do;-><init>()V

    iput-object p2, p0, Lfreemarker/ext/dom/final;->case:Lfreemarker/template/do;

    .line 11
    invoke-virtual {p2, p1}, Lfreemarker/template/do;->K2(Ljava/io/File;)V

    return-void
.end method

.method public static do(Ljava/lang/String;)Ljava/util/Locale;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    .line 1
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "_-,"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 8
    :goto_0
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 9
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static if([Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lfreemarker/ext/dom/final;->new([Ljava/lang/String;)Lfreemarker/ext/dom/final;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/dom/final;->for()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lfreemarker/ext/dom/final;->try()V

    :goto_0
    return-void
.end method

.method public static new([Ljava/lang/String;)Lfreemarker/ext/dom/final;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v11, v5

    .line 1
    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_b

    add-int/lit8 v6, v1, 0x1

    .line 2
    aget-object v1, p0, v1

    .line 3
    array-length v7, p0

    if-ge v6, v7, :cond_a

    add-int/lit8 v7, v6, 0x1

    .line 4
    aget-object v6, p0, v6

    const-string v8, "-in"

    .line 5
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v2, :cond_0

    move-object v2, v6

    goto :goto_1

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The input file should only be specified once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v8, "-ftl"

    .line 7
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-nez v3, :cond_2

    move-object v3, v6

    goto :goto_1

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The ftl file should only be specified once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string v8, "-out"

    .line 9
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v4, :cond_4

    move-object v4, v6

    goto :goto_1

    .line 10
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The output file should only be specified once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string v8, "-locale"

    .line 11
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-nez v5, :cond_6

    move-object v5, v6

    goto :goto_1

    .line 12
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The locale should only be specified once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const-string v8, "-encoding"

    .line 13
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    if-nez v11, :cond_8

    move-object v11, v6

    :goto_1
    move v1, v7

    goto :goto_0

    .line 14
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The encoding should only be specified once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown input argument: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    if-eqz v2, :cond_14

    if-eqz v3, :cond_13

    .line 17
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    .line 18
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    .line 19
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 20
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 21
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 22
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_f

    if-eqz v4, :cond_d

    .line 23
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_2

    .line 26
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The output directory must exist and be writable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_2
    move-object v9, v0

    .line 27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    if-eqz v5, :cond_e

    .line 28
    invoke-static {v5}, Lfreemarker/ext/dom/final;->do(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    :cond_e
    move-object v10, p0

    .line 29
    new-instance p0, Lfreemarker/ext/dom/final;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lfreemarker/ext/dom/final;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/Locale;Ljava/lang/String;)V

    return-object p0

    .line 30
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FTL file must be a readable file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input file must be a readable file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FTL file does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input file does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No ftl file specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No input file specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static try()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: java freemarker.ext.dom.Transform -in <xmlfile> -ftl <ftlfile> [-out <outfile>] [-locale <locale>] [-encoding <encoding>]"

    .line 2
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lfreemarker/core/d0;->w1()Lfreemarker/core/d0;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 4
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public for()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/dom/final;->if:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfreemarker/ext/dom/final;->case:Lfreemarker/template/do;

    iget-object v2, p0, Lfreemarker/ext/dom/final;->try:Ljava/util/Locale;

    invoke-virtual {v1, v0, v2}, Lfreemarker/template/do;->Q1(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/template/static;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lfreemarker/ext/dom/final;->do:Ljava/io/File;

    invoke-static {v1}, Lfreemarker/ext/dom/break;->class(Ljava/io/File;)Lfreemarker/ext/dom/break;

    move-result-object v1

    .line 4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 5
    iget-object v3, p0, Lfreemarker/ext/dom/final;->for:Ljava/io/File;

    if-eqz v3, :cond_0

    .line 6
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lfreemarker/ext/dom/final;->for:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 7
    :cond_0
    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lfreemarker/ext/dom/final;->new:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v0, v2, v3, v2, v1}, Lfreemarker/template/static;->v1(Ljava/lang/Object;Ljava/io/Writer;Lfreemarker/template/ObjectWrapper;Lfreemarker/template/TemplateNodeModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lfreemarker/ext/dom/final;->for:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lfreemarker/ext/dom/final;->for:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 13
    :cond_2
    throw v0
.end method
