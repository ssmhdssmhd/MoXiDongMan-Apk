.class Lfreemarker/core/s1;
.super Lfreemarker/core/b4;
.source "SourceFile"


# instance fields
.field private final class:Lfreemarker/core/d1;

.field private final const:Lfreemarker/core/c0;


# direct methods
.method public constructor <init>(Lfreemarker/core/d1;Lfreemarker/core/c0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lfreemarker/core/b4;->o(I)V

    .line 3
    invoke-virtual {p0, p1}, Lfreemarker/core/b4;->return(Lfreemarker/core/b4;)V

    .line 4
    invoke-virtual {p0, p2}, Lfreemarker/core/b4;->return(Lfreemarker/core/b4;)V

    .line 5
    iput-object p1, p0, Lfreemarker/core/s1;->class:Lfreemarker/core/d1;

    .line 6
    iput-object p2, p0, Lfreemarker/core/s1;->const:Lfreemarker/core/c0;

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "#list-#else-container"

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/s1;->class:Lfreemarker/core/d1;

    invoke-virtual {v0, p1}, Lfreemarker/core/d1;->r(Lfreemarker/core/d0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/s1;->const:Lfreemarker/core/c0;

    invoke-virtual {v0, p1}, Lfreemarker/core/c0;->native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public switch(Z)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/b4;->package()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lfreemarker/core/b4;->default(I)Lfreemarker/core/b4;

    move-result-object v3

    .line 4
    invoke-virtual {v3, p1}, Lfreemarker/core/b4;->switch(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "</#list>"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/s1;->case()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
