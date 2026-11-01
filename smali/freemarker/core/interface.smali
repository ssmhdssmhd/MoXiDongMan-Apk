.class abstract Lfreemarker/core/interface;
.super Lfreemarker/core/v3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/v3;-><init>()V

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lfreemarker/core/return;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(...)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()I
    .locals 2

    .line 1
    invoke-super {p0}, Lfreemarker/core/return;->else()I

    move-result v0

    invoke-virtual {p0}, Lfreemarker/core/interface;->w()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-super {p0}, Lfreemarker/core/return;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lfreemarker/core/interface;->v()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    if-eqz v3, :cond_0

    const-string v4, ", "

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/core/h0;

    .line 8
    invoke-virtual {v4}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ")"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 1

    .line 1
    invoke-super {p0}, Lfreemarker/core/return;->else()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lfreemarker/core/return;->goto(I)Lfreemarker/core/f3;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr p1, v0

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/interface;->w()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 4
    sget-object p1, Lfreemarker/core/f3;->abstract:Lfreemarker/core/f3;

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public abstract r(Ljava/util/List;Lfreemarker/core/m4;Lfreemarker/core/m4;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfreemarker/core/h0;",
            ">;",
            "Lfreemarker/core/m4;",
            "Lfreemarker/core/m4;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation
.end method

.method public final s(Lfreemarker/core/w1;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lfreemarker/core/w1;->d()Lfreemarker/core/w1$do;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/core/w1$do;->new()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 2
    new-instance v1, Lfreemarker/core/h3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(...) parameter lambda expression must declare exactly "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    if-le p2, v3, :cond_0

    const-string p2, "s"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", but it declared "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/core/h4;)V

    throw v1

    :cond_1
    return-void
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lfreemarker/core/return;->static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lfreemarker/core/interface;->t(Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)V

    return-object v0
.end method

.method public abstract t(Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)V
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Lfreemarker/core/return;->else()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lfreemarker/core/return;->this(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr p1, v0

    .line 3
    invoke-virtual {p0, p1}, Lfreemarker/core/interface;->u(I)Lfreemarker/core/h0;

    move-result-object p1

    return-object p1
.end method

.method public abstract u(I)Lfreemarker/core/h0;
.end method

.method public abstract v()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfreemarker/core/h0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract w()I
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final y(Ljava/lang/String;Lfreemarker/core/m4;Lfreemarker/core/m4;)Lfreemarker/core/h3;
    .locals 8

    .line 1
    new-instance v7, Lfreemarker/core/h3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(...) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " parameters"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v2

    iget v3, p2, Lfreemarker/core/m4;->beginLine:I

    iget v4, p2, Lfreemarker/core/m4;->beginColumn:I

    iget v5, p3, Lfreemarker/core/m4;->endLine:I

    iget v6, p3, Lfreemarker/core/m4;->endColumn:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;IIII)V

    return-object v7
.end method
