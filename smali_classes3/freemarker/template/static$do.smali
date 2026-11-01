.class Lfreemarker/template/static$do;
.super Ljava/io/FilterReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/static;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field public final synthetic case:Lfreemarker/template/static;

.field private final do:I

.field public for:I

.field private final if:Ljava/lang/StringBuilder;

.field public new:Z

.field private try:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lfreemarker/template/static;Ljava/io/Reader;Lfreemarker/core/ParserConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/template/static$do;->case:Lfreemarker/template/static;

    .line 2
    invoke-direct {p0, p2}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lfreemarker/template/static$do;->if:Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p3}, Lfreemarker/core/ParserConfiguration;->getTabSize()I

    move-result p1

    iput p1, p0, Lfreemarker/template/static$do;->do:I

    return-void
.end method

.method private do(I)V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0xd

    const/4 v2, 0x1

    const/16 v3, 0xa

    if-eq p1, v3, :cond_2

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    .line 1
    iget v1, p0, Lfreemarker/template/static$do;->do:I

    if-eq v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lfreemarker/template/static$do;->if:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget v3, p0, Lfreemarker/template/static$do;->do:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    :goto_0
    if-ge v0, v1, :cond_4

    .line 3
    iget-object v2, p0, Lfreemarker/template/static$do;->if:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lfreemarker/template/static$do;->if:Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5
    :cond_2
    :goto_1
    iget v4, p0, Lfreemarker/template/static$do;->for:I

    if-ne v4, v1, :cond_3

    if-ne p1, v3, :cond_3

    .line 6
    iget-object v0, p0, Lfreemarker/template/static$do;->case:Lfreemarker/template/static;

    invoke-static {v0}, Lfreemarker/template/static;->P0(Lfreemarker/template/static;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .line 7
    iget-object v1, p0, Lfreemarker/template/static$do;->case:Lfreemarker/template/static;

    invoke-static {v1}, Lfreemarker/template/static;->P0(Lfreemarker/template/static;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lfreemarker/template/static$do;->case:Lfreemarker/template/static;

    invoke-static {v2}, Lfreemarker/template/static;->P0(Lfreemarker/template/static;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 9
    :cond_3
    iget-object v1, p0, Lfreemarker/template/static$do;->if:Ljava/lang/StringBuilder;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lfreemarker/template/static$do;->case:Lfreemarker/template/static;

    invoke-static {v1}, Lfreemarker/template/static;->P0(Lfreemarker/template/static;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/template/static$do;->if:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lfreemarker/template/static$do;->if:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 12
    :cond_4
    :goto_2
    iput p1, p0, Lfreemarker/template/static$do;->for:I

    return-void
.end method

.method private for(Ljava/lang/Exception;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lfreemarker/template/static$do;->new:Z

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lfreemarker/template/static$do;->try:Ljava/lang/Exception;

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/io/IOException;

    return-object p1

    .line 5
    :cond_1
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/static$do;->if:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/template/static$do;->case:Lfreemarker/template/static;

    invoke-static {v0}, Lfreemarker/template/static;->P0(Lfreemarker/template/static;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/template/static$do;->if:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lfreemarker/template/static$do;->if:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4
    :cond_0
    invoke-super {p0}, Ljava/io/FilterReader;->close()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lfreemarker/template/static$do;->new:Z

    return-void
.end method

.method public if()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/template/static$do;->try:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public new()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/static$do;->try:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 2
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 3
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    iget-object v1, p0, Lfreemarker/template/static$do;->try:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 6
    :cond_1
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_2
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lfreemarker/template/static$do;->do(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-direct {p0, v0}, Lfreemarker/template/static$do;->for(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public read([CII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p3

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 5
    aget-char v1, p1, v0

    .line 6
    invoke-direct {p0, v1}, Lfreemarker/template/static$do;->do(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p3

    :catch_0
    move-exception p1

    .line 7
    invoke-direct {p0, p1}, Lfreemarker/template/static$do;->for(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
