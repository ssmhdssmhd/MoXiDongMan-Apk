.class final Lfreemarker/core/catch;
.super Lfreemarker/core/b4;
.source "SourceFile"


# instance fields
.field private class:Lfreemarker/core/b4;

.field private const:Lfreemarker/core/m3;


# direct methods
.method public constructor <init>(Lfreemarker/core/c4;Lfreemarker/core/m3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 2
    invoke-virtual {p1}, Lfreemarker/core/c4;->if()Lfreemarker/core/b4;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lfreemarker/core/catch;->class:Lfreemarker/core/b4;

    .line 4
    iput-object p2, p0, Lfreemarker/core/catch;->const:Lfreemarker/core/m3;

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, v0}, Lfreemarker/core/b4;->o(I)V

    .line 6
    invoke-virtual {p0, p1}, Lfreemarker/core/b4;->return(Lfreemarker/core/b4;)V

    .line 7
    invoke-virtual {p0, p2}, Lfreemarker/core/b4;->return(Lfreemarker/core/b4;)V

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "#attempt"

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->const:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/catch;->class:Lfreemarker/core/b4;

    iget-object v1, p0, Lfreemarker/core/catch;->const:Lfreemarker/core/m3;

    invoke-virtual {p1, p0, v0, v1}, Lfreemarker/core/d0;->E3(Lfreemarker/core/catch;Lfreemarker/core/b4;Lfreemarker/core/m3;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public switch(Z)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/catch;->case()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfreemarker/core/catch;->case()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lfreemarker/core/b4;->private()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfreemarker/core/catch;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/catch;->const:Lfreemarker/core/m3;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
