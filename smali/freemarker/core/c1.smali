.class Lfreemarker/core/c1;
.super Lfreemarker/core/b4;
.source "SourceFile"


# instance fields
.field private final class:Ljava/lang/String;

.field private final const:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/c4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/c1;->class:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lfreemarker/core/c1;->const:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p3}, Lfreemarker/core/b4;->p(Lfreemarker/core/c4;)V

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "#items"

    return-object v0
.end method

.method public else()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/c1;->const:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lfreemarker/core/c1;->const:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lfreemarker/core/f3;->return:Lfreemarker/core/f3;

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 5
    :cond_2
    iget-object p1, p0, Lfreemarker/core/c1;->class:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 6
    sget-object p1, Lfreemarker/core/f3;->return:Lfreemarker/core/f3;

    return-object p1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lfreemarker/core/d0;->k1()Lfreemarker/core/d1$do;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/b4;->finally()[Lfreemarker/core/b4;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/c1;->class:Ljava/lang/String;

    iget-object v3, p0, Lfreemarker/core/c1;->const:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2, v3}, Lfreemarker/core/d1$do;->goto(Lfreemarker/core/d0;[Lfreemarker/core/b4;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/nl2;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0}, Lfreemarker/core/c1;->case()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, " without iteration in context"

    aput-object v3, v1, v2

    invoke-direct {v0, p1, v1}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v0
.end method

.method public switch(Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/c1;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lfreemarker/core/c1;->class:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/yk2;->case(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lfreemarker/core/c1;->const:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ", "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lfreemarker/core/c1;->const:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/yk2;->case(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p1, :cond_2

    const/16 p1, 0x3e

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lfreemarker/core/b4;->private()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lfreemarker/core/c1;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lfreemarker/core/c1;->const:Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_2
    iget-object p1, p0, Lfreemarker/core/c1;->class:Ljava/lang/String;

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
